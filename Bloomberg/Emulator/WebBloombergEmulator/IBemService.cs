﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebBloombergEmulator
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени интерфейса "IBemService" в коде и файле конфигурации.
    [ServiceContract]
    public interface IBemService
    {
        [OperationContract]
        string ProcessRequest(string requestData);
    }
}
