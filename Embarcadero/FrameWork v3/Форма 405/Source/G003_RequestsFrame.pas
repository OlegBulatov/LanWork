unit G003_RequestsFrame;

interface

uses
  fm005_GridFrame, ExtCtrls, Db, StdCtrls, RXSpin,
  xxxDbLookupCheckCombo, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, Grids, DBGrids, xxxDBGrid;
//  Windows, Messages, Graphics, Forms, Dialogs,
//  DBCtrls,

type
  TG003_Requests = class(TfmGrid)
    paBottom: TPanel;
    paTop: TPanel;
    TimerRefresh: TTimer;
    odsListR030_ID: TFloatField;
    odsListR040_ID: TFloatField;
    odsListR040_NAME: TStringField;
    odsListR030_SECURITY: TStringField;
    odsListR030_DATE_START: TDateTimeField;
    odsListR030_DATE_END: TDateTimeField;
    odsListR030_REQUEST_DATE: TDateTimeField;
    odsListR030_DONE: TStringField;
    odsListR030_DONE_DATE: TDateTimeField;
    odsListR030_STATUS: TStringField;
    odsListR030_ERROR_INFO: TStringField;
    odsListR030_AUTHOR: TStringField;
    cbRefresh: TCheckBox;
    cbDate: TCheckBox;
    odsDate1: TOracleDataSet;
    dsDate1: TDataSource;
    lcbDate1: TxxxDBLookupCheckCombo;
    Label1: TLabel;
    spnRefresh: TRxSpinEdit;
    cbStatus: TCheckBox;
    odsStatus: TOracleDataSet;
    dsStatus: TDataSource;
    lcbStatus: TxxxDBLookupCheckCombo;
    Label3: TLabel;
    lcbDate2: TxxxDBLookupCheckCombo;
    odsDate2: TOracleDataSet;
    dsDate2: TDataSource;
    odsDate1R030_REQUEST_DATE: TDateTimeField;
    odsListR030_ISIN: TStringField;
    procedure TimerRefreshTimer(Sender: TObject);
    procedure cbRefreshClick(Sender: TObject);
    procedure spnRefreshChange(Sender: TObject);
  private
    FAutoRefresh: boolean;
    procedure RefreshCounts;
  protected
    procedure VisibleChanging; override;
    //
    function  GetKeyFieldName: string; override;
    procedure RefreshAllRecords; override;
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  G003_Requests: TG003_Requests;

implementation

uses
  SysUtils, dm000_ObjectsFactory, unt001_Filter, untMessages;

{$R *.DFM}

{ TG003_Requests }

function TG003_Requests.GetKeyFieldName: string;
begin
  Result := 'R030_ID';
end;

procedure TG003_Requests.InitFrame(Sender: TObject);
begin
  FAutoRefresh := False;

  // даты
  odsDate1.Close;
  odsDate1.Open;
  odsDate1.First;
  lcbDate1.KeyValue := odsDate1.FieldByName('R030_REQUEST_DATE').Value;

  odsDate2.Close;
  odsDate2.Open;
  odsDate2.Last;
  lcbDate2.KeyValue := odsDate2.FieldByName('R030_REQUEST_DATE').Value;

  // статус
  odsStatus.Close;
  odsStatus.Open;
  lcbStatus.SetKeyValuesAll;

  inherited;
end;

procedure TG003_Requests.TimerRefreshTimer(Sender: TObject);
begin
  // данные
  RefreshData;
end;

procedure TG003_Requests.VisibleChanging;
begin
  if Visible then
    begin
    FAutoRefresh := cbRefresh.Checked;
    cbRefresh.Checked := False;
    end
  else
    begin
    cbRefresh.Checked := FAutoRefresh;
    end;
end;

procedure TG003_Requests.cbRefreshClick(Sender: TObject);
begin
  TimerRefresh.Enabled := cbRefresh.Checked;
end;

procedure TG003_Requests.spnRefreshChange(Sender: TObject);
begin
  TimerRefresh.Interval := spnRefresh.AsInteger * 1000;
end;

procedure TG003_Requests.RefreshAllRecords;
var
  vDate1: Variant;
  vDate2: Variant;
begin
  SavePosition;
  odsList.Close;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('R030_REQUEST_DATE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('R030_DONE');

  if cbDate.Checked then
    begin
    vDate1 := lcbDate1.KeyValue;
    vDate2 := lcbDate2.KeyValue;

    odsDate1.Close;
    odsDate1.Open;
    lcbDate1.KeyValue := vDate1;

    odsDate2.Close;
    odsDate2.Open;
    lcbDate2.KeyValue := vDate2;

    VDataSet.SetDateBetweenFilter('R030_REQUEST_DATE', StrToDate(vDate1), StrToDate(vDate2)+1);
    end;

  if cbStatus.Checked then
    begin
    VDataSet.SetStrInFilter('R030_DONE', lcbStatus.KeyValuesStr);
    end;

  odsList.Open;
  RestorePosition;

  RefreshCounts;
end;

procedure TG003_Requests.RefreshCounts;
var
  vCount: integer;
begin
  odsList.DisableControls;
  SavePosition;
  odsList.First;
  vCount := 0;
  while not odsList.Eof do
    begin
    vCount := vCount + 1;
    odsList.Next;
    end;

  RestorePosition;
  odsList.EnableControls;

  Label1.Caption := 'Всего запросов - ' + IntToStr(vCount);
end;

end.
