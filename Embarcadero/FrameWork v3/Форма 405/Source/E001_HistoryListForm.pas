unit E001_HistoryListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, Graphics, Dialogs,

type
  TE001_HistoryList = class(Tfrm04_List)
    odsListT171_ID: TFloatField;
    odsListT170_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT167_NAME: TStringField;
    odsListT167_EXCHANGE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT171_S_EMISS_SIZE: TFloatField;
    odsListT171_S_USD_RATE: TFloatField;
    odsListT171_S_711_CNT_REM: TFloatField;
    odsListT171_S_711_USD_REM: TFloatField;
    odsListT171_S_170_711_PRC: TFloatField;
    odsListT171_S_NB_CNT_REM: TFloatField;
    odsListT171_S_NB_USD_REM: TFloatField;
    odsListT171_S_CNT_REM: TFloatField;
    odsListT171_S_USD_REM: TFloatField;
    odsListT171_S_PRC: TFloatField;
    odsListT171_S_170_CNT_REM: TFloatField;
    odsListT171_S_170_USD_REM: TFloatField;
    odsListT171_S_170_EMISS_PRC: TFloatField;
    odsListT171_O_FLAG: TStringField;
    odsListT171_O_USD_RATE: TFloatField;
    odsListT171_O_711_CNT_SAL: TFloatField;
    odsListT171_O_711_USD_SAL: TFloatField;
    odsListT171_O_NB_CNT_SAL: TFloatField;
    odsListT171_O_NB_USD_SAL: TFloatField;
    odsListT171_O_CNT_SAL: TFloatField;
    odsListT171_O_USD_SAL: TFloatField;
    odsListT171_O_405_CNT_SAL: TFloatField;
    odsListT171_O_405_USD_SAL: TFloatField;
    odsListT171_O_405_CNT_SAL_C: TFloatField;
    odsListT171_O_405_CNT_SAL_C_PRC: TFloatField;
    odsListT171_O_170_CNT_SAL: TFloatField;
    odsListT171_O_170_USD_SAL: TFloatField;
    odsListT171_O_405_CNT_E: TFloatField;
    odsListT171_O_405_USD_E: TFloatField;
    odsListT171_O_OTH_CNT_E: TFloatField;
    odsListT171_O_OTH_USD_E: TFloatField;
    odsListT171_O_PER_USD: TFloatField;
    odsListT171_E_EMISS_SIZE: TFloatField;
    odsListT171_E_USD_RATE: TFloatField;
    odsListT171_E_711_CNT_REM: TFloatField;
    odsListT171_E_711_USD_REM: TFloatField;
    odsListT171_E_170_711_PRC: TFloatField;
    odsListT171_E_NB_CNT_REM: TFloatField;
    odsListT171_E_NB_USD_REM: TFloatField;
    odsListT171_E_CNT_REM: TFloatField;
    odsListT171_E_USD_REM: TFloatField;
    odsListT171_E_PRC: TFloatField;
    odsListT171_E_170_CNT_REM: TFloatField;
    odsListT171_E_170_USD_REM: TFloatField;
    odsListT171_E_170_EMISS_PRC: TFloatField;
    odsListT171_COMMENTS: TStringField;
    odsListT171_E_FIXED: TStringField;
    odsListMARKET_STATUS: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_TYPE: TStringField;
    odsListT171_LOG_DATE: TDateTimeField;
    odsListT171_LOG_TYPE: TStringField;
    odsListT171_LOG_USER: TStringField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actSettings: TAction;
    odsListT028_FI_SNS_DESC: TStringField;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure actSettingsExecute(Sender: TObject);
    procedure odsList_GetTextCNT(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_GetTextUSD(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_GetTextRATE(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_GetTextPRC(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    FT170_ID: Double;
    procedure SetT170_ID(const Value: Double);
    { Private declarations }
  public
    property T170_ID: Double read FT170_ID write SetT170_ID;
  end;

var
  E001_HistoryList: TE001_HistoryList;

implementation

uses SysUtils, E001_RemFieldsFrame;

{$R *.DFM}

{ TE001_HistoryList }

procedure TE001_HistoryList.SetT170_ID(const Value: Double);
begin
  FT170_ID := Value;
  odsList.Close;
  odsList.SetVariable('T170_ID', FT170_ID);
end;

procedure TE001_HistoryList.actSettingsExecute(Sender: TObject);
var
  FFrame: TE001_RemFields;
begin
  // отображаем поля
  FFrame := TE001_RemFields.Create(Self);
  FFrame.xxxGrid := xxxDBGrid;
  FFrame.FrameName := 'Выбор колонок';
  FFrame.ShowModal;
  FFrame.Free;
end;

procedure TE001_HistoryList.odsList_GetTextCNT(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value / 1000000);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value / 1000000);
    end;
end;

procedure TE001_HistoryList.odsList_GetTextUSD(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value / 1000000);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value / 1000000);
    end;
end;

procedure TE001_HistoryList.odsList_GetTextRATE(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.000', Sender.Value);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value);
    end;
end;

procedure TE001_HistoryList.odsList_GetTextPRC(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value);
    end;
end;

end.
