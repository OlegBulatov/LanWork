unit frm41_ContrStateForm;

interface

uses
  frm04_ListForm, frm42_ClassificationForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Graphics,
  frm00_ParentForm, Variants, System.Actions;
//  Windows, Messages, Dialogs,
//  fm01_PeriodFrame, DBCtrls, DBCGrids,

type
  Tfrm41_ContrState = class(Tfrm04_List, TStepPage)
    Splitter1: TSplitter;
    odsListT012_ID: TFloatField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT013_ID: TFloatField;
    odsListT013_NAME: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT013_CODE: TFloatField;
    actFic: TAction;
    actReal: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actRecalc: TAction;
    actZero: TAction;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actShowOper: TAction;
    pmGoTo: TPopupMenu;
    actGoToOper: TAction;
    actGoToRes: TAction;
    actGoToNRes: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    actOperState: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT001_OP_COUNT_IN: TFloatField;
    odsListT001_OP_COUNT_OUT: TFloatField;
    odsListT001_OP_SUM_IN: TFloatField;
    odsListT001_OP_SUM_OUT: TFloatField;
    odsListT001_OP_SUM_SALDO: TFloatField;
    odsListT002_ID: TIntegerField;
    odsListT001_PART_ID: TFloatField;
    actGoToEmit: TAction;
    actGoToEmitINN: TAction;
    N19: TMenuItem;
    N20: TMenuItem;
    odsListT028_INN: TStringField;
    odsListT028_PARENT_ID: TFloatField;
    actGoToMainRes: TAction;
    actGoToMainNRes: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    odsListT012_PARENT_ID: TFloatField;
    odsListT013_PARENT_ID: TFloatField;
    ToolButton11: TToolButton;
    odsListT035_ID: TFloatField;
    odsListT001_STATE_DESC: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    oqSetFictState: TOracleQuery;
    odsListT001_ROW_PRFX: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actRealExecute(Sender: TObject);
    procedure actFicExecute(Sender: TObject);
    procedure actZeroExecute(Sender: TObject);
    procedure actShowOperExecute(Sender: TObject);
    procedure actGoToOperExecute(Sender: TObject);
    procedure actGoToResExecute(Sender: TObject);
    procedure actGoToNResExecute(Sender: TObject);
    procedure actGoToEmitExecute(Sender: TObject);
    procedure actGoToEmitINNExecute(Sender: TObject);
    procedure actGoToMainResExecute(Sender: TObject);
    procedure actGoToMainNResExecute(Sender: TObject);
  private
    FT035_ID: Double;
    function GetNResCountry: String;
    function GetNResName: String;
    function GetNResCountryISO: Double;
    function GetNResID: Double;
  protected
    procedure setOperFictState;
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
    //
    property NResID: Double read GetNResID;
    property NResName: String read GetNResName;
    property NResCountry: String read GetNResCountry;
    property NResCountryISO: Double read GetNResCountryISO;
  end;

var
  frm41_ContrState: Tfrm41_ContrState;

implementation

uses SysUtils, dm005_MainData, frm01_MainForm;
//uses frm04_EditForm

{$R *.DFM}

{ Tfrm41_ContrState }

procedure Tfrm41_ContrState.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm41_ContrState.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm41_ContrState;
end;

class function Tfrm41_ContrState.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm41_ContrState;
end;

class procedure Tfrm41_ContrState.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm41_ContrState) := AForm;
end;

procedure Tfrm41_ContrState.FormShow(Sender: TObject);
begin
  // отменяем обновление
  // inherited;
end;

procedure Tfrm41_ContrState.DoOnClosePage(const AMainForm: TForm);
begin

end;

function Tfrm41_ContrState.GetNResCountry: String;
begin
  Result := odsListCOUNTRY_NAME.AsString;
end;

function Tfrm41_ContrState.GetNResName: String;
begin
  Result := odsListT013_NAME.AsString;
end;

function Tfrm41_ContrState.GetNResCountryISO: Double;
begin
  Result := odsListT013_CODE.AsFloat;
end;

function Tfrm41_ContrState.GetNResID: Double;
begin
  Result := odsListT013_ID.AsFloat;
end;

procedure Tfrm41_ContrState.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  DataSet.SetVariable('T012_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID);
  DataSet.SetVariable('T027_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T027_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm41_ContrState.actRealExecute(Sender: TObject);
begin
  // признать операции реальными
  FT035_ID := 3;
  setOperFictState;
end;

procedure Tfrm41_ContrState.actFicExecute(Sender: TObject);
begin
  // признать операции фиктивными
  FT035_ID := 2;
  setOperFictState;
end;

procedure Tfrm41_ContrState.RefreshAfterListChange;
var
  VArray: Variant;
begin
  // смотрим данные
  VArray := VarArrayCreate([0,1], varDouble);
  VArray[0] := odsListT012_ID.AsFloat;
  VArray[1] := odsListT013_ID.AsFloat;
  RefreshData('T012_ID;T013_ID', VArray);
end;

procedure Tfrm41_ContrState.SetOperFictState;
var
  VOldCursor: TCursor;
  I: Integer;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  odsList.DisableControls;
  // Проставляем для КО признак что её нужно пересчитать
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
      oqSetFictState.SetVariable('T013_ID', odsListT013_PARENT_ID.AsFloat);
      oqSetFictState.SetVariable('T030_ID', odsListT030_ID.AsFloat);
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

procedure Tfrm41_ContrState.actZeroExecute(Sender: TObject);
begin
  // не обрабатывать операции
  FT035_ID := 4;
  setOperFictState;
end;

procedure Tfrm41_ContrState.actShowOperExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOperStep5(
    Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).Regn,
    Tfrm42_Classification(Tfrm42_Classification.Instance).T027_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID);
end;

procedure Tfrm41_ContrState.actGoToOperExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOperStep5(
     Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID,
  	Tfrm42_Classification(Tfrm42_Classification.Instance).Regn,
        Tfrm42_Classification(Tfrm42_Classification.Instance).T027_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).T012_ID);
end;

procedure Tfrm41_ContrState.actGoToResExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllRezid(
    odsListT012_ID.AsFloat
    );
end;

procedure Tfrm41_ContrState.actGoToNResExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllNRezid(
    odsListT013_ID.AsFloat
    );
end;

procedure Tfrm41_ContrState.actGoToEmitExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainIssuer(
    odsListT028_PARENT_ID.AsFloat
    );
end;

procedure Tfrm41_ContrState.actGoToEmitINNExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainIssuerInn(
    odsListT028_INN.AsString
    );
end;

procedure Tfrm41_ContrState.actGoToMainResExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainRezid(
    odsListT012_PARENT_ID.AsFloat
    );
end;

procedure Tfrm41_ContrState.actGoToMainNResExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainNRezid(
    odsListT013_PARENT_ID.AsFloat
    );
end;

function Tfrm41_ContrState.GetRowFontColor: TColor;
const
  RED_TEXT = 'Не определен';
var s: string;
begin
  s:= odsListT001_STATE_DESC.AsString;
  if  pos(RED_TEXT, s) > 0 then
  begin
    Result := clRed;
  end else
  begin
    Result := inherited GetRowFontColor;
  end;
end;



end.

