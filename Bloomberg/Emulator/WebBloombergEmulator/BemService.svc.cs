using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Bloomberglp.Blpapi;
using Newtonsoft.Json;

namespace WebBloombergEmulator
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "BemService" в коде, SVC-файле и файле конфигурации.
    // ПРИМЕЧАНИЕ. Чтобы запустить клиент проверки WCF для тестирования службы, выберите элементы BemService.svc или BemService.svc.cs в обозревателе решений и начните отладку.
    public class BemService : IBemService
    {
        private static void handleOtherEvent(Event eventObj)
        {

        }
        private string handleResponseEvent(Event eventObj)
        {
            StringBuilder sb = new StringBuilder();
            foreach (Message message in eventObj.GetMessages())
                sb.Append(message.ToString());
            return sb.ToString();
        }
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

            //return "ReferenceDataResponse = {\r\nsecurityData[] = {\r\n securityData = {\r\n  security = \"/ISIN/AT0000A0P1X7\"\r\n  sequenceNumber = 0\r\n  fieldData = {\r\n   ADR_SH_PER_ADR = 18.8101\r\n   ADR_UNDL_TICKER = \"/ISIN/AT0000A0P1X7\"\r\n   CNTRY_OF_INCORPORATION = 66.2435\r\n   COMPANY_TAX_IDENTIFIER = 89.2629\r\n   EXCH_CODE = 55.9225\r\n   ID_ISIN = 15.1235\r\n   ISSUER = 34.5327\r\n   ISSUER_INDUSTRY = 69.6066\r\n   MARKET_SECTOR_DES = 81.1392\r\n   MARKET_STATUS = 35.2041\r\n   SECURITY_TYP = 45.4122\r\n   TICKER = \"/ISIN/AT0000A0P1X7\"\r\n  }\r\n }\r\n}\r\n}\r\n";
            dynamic requestDataObject = JsonConvert.DeserializeObject(requestData);
            string securitiesData = requestDataObject.securities;
            string[] securitiesArray = securitiesData.Replace("\r", "").Trim().Split('\n');
            try
            {
                SessionOptions sessionOptions = new SessionOptions();
                sessionOptions.ServerHost = "localhost";
                sessionOptions.ServerPort = 8194;

                Session session = new Session(sessionOptions);
                if (session.Start() && session.OpenService("//blp/refdata"))
                {
                    Service refDataSvc = session.GetService("//blp/refdata");
                    if (refDataSvc == null)
                    {
                        Console.WriteLine("Cannot get service");
                    }
                    else
                    {
                        CorrelationID requestID = new CorrelationID(1);
                        Request request = refDataSvc.CreateRequest("ReferenceDataRequest");

                        { //append securities
                          //request information for the following securities
                            for(int i = 0; i < securitiesArray.Length; i++)
                                request.Append("securities", securitiesArray[i].Split('=')[1]);
                        }

                        { //append regular fields
                          //include the following simple fields in the result
                          //request.Append("fields", "ZPX_LAST"); //the code treats a field that starts with a "Z" as a bad field
                            request.Append("fields", "ID_ISIN");
                            request["fields"].AppendValue("ADR_SH_PER_ADR"); //This is another way to append a field
                            
                            //request.Append("fields", "BID");
                            //request.Append("fields", "ASK");

                            //request.Append("fields", "TICKER");
                            //request.Append("fields", "TRADEABLE_DT"); //hard-coded to be treated as a datetime to illustrated datetimes
                            //request.Append("fields", "OPT_EXPIRE_DT"); //only stock options have this field

                            //request["fields"].AppendValue("TICKER"); //This is another way to append a field
                        }


                        session.SendRequest(request, requestID);

                        bool continueToLoop = true;
                        while (continueToLoop)
                        {
                            Event eventObj = session.NextEvent();
                            switch (eventObj.Type)
                            {
                                case Event.EventType.RESPONSE: // final event
                                    continueToLoop = false;
                                    return handleResponseEvent(eventObj).Replace(" (choice)", "");
                                    break;
                                case Event.EventType.PARTIAL_RESPONSE:
                                    handleResponseEvent(eventObj);
                                    break;
                                default:
                                    handleOtherEvent(eventObj);
                                    break;
                            }
                        }
                    }
                    return "something unpredicted happened";
                }
                else
                    throw new Exception("Can not start the service");
            }
            catch(Exception exc)
            {
                return exc.Message;
            }
        }
    }
}
