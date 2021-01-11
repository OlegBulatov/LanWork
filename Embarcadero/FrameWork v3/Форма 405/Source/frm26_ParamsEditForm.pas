unit frm26_ParamsEditForm;

interface

uses
  frm03_DialogForm, Oracle, ComCtrls, StdCtrls, ExtCtrls, Classes,
  ActnList, Controls, Messages, Windows, System.Actions;

type
  Tfrm26_ParamsEdit = class(Tfrm03_Dialog)
    rg01: TRadioGroup;
    dt01: TDateTimePicker;
    dt02: TDateTimePicker;
    oqGet: TOracleQuery;
    oqSet: TOracleQuery;
    gb1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    edPort: TEdit;
    edHost: TEdit;
    edResource: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure SetIpText(AIpAddress: string);
    procedure ClearIpClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    UserDateType: boolean;
    UserCurrDate: TDateTime;

    FIPAddress: DWORD;
    HIpEdit: HWND;
    HIpFont: HFONT;

    PrevWndProc: TWndMethod;
    procedure NewWindowProc(var Message: TMessage);
  protected
    function SaveChange: Boolean; override;
  public
    { Public declarations }
    procedure LoadParams;
    procedure SaveParams;
  end;

var
  frm26_ParamsEdit: Tfrm26_ParamsEdit;

implementation

uses SysUtils, dm005_MainData, CommCtrl, Dialogs;

{$R *.DFM}

const
  IP_ADDRESS_ID: LongWord = $0100;

procedure Tfrm26_ParamsEdit.FormCreate(Sender: TObject);
var
  lpInitCtrls: TInitCommonControlsEx;
begin
  lpInitCtrls.dwSize := SizeOf(TInitCommonControlsEx);
  lpInitCtrls.dwICC := ICC_INTERNET_CLASSES;

  PrevWndProc := gb1.WindowProc;
  gb1.WindowProc := NewWindowProc;

  HipEdit := CreateWindowEx(WS_EX_LEFT, WC_IPADDRESS, nil,
    WS_CHILD + WS_VISIBLE + WS_BORDER + WS_TABSTOP,
    120, 12, 121, 21,        // Left, Top, Width, Height
    gb1.Handle, IP_ADDRESS_ID, HInstance, nil);

  HIpFont := CreateFont(-11, 0, 0, 0, FW_NORMAL, 0, 0, 0, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH or FF_DONTCARE, 'MS Sans Serif');
  SendMessage(HIpEdit, WM_SETFONT, HIpFont, Integer(True));
end;

procedure Tfrm26_ParamsEdit.FormDestroy(Sender: TObject);
begin
  DestroyWindow(HIpEdit);
  DeleteObject(HIpFont);
end;

procedure Tfrm26_ParamsEdit.NewWindowProc(var Message: TMessage);
var
  nField: LongInt;
begin
  case Message.Msg of
    WM_NOTIFY:
      begin
        if PNMHDR(Ptr(Message.lParam)).idFrom = IP_ADDRESS_ID then
          begin
            case PNMIPAddress(Ptr(Message.lParam)).hdr.code of
              IPN_FIELDCHANGED:
                begin
                  if SendMessage(HIpEdit, IPM_ISBLANK, 0, 0) = 0 then // IpEdit not blank
                    begin
                    SendMessage(HIpEdit, IPM_GETADDRESS, 0, lParam(LPDWORD(@FIPAddress)));
                    end;
                end;
            end;
          end;
      end;
    WM_COMMAND:
      begin
      if Message.WParamLo = IP_ADDRESS_ID then
        case Message.WParamHi of
          EN_SETFOCUS:
            begin
              nField := SendMessage(HIpEdit, IPM_GETADDRESS, 0, lParam(LPDWORD(@FIPAddress)));
                if nField = 4 then
                  nField := 0;
              SendMessage(HIpEdit, IPM_SETFOCUS, wParam(nField), 0);
            end;
          EN_KILLFOCUS:
            begin
              if SendMessage(HIpEdit, IPM_ISBLANK, 0, 0) = 0 then
                begin
                SendMessage(HIpEdit, IPM_GETADDRESS, 0, lParam(LPDWORD(@FIPAddress)));
                end;
            end;
          EN_CHANGE:
            begin
            end;
        end;
      end;
  end;

  if Assigned(PrevWndProc) then
    PrevWndProc(Message);
end;

procedure Tfrm26_ParamsEdit.SetIpText(AIpAddress: string);
var
  sBuf, sSeg: string;
  i: integer;
  iShift: integer;
begin
  FIpAddress := 0;
  iShift := 24;
  sBuf := trim(AIpAddress);
  while sBuf <> '' do
    begin
    i := Pos('.', sBuf);
    if i <> 0 then
      begin
      sSeg := Copy(sBuf, 1, i-1);
      sBuf := Copy(sBuf, i+1, Length(sBuf));
      end
    else
      begin
      sSeg := sBuf;
      sBuf := '';
      end;

    FIpAddress := FIPAddress + DWORD(StrToIntDef(sSeg, 0)) shl iShift;
    dec(iShift, 8);
  end;

//  FIPAddress := MAKEIPADDRESS(a1, a2, a3, a4);
  SendMessage(HIpEdit, IPM_SETADDRESS, 0, lParam(FIPAddress));
end;

procedure Tfrm26_ParamsEdit.ClearIpClick(Sender: TObject);
begin
  SendMessage(HIpEdit, IPM_CLEARADDRESS, 0, 0);
end;

procedure Tfrm26_ParamsEdit.LoadParams;
var
  sBuf: string;
begin
  sBuf := dmMain.ParamList.Values['Bloomberg IP'];
  if (sBuf = '') or (sBuf = '0.0.0.0') then
    dmMain.ParamList.Values['Bloomberg IP'] := '127.0.0.1';
  SetIpText(dmMain.ParamList.Values['Bloomberg IP']);

  sBuf := dmMain.ParamList.Values['Bloomberg Port'];
  if sBuf = '' then
    dmMain.ParamList.Values['Bloomberg Port'] := '5000';
  edPort.Text := dmMain.ParamList.Values['Bloomberg Port'];


  oqGet.SetVariable('H003_NAME', 'USER_DATE_TYPE');
  oqGet.Execute;
  UserDateType := oqGet.GetVariable('H003_VALUE') = '0'; // 1 - текущая дата; 0 - смотрим историю

  oqGet.SetVariable('H003_NAME', 'USER_CURR_DATE');
  oqGet.Execute;
  UserCurrDate := oqGet.GetVariable('H003_DT_VALUE');
end;

procedure Tfrm26_ParamsEdit.SaveParams;
var
  sIpAddress: string;
begin
  sIpAddress := IntToStr(FIRST_IPADDRESS(FIPAddress))+'.'+IntToStr(SECOND_IPADDRESS(FIPAddress))+'.'+IntToStr(THIRD_IPADDRESS(FIPAddress))+'.'+IntToStr(FOURTH_IPADDRESS(FIpAddress));
  dmMain.ParamList.Values['Bloomberg IP'] := sIpAddress;
  dmMain.ParamList.Values['Bloomberg Port'] := edPort.Text;
  dmMain.ParamList.Values['Bloomberg Host'] := edHost.Text;
  dmMain.ParamList.Values['Bloomberg Resource'] := edResource.Text;

  oqSet.SetVariable('H003_NAME', 'USER_DATE_TYPE');
  if UserDateType then
    oqSet.SetVariable('H003_VALUE', '0')
  else
    oqSet.SetVariable('H003_VALUE', '1');
  oqSet.Execute;

  oqSet.SetVariable('H003_NAME', 'USER_CURR_DATE');
  oqSet.SetVariable('H003_VALUE', FormatDateTime('DDMMYYYYHHNNSS', UserCurrDate));
  oqSet.Execute;
end;

procedure Tfrm26_ParamsEdit.FormShow(Sender: TObject);
begin
  LoadParams;
  if UserDateType then
    rg01.ItemIndex := 1
  else
    rg01.ItemIndex := 0;
  dt01.DateTime:= Trunc(UserCurrDate);
  dt02.DateTime:= UserCurrDate - Trunc(UserCurrDate);
end;

function Tfrm26_ParamsEdit.SaveChange;
begin
  UserDateType := rg01.ItemIndex = 1;
  UserCurrDate := Trunc(dt01.DateTime) + dt02.DateTime - Trunc(dt02.DateTime);
  dmMain.ViewHistory := UserDateType;
  SaveParams;
  Result := true;
end;

end.
