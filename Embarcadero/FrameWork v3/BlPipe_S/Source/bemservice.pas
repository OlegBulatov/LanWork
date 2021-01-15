// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Temp\bemservice.xml
//  >Import : D:\Temp\bemservice.xml>0
//  >Import : D:\Temp\bemservice.xml>1
// (15.01.2021 11:02:53 - - $Rev: 96726 $)
// ************************************************************************ //

unit bemservice;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IBemService/ProcessRequest
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : BasicHttpBinding_IBemService
  // service   : BemService
  // port      : BasicHttpBinding_IBemService
  // URL       : http://localhost:26574/BemService.svc
  // ************************************************************************ //
  IBemService = interface(IInvokable)
  ['{D1BD0F3B-12F6-681A-1561-D42DAC52DE54}']
    function  ProcessRequest(const requestData: string): string; stdcall;
  end;

function GetIBemService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IBemService;


implementation
  uses System.SysUtils;

function GetIBemService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IBemService;
const
  defWSDL = 'D:\Temp\bemservice.xml';
  defURL  = 'http://localhost:26574/BemService.svc';
  defSvc  = 'BemService';
  defPrt  = 'BasicHttpBinding_IBemService';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IBemService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IBemService }
  InvRegistry.RegisterInterface(TypeInfo(IBemService), 'http://tempuri.org/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IBemService), 'http://tempuri.org/IBemService/ProcessRequest');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IBemService), ioDocument);
  { IBemService.ProcessRequest }
  InvRegistry.RegisterMethodInfo(TypeInfo(IBemService), 'ProcessRequest', '',
                                 '[ReturnName="ProcessRequestResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IBemService), 'ProcessRequest', 'requestData', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IBemService), 'ProcessRequest', 'ProcessRequestResult', '',
                                '', IS_NLBL);

end.