unit SetOptionsDlg;

interface

uses Classes, Forms, Controls, StdCtrls, Buttons, RXSpin;

type
  TOptionsDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    GroupBox1: TGroupBox;
    cbAlways: TCheckBox;
    cbListen: TCheckBox;
    cbConnect: TCheckBox;
    cbNetData: TCheckBox;
    cbRequest: TCheckBox;
    cbRequestData: TCheckBox;
    cbResponseData: TCheckBox;
    cbWaits: TCheckBox;
    cbParsed: TCheckBox;
    Label1: TLabel;
    RxSpinEdit1: TRxSpinEdit;
    Label2: TLabel;
    ed1: TEdit;
  private
    procedure SetLogMask(AMask: integer);
    function GetLogMask: integer;
    function GetDbCheckTime: integer;
    procedure SetDbCheckTime(const Value: integer);
  public
    property LogMask: integer read GetLogMask write SetLogMask;
    property DbCheckTime: integer read GetDbCheckTime write SetDbCheckTime;
  end;

var
  OptionsDlg: TOptionsDlg;

implementation

uses BlpConsts;

{$R *.DFM}

{ TOptionsDlg }

function TOptionsDlg.GetLogMask: integer;
begin
  Result := $0000;
  if cbAlways.Checked then
    Result := Result or LT_ALWAYS
  else
    Result := Result and not LT_ALWAYS;
  if cbListen.Checked then
    Result := Result or LT_LISTEN
  else
    Result := Result and not LT_LISTEN;
  if cbConnect.Checked then
    Result := Result or LT_CONNECT
  else
    Result := Result and not LT_CONNECT;
  if cbNetData.Checked then
    Result := Result or LT_NET_DATA
  else
    Result := Result and not LT_NET_DATA;
  if cbRequest.Checked then
    Result := Result or LT_REQUEST
  else
    Result := Result and not LT_REQUEST;
  if cbRequestData.Checked then
    Result := Result or LT_REQUEST_DATA
  else
    Result := Result and not LT_REQUEST_DATA;
  if cbResponseData.Checked then
    Result := Result or LT_RESPONSE_DATA
  else
    Result := Result and not LT_RESPONSE_DATA;
  if cbWaits.Checked then
    Result := Result or LT_WAIT_EVENT
  else
    Result := Result and not LT_WAIT_EVENT;
  if cbParsed.Checked then
    Result := Result or LT_PARSED_DATA
  else
    Result := Result and not LT_PARSED_DATA;
end;

procedure TOptionsDlg.SetLogMask(AMask: integer);
begin
  cbAlways.Checked := (AMask and LT_ALWAYS <> 0);
  cbListen.Checked := (AMask and LT_LISTEN <> 0);
  cbConnect.Checked := (AMask and LT_CONNECT <> 0);
  cbNetData.Checked := (AMask and LT_NET_DATA <> 0);
  cbRequest.Checked := (AMask and LT_REQUEST <> 0);
  cbRequestData.Checked := (AMask and LT_REQUEST_DATA <> 0);
  cbResponseData.Checked := (AMask and LT_RESPONSE_DATA <> 0);
  cbWaits.Checked := (AMask and LT_WAIT_EVENT <> 0);
  cbParsed.Checked := (AMask and LT_PARSED_DATA <> 0);
end;

function TOptionsDlg.GetDbCheckTime: integer;
begin
  Result := RxSpinEdit1.AsInteger;
end;

procedure TOptionsDlg.SetDbCheckTime(const Value: integer);
begin
  RxSpinEdit1.Value := Value;
end;

end.
