using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.ServiceModel;

namespace NetHttpServer
{
    public class NotificationService : INotificationService
    {
        private INotificationServiceCallback Subscriber
        {
            get { return OperationContext.Current.GetCallbackChannel<INotificationServiceCallback>(); }
        }

        public void SendNotification(Notification notification)
        {
            NotificationManager.Instance.SendNotification(notification, Subscriber);
        }

        public void SubscribeForNotification(List<NotificationType> notificationTypes)
        {
            NotificationManager.Instance.AddSubscriber(Subscriber, notificationTypes);
        }

        public void UnsubscribeForNotification(List<NotificationType> notificationTypes)
        {
            NotificationManager.Instance.RemoveSubscriber(Subscriber, notificationTypes);
        }

        //public INotificationServiceCallback Callback
        //{
        //    get
        //    {
        //        return OperationContext.Current.GetCallbackChannel<INotificationServiceCallback>();
        //    }
        //}
    }

    public class NotificationManager
    {
        private volatile static NotificationManager _notificationManager = null;
        private static readonly object SyncLock = new object();
        private NotificationManager()
        {
            Subscribers = new Dictionary<INotificationServiceCallback, List<NotificationType>>();
            Notifications = new List<Notification>();
        }

        public Dictionary<INotificationServiceCallback, List<NotificationType>> Subscribers { get; private set; }
        public List<Notification> Notifications { get; private set; }
        public static NotificationManager Instance
        {
            get
            {
                lock (SyncLock)
                {
                    if (_notificationManager == null)
                    {
                        lock (SyncLock)
                        {
                            _notificationManager = new NotificationManager();
                        }
                    }
                }
                return _notificationManager;
            }
        }

        public void AddSubscriber(INotificationServiceCallback subscriber, List<NotificationType> notificationType)
        {
            if (!Subscribers.ContainsKey(subscriber))
                Subscribers.Add(subscriber, notificationType);
            else
            {
                var newNotificationType = notificationType.Where(n => Subscribers[subscriber].Any(n1 => n1 != n));
                Subscribers[subscriber].AddRange(newNotificationType);
            }
        }

        public void RemoveSubscriber(INotificationServiceCallback subscriber, List<NotificationType> notificationTypes)
        {
            if (Subscribers.ContainsKey(subscriber))
            {
                notificationTypes.ForEach(notificationType => Subscribers[subscriber].Remove(notificationType));

                if (Subscribers[subscriber].Count < 1)
                    Subscribers.Remove(subscriber);
            }
        }

        public void AddNotification(Notification notification)
        {
            if (!Notifications.Contains(notification))
                Notifications.Add(notification);
        }

        public void RemoveNotification(Notification notification)
        {
            if (Notifications.Contains(notification))
                Notifications.Remove(notification);

        }

        public void SendNotification(Notification notification, INotificationServiceCallback sender)
        {
            foreach (var existingSubscriber in Subscribers)
            {
                if (existingSubscriber.Value.Any(n => n == notification.NotificationType) && existingSubscriber.Key != sender)
                {
                    if (((ICommunicationObject)existingSubscriber.Key).State == CommunicationState.Opened)
                    {
                        existingSubscriber.Key.OnNotificationSend(notification);
                    }
                }
            }
        }
    }

    [DataContract]
    public class Notification
    {
        [DataMember]
        public string NotificationMsg { get; set; }
        [DataMember]
        public DateTime PostingTime { get; set; }
        [DataMember]
        public NotificationType NotificationType { get; set; }
    }

    [DataContract]
    public enum NotificationType
    {
        [EnumMember]
        General,
        [EnumMember]
        Greetings
    }
}
