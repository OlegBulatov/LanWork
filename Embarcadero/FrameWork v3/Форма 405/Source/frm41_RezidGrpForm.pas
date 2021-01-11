unit frm41_RezidGrpForm;

interface

uses
  frm04_ListForm, frm42_ClassificationForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm,
  Graphics, System.Actions;
//  Windows, Messages, Dialogs,
//  fm01_PeriodFrame, DBCtrls, DBCGrids,

type
  Tfrm41_RezidGrp = class(Tfrm04_List, TStepPage)
    Splitter1: TSplitter;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actZero: TAction;
    ToolButton6: TToolButton;
    pmGoTo: TPopupMenu;
    actRezidState: TAction;
    ToolButton10: TToolButton;
    odsListT012_ID: TFloatField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListREZID_STATE: TFloatField;
    odsListT001_OP_COUNT_IN: TFloatField;
    odsListT001_OP_COUNT_OUT: TFloatField;
    odsListT001_OP_SUM_IN: TFloatField;
    odsListT001_OP_SUM_OUT: TFloatField;
    odsListT001_OP_SUM_SALDO: TFloatField;
    odsListT071_CALC_DESC: TStringField;
    odsListT002_ID: TIntegerField;
    actFictState: TAction;
    actRealState: TAction;
    actZeroState: TAction;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    oqSetFictState: TOracleQuery;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    actShowRezident: TAction;
    actShowINN: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    oqGetT103_ID: TOracleQuery;
    odsListT055_ID: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure actRezidStateExecute(Sender: TObject);
    procedure actRezidStateUpdate(Sender: TObject);
    procedure actRealStateExecute(Sender: TObject);
    procedure actRealStateUpdate(Sender: TObject);
    procedure actFictStateExecute(Sender: TObject);
    procedure actFictStateUpdate(Sender: TObject);
    procedure actZeroStateExecute(Sender: TObject);
    procedure actZeroStateUpdate(Sender: TObject);
    procedure actShowRezidentExecute(Sender: TObject);
    procedure actShowRezidentUpdate(Sender: TObject);
    procedure actShowINNExecute(Sender: TObject);
    procedure actShowINNUpdate(Sender: TObject);
  private
    FT035_ID: Double;
    FT012_ID: Double;
    function GetResINN: String;
    function GetResName: String;
    function GetResID: Double;
    function GetRezidBalls: Double;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    function GetT012_ID: Double;
    function GetT012_NAME: String;
    function GetRowFontColor: TColor; override;
    //
    procedure SetResidFictState;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
    //
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    procedure ClearId;

    property T012_ID: Double read GetT012_ID;
    property T012_NAME: String read GetT012_NAME;
    //
    property ResID: Double read GetResID;
    property ResName: String read GetResName;
    property ResINN: String read GetResINN;
    property RezidBalls: Double read GetRezidBalls;
  end;

var
  frm41_RezidGrp: Tfrm41_RezidGrp;

implementation

uses SysUtils, dm005_MainData, frm01_MainForm, frm41_RezidStateForm, untMessages;
// frm04_EditForm,

{$R *.DFM}

{ Tfrm41_RezidGrp }

procedure Tfrm41_RezidGrp.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm41_RezidGrp.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm41_RezidGrp;
end;

class function Tfrm41_RezidGrp.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm41_RezidGrp;
end;

class procedure Tfrm41_RezidGrp.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm41_RezidGrp) := AForm;
end;

procedure Tfrm41_RezidGrp.FormShow(Sender: TObject);
begin
  // отменяем обновление
  // inherited;
end;

procedure Tfrm41_RezidGrp.DoOnClosePage(const AMainForm: TForm);
begin
  FT012_ID := odsListT012_ID.AsFloat;
end;

procedure Tfrm41_RezidGrp.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm41_RezidGrp.actRezidStateExecute(Sender: TObject);
var
  VT103_ID: Double;
  RezidState: Tfrm41_RezidState;
begin
  oqGetT103_ID.SetVariable('T012_ID', T012_ID);
  oqGetT103_ID.SetVariable('T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
  oqGetT103_ID.Execute;
  VT103_ID := oqGetT103_ID.GetVariable('T103_ID');

  if VT103_ID = 0 then
  begin
    TAppMessages.ShowError('Изменились данные. Требуется пересчитать КО.');
    Exit;
  end;

	// показываем оценку резидента
  RezidState := Tfrm41_RezidState.Instance;
  RezidState.T103_ID := VT103_ID;
  if RezidState.ShowModal = MrOk then RefreshAfterListChange;
end;

procedure Tfrm41_RezidGrp.actRezidStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actRezidState.Enabled := not DataSet.IsEmpty and EnableAction(actRezidState)
  else
    actRezidState.Enabled := not DataSet.IsEmpty;
end;

function Tfrm41_RezidGrp.GetT012_ID: Double;
begin
  Result := odsListT012_ID.AsFloat;
end;

function Tfrm41_RezidGrp.GetT012_NAME: String;
begin
  Result := odsListT012_NAME.AsString;
end;

procedure Tfrm41_RezidGrp.RefreshAfterListChange;
begin
  // смотрим данные
  RefreshData('T012_ID', FT012_ID);
end;

function Tfrm41_RezidGrp.GetRowFontColor: TColor;
const
  RED_TEXT = 'Требуется оценка';
var
  s: string;
begin
  s:= odsListT071_CALC_DESC.AsString;
  if  pos(RED_TEXT, s) > 0 then
  begin
    Result := clRed;
  end
  else
  begin
    Result := inherited GetRowFontColor;
  end;
end;

function Tfrm41_RezidGrp.GetResINN: String;
begin
  Result := odsListT012_CODE.AsString;
end;

function Tfrm41_RezidGrp.GetResName: String;
begin
  Result := odsListT012_NAME.AsString;
end;

function Tfrm41_RezidGrp.GetResID: Double;
begin
  Result := odsListT012_ID.AsFloat;
end;

procedure Tfrm41_RezidGrp.ClearId;
begin
	FT012_ID := 0;
end;

procedure Tfrm41_RezidGrp.actRealStateExecute(Sender: TObject);
begin
  // признать операции реальными
  FT012_ID := odsListT012_ID.AsFloat;
  FT035_ID := 3;
  setResidFictState;
end;

procedure Tfrm41_RezidGrp.actRealStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actRealState.Enabled := not DataSet.IsEmpty and EnableAction(actRealState)
  else
    actRealState.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm41_RezidGrp.actFictStateExecute(Sender: TObject);
begin
  // признать операции фиктивными
  FT012_ID := odsListT012_ID.AsFloat;
  FT035_ID := 2;
  setResidFictState;
end;

procedure Tfrm41_RezidGrp.actFictStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actFictState.Enabled := not DataSet.IsEmpty and EnableAction(actFictState)
  else
    actFictState.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm41_RezidGrp.SetResidFictState;
var
  VOldCursor: TCursor;
  I: Integer;
begin
  // Проставляем для типа ценных бумаг признак не оценивать
  odsList.DisableControls;
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
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
      oqSetFictState.SetVariable('T035_ID', FT035_ID);
      oqSetFictState.Execute;
      Application.ProcessMessages;
    end;

    RefreshAfterListChange;
    dmMain.Commit;
    xxxDBGrid.SelectedRows.Clear;
    Screen.Cursor:= VOldCursor;
    odsList.EnableControls;
  except on e:Exception do
    begin
      xxxDBGrid.SelectedRows.Clear;
      Screen.Cursor:= VOldCursor;
      odsList.EnableControls;
      dmMain.Rollback;
      raise;
    end;
  end;
end;

procedure Tfrm41_RezidGrp.actZeroStateExecute(Sender: TObject);
begin
  // операции не оценивать
  FT012_ID := odsListT012_ID.AsFloat;
  FT035_ID := 4;
  setResidFictState;
end;

procedure Tfrm41_RezidGrp.actZeroStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actZeroState.Enabled := not DataSet.IsEmpty and EnableAction(actZeroState)
  else
    actZeroState.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm41_RezidGrp.actShowRezidentExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainRezid(odsListT012_ID.AsFloat);
end;

procedure Tfrm41_RezidGrp.actShowRezidentUpdate(Sender: TObject);
begin
  actShowRezident.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm41_RezidGrp.actShowINNExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainRezidInn(odsListT012_CODE.AsString);
end;

procedure Tfrm41_RezidGrp.actShowINNUpdate(Sender: TObject);
begin
  actShowINN.Enabled := not DataSet.IsEmpty;
end;

function Tfrm41_RezidGrp.GetRezidBalls: Double;
begin
  result := odsListREZID_STATE.AsFloat;
end;

end.
