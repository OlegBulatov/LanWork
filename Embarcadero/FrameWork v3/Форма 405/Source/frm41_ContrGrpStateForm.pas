unit frm41_ContrGrpStateForm;

interface

uses
  frm04_ListForm, frm42_ClassificationForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Graphics,
  frm00_ParentForm, System.Actions;
//  Windows, Messages, Dialogs,
//  DBCtrls, DBCGrids,
//  fm31_FilterFrame;

type
  Tfrm41_ContrGrpState = class(Tfrm04_List, TStepPage)
    Splitter1: TSplitter;
    actFic: TAction;
    actReal: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actRecalc: TAction;
    actZero: TAction;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT071_CALC_DESC: TStringField;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actShowOper: TAction;
    actOperState: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    odsListT012_ID: TFloatField;
    odsListT001_OP_COUNT_IN: TFloatField;
    odsListT001_OP_COUNT_OUT: TFloatField;
    odsListT001_OP_SUM_IN: TFloatField;
    odsListT001_OP_SUM_OUT: TFloatField;
    odsListT001_OP_SUM_SALDO: TFloatField;
    odsListOP_GRP_STATE: TFloatField;
    odsListTOTAL_STATE: TFloatField;
    odsListT002_ID: TIntegerField;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    oqSetFictState: TOracleQuery;
    oqGetT071_ID: TOracleQuery;
    procedure FormShow(Sender: TObject);
    procedure actRealExecute(Sender: TObject);
    procedure actFicExecute(Sender: TObject);
    procedure actZeroExecute(Sender: TObject);
    procedure actShowOperExecute(Sender: TObject);
    procedure actOperStateExecute(Sender: TObject);
    procedure actOperStateUpdate(Sender: TObject);
  private
    FT035_ID: Double;
    FT027_ID: Double;
    function GetT027_ID: Double;
  protected
    procedure SetSecTypeFictState;
    //
    function GetRowFontColor: TColor; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
    //
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure ClearId;
    //
    property T027_ID: Double read GetT027_ID;
  end;

var
  frm41_ContrGrpState: Tfrm41_ContrGrpState;

implementation

uses
  SysUtils, dm005_MainData, frm01_MainForm, frm67_ContrStateListForm,
  untMessages;
//uses frm04_EditForm

{$R *.DFM}

{ Tfrm41_ContrGrpState }

procedure Tfrm41_ContrGrpState.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm41_ContrGrpState.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm41_ContrGrpState;
end;

class function Tfrm41_ContrGrpState.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm41_ContrGrpState;
end;

class procedure Tfrm41_ContrGrpState.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm41_ContrGrpState) := AForm;
end;

procedure Tfrm41_ContrGrpState.FormShow(Sender: TObject);
begin
  // отменяем обновление
  // inherited;
end;

procedure Tfrm41_ContrGrpState.DoOnClosePage(const AMainForm: TForm);
begin
  FT027_ID := odsListT027_ID.AsFloat;
end;


procedure Tfrm41_ContrGrpState.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  DataSet.SetVariable('T012_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

function Tfrm41_ContrGrpState.GetRowFontColor: TColor;
const
  RED_TEXT = 'Требуется оценка';
var s: string;
begin
  s:= odsListT071_CALC_DESC.AsString;
  if  pos(RED_TEXT, s) > 0 then
  begin
    Result := clRed;
  end else
  begin
    Result := inherited GetRowFontColor;
  end;
end;

procedure Tfrm41_ContrGrpState.actRealExecute(Sender: TObject);
begin
  // признать операции реальными
  FT035_ID := 3;
  setSecTypeFictState;
end;

procedure Tfrm41_ContrGrpState.actFicExecute(Sender: TObject);
begin
  // признать операции фиктивными
  FT035_ID := 2;
  setSecTypeFictState;
end;

procedure Tfrm41_ContrGrpState.RefreshAfterListChange;
begin
  // смотрим данные
  RefreshData('T027_ID', FT027_ID);
end;

procedure Tfrm41_ContrGrpState.SetSecTypeFictState;
var
  VOldCursor: TCursor;
  I: Integer;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  odsList.DisableControls;
  // Проставляем для типа ценных бумаг признак не оценивать
  try
    // запускаем расчет
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;

    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      // меняем статус операций
      oqSetFictState.SetVariable('T002_ID', odsListT002_ID.AsFloat);
      oqSetFictState.SetVariable('T012_ID', odsListT012_ID.AsFloat);
      oqSetFictState.SetVariable('T027_ID', odsListT027_ID.AsFloat);
      oqSetFictState.SetVariable('T035_ID', FT035_ID);
      oqSetFictState.Execute;
      Application.ProcessMessages;
    end;

    RefreshAfterListChange;
    dmMain.Commit;
    xxxDBGrid.SelectedRows.Clear;
    odsList.EnableControls;
    Screen.Cursor:= VOldCursor;
  except on E:Exception do
    begin
      xxxDBGrid.SelectedRows.Clear;
      odsList.EnableControls;
      Screen.Cursor:= VOldCursor;
      dmMain.Rollback;
      raise;
    end;
  end;
end;

procedure Tfrm41_ContrGrpState.actZeroExecute(Sender: TObject);
begin
  // не обрабатывать операции
  FT035_ID := 4;
  setSecTypeFictState;
end;

function Tfrm41_ContrGrpState.GetT027_ID: Double;
begin
  Result := odsListT027_ID.AsFloat;
end;

procedure Tfrm41_ContrGrpState.actShowOperExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOperStep5(
    Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).Regn,
    Tfrm42_Classification(Tfrm42_Classification.Instance).T027_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID
    );
end;

procedure Tfrm41_ContrGrpState.actOperStateExecute(Sender: TObject);
var
  VT071_ID: Double;
  ContrStateList: Tfrm67_ContrStateList;
begin
  oqGetT071_ID.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  oqGetT071_ID.SetVariable('T012_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID);
  oqGetT071_ID.SetVariable('T027_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T027_ID);
  oqGetT071_ID.Execute;
  VT071_ID := oqGetT071_ID.GetVariable('T071_ID');

  if VT071_ID = 0 then
  begin
    TAppMessages.ShowError('Изменились данные. Требуется пересчитать КО.');
    Exit;
  end;

	// показываем оценку группы
  ContrStateList := Tfrm67_ContrStateList.Instance;
  ContrStateList.T071_ID := VT071_ID;
  if ContrStateList.ShowModal = MrOk then RefreshAfterListChange;
end;

procedure Tfrm41_ContrGrpState.actOperStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actOperState.Enabled := not DataSet.IsEmpty and EnableAction(actOperState)
  else
    actOperState.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm41_ContrGrpState.ClearId;
begin
	FT027_ID := 0;
end;

end.
