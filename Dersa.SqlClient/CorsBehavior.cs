using System;
using System.Collections.ObjectModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.ServiceModel.Dispatcher;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.ServiceModel;

namespace Dersa.SqlClient
{
    public class HostBehavior : IServiceBehavior
    {
        //
        // Сводка:
        //     Предоставляет возможности передачи настраиваемых данных в элементы привязки для
        //     предоставления поддержки реализации контракта.
        //
        // Параметры:
        //   serviceDescription:
        //     Описание службы.
        //
        //   serviceHostBase:
        //     Ведущее приложение службы.
        //
        //   endpoints:
        //     Конечные точки службы.
        //
        //   bindingParameters:
        //     Настраиваемые объекты, к которым имеют доступ элементы привязки.
        public void AddBindingParameters(ServiceDescription serviceDescription, ServiceHostBase serviceHostBase, Collection<ServiceEndpoint> endpoints, BindingParameterCollection bindingParameters)
        {
            string s = "";
        }
        //
        // Сводка:
        //     Предоставляет возможности для изменения значений свойства времени выполнения
        //     или для вставки объектов настраиваемых расширений, например, обработчиков ошибок,
        //     перехватчиков параметров или сообщений, а также других объектов настраиваемых
        //     расширений.
        //
        // Параметры:
        //   serviceDescription:
        //     Описание службы.
        //
        //   serviceHostBase:
        //     Ведущее приложение, построение которого выполняется в настоящее время.
        public void ApplyDispatchBehavior(ServiceDescription serviceDescription, ServiceHostBase serviceHostBase)
        {
            string s = "";
        }
        //
        // Сводка:
        //     Предоставляет возможности проверки ведущего приложения и описания службы, чтобы
        //     подтвердить готовность службы.
        //
        // Параметры:
        //   serviceDescription:
        //     Описание службы.
        //
        //   serviceHostBase:
        //     Ведущее приложение службы, которое создается в настоящий момент.
        public void Validate(ServiceDescription serviceDescription, ServiceHostBase serviceHostBase)
        {
            string s = "";
        }

    }

    public class EnableCorsBehavior : BehaviorExtensionElement, IEndpointBehavior
    {
        public void AddBindingParameters(ServiceEndpoint endpoint, BindingParameterCollection bindingParameters) { }
        public void ApplyClientBehavior(ServiceEndpoint endpoint, ClientRuntime clientRuntime) { }
        public void ApplyDispatchBehavior(ServiceEndpoint endpoint, EndpointDispatcher endpointDispatcher)
        {
            endpointDispatcher.DispatchRuntime.MessageInspectors.Add(new EnableCorsMessageInspector());
        }
        public void Validate(ServiceEndpoint endpoint) { }
        public override Type BehaviorType
        {
            get { return typeof(EnableCorsBehavior); }
        }
        protected override object CreateBehavior()
        {
            return new EnableCorsBehavior();
        }
    }

    public class EnableCorsMessageInspector : IDispatchMessageInspector
    {
        public object AfterReceiveRequest(ref Message request, IClientChannel channel, InstanceContext instanceContext)
        {
            var allowedOrigins = new[] { "http://foo.example", "http://bar.example" };
            var httpProp = (HttpRequestMessageProperty)request.Properties[HttpRequestMessageProperty.Name];
            if (httpProp != null)
            {
                string origin = httpProp.Headers["Origin"];
                if (origin != null && allowedOrigins.Any(x => x == origin))
                {
                    return origin;
                }
            }
            return null;
        }
        public void BeforeSendReply(ref Message reply, object correlationState)
        {
            string origin = correlationState as string;
            if (origin != null)
            {
                HttpResponseMessageProperty httpProp = null;
                if (reply.Properties.ContainsKey(HttpResponseMessageProperty.Name))
                {
                    httpProp = (HttpResponseMessageProperty)reply.Properties[HttpResponseMessageProperty.Name];
                }
                else
                {
                    httpProp = new HttpResponseMessageProperty();
                    reply.Properties.Add(HttpResponseMessageProperty.Name, httpProp);
                }
                httpProp.Headers.Add("Access-Control-Allow-Origin", origin);
                httpProp.Headers.Add("Access-Control-Allow-Credentials", "true");
                httpProp.Headers.Add("Access-Control-Request-Method", "POST,GET,OPTIONS");
                httpProp.Headers.Add("Access-Control-Allow-Headers", "X-Requested-With,Content-Type");
            }
        }
    }
}