using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebBloombergEmulator
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "BemService" в коде, SVC-файле и файле конфигурации.
    // ПРИМЕЧАНИЕ. Чтобы запустить клиент проверки WCF для тестирования службы, выберите элементы BemService.svc или BemService.svc.cs в обозревателе решений и начните отладку.
    public class BemService : IBemService
    {
        public string ProcessRequest(string requestData)
        {
            //            return "ReferenceDataResponse = {\r\nsecurityData[] = {\r\n securityData = {\r\n  security = \"/ISIN/AT0000A0P1X7\"\r\n  sequenceNumber = 0\r\n  fieldData = {\r\n   " +
            //"ID_ISIN = \"AT0000A0V4E3\"\r\n   " +
            //"TICKER = \"AT0000A0V4E3\"\r\n   " +
            //"EXCH_CODE = \"AT0000A0V4E3\"\r\n   " +
            //"MARKET_SECTOR_DES = \"AT0000A0V4E3\"\r\n   " +
            //"SECURITY_TYP = \"AT0000A0V4E3\"\r\n   " +
            //"ISSUER = \"AT0000A0V4E3\"\r\n   " +
            //"CNTRY_OF_INCORPORATION = \"AT0000A0V4E3\"\r\n   " +
            //"COMPANY_TAX_IDENTIFIER = \"AT0000A0V4E3\"\r\n   " +
            //"ISSUER_INDUSTRY = \"AT0000A0V4E3\"\r\n   " +
            //"ADR_SH_PER_ADR = 78.9846\r\n  " +
            //"ADR_UNDL_TICKER = \"AT0000A0V4E3\"\r\n   " +
            //"MARKET_STATUS = \"AT0000A0V4E3\"\r\n   " +
            //                "}\r\n }\r\n }\r\n}\r\n";
            return "ReferenceDataResponse = {\r\nsecurityData[] = {\r\n securityData = {\r\n  security = \"/ISIN/AT0000A0P1X7\"\r\n  sequenceNumber = 0\r\n  fieldData = {\r\n   ADR_SH_PER_ADR = 18.8101\r\n   ADR_UNDL_TICKER = \"/ISIN/AT0000A0P1X7\"\r\n   CNTRY_OF_INCORPORATION = 66.2435\r\n   COMPANY_TAX_IDENTIFIER = 89.2629\r\n   EXCH_CODE = 55.9225\r\n   ID_ISIN = 15.1235\r\n   ISSUER = 34.5327\r\n   ISSUER_INDUSTRY = 69.6066\r\n   MARKET_SECTOR_DES = 81.1392\r\n   MARKET_STATUS = 35.2041\r\n   SECURITY_TYP = 45.4122\r\n   TICKER = \"/ISIN/AT0000A0P1X7\"\r\n  }\r\n }\r\n}\r\n}\r\n";
        }
    }
}
