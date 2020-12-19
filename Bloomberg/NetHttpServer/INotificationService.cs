using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NetHttpServer
{
    public interface INotificationServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void OnNotificationSend(Notification notification);
    }

    [ServiceContract(SessionMode = SessionMode.Required, CallbackContract = typeof(INotificationServiceCallback))]
    public interface INotificationService
    {
        [OperationContract]
        void SendNotification(Notification notification);

        [OperationContract]
        void SubscribeForNotification(List<NotificationType> notificationTypes);

        [OperationContract]
        void UnsubscribeForNotification(List<NotificationType> notificationTypes);
    }

}
