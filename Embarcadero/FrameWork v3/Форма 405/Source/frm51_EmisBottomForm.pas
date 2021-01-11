unit frm51_EmisBottomForm;

interface

uses
  frm27_LinkerBottomForm, Db, fm36_MonthFrame, StdCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, Graphics, Dialogs,
//  fm01_PeriodFrame,

type
  Tfrm51_EmisBottom = class(Tfrm27_LinkerBottom)
    actGoToForm405: TAction;
    pmGoTo: TPopupMenu;
    N4051: TMenuItem;
    N711311: TMenuItem;
    N711321: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    oqCount: TOracleQuery;
    odsListT026_TRIMMED: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListIS_ISSUER_MAIN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT025_CODE: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    chbPeriod: TCheckBox;
    Tfm01_Period1: Tfm36_MonthAll;
    Tfm01_Period2: Tfm36_MonthAll;
    odsListT055_ID: TFloatField;
    procedure actGoToForm405Execute(Sender: TObject);
    procedure actGoToForm711_31Execute(Sender: TObject);
    procedure actGoToForm711_32Execute(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  protected
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm51_EmisBottom: Tfrm51_EmisBottom;

implementation

uses
  SysUtils, frm51_EmisLinkerForm, frm01_MainForm, Matrix, A00_MatrixConst,
  frm30_EmissionEditForm, frm04_ListForm;

{$R *.DFM}

{ Tfrm51_EmisBottom }

class function Tfrm51_EmisBottom.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm51_EmisBottom;
end;

class function Tfrm51_EmisBottom.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm51_EmisBottom;
end;

procedure Tfrm51_EmisBottom.RefreshAfterListChange;
begin
  RefreshData('T030_ID', Linker.LeftID);
end;

class procedure Tfrm51_EmisBottom.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm51_EmisBottom) := AForm;
end;

procedure Tfrm51_EmisBottom.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T030_ID', odsList['T030_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  Linker.LeftID := odsList['T030_ID'];
end;

procedure Tfrm51_EmisBottom.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T026_ID', odsList['T026_ID']);
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.Execute;
  Linker.LeftID := odsList['T030_ID'];
end;

procedure Tfrm51_EmisBottom.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T026_ID', odsList['T026_ID']);
  oqAdd.SetVariable('T027_ID', odsList['T027_ID']);
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
  oqAdd.Execute;
  Linker.LeftID := oqAdd.GetVariable('T030_ID');
end;

procedure Tfrm51_EmisBottom.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_EMISSION, true, '');
end;

procedure Tfrm51_EmisBottom.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_EMISSION, true, '');
end;

procedure Tfrm51_EmisBottom.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_EMISSION, true, '');
end;

function Tfrm51_EmisBottom.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm30_EmissionEdit.Instance;
end;

function Tfrm51_EmisBottom.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_EMISSION, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_EMISSION, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_EMISSION, FALSE)
  else result:= true;
end;

function Tfrm51_EmisBottom.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T026_ID', odsList['T026_ID']);
  oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
  oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm51_EmisBottom.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');  

  if chbPeriod.Checked then
  begin
    SetNumbBetweenFilter(
      'T055_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
  end;

  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T028_PARENT_ID', frm51_EmisLinker.odsIssuers.FieldByName('T028_ID').AsFloat);
  //DataSet.SetVariable('T027_ID', frm51_EmisLinker.odsSecType.FieldByName('T027_ID').AsFloat);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;

end;

procedure Tfrm51_EmisBottom.actGoToForm405Execute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllEmission(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisBottom.actGoToForm711_31Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.1
  frm01_Main.FindAllEmission_711_31(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisBottom.actGoToForm711_32Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.2
  frm01_Main.FindAllEmission_711_32(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisBottom.odsListAfterScroll(DataSet: TDataSet);
begin
  // считаем кол-во записей
  oqCount.SetVariable('T030_ID', odsList['T030_ID']);
  oqCount.Execute;
  StatusBar.Panels[0].Text := IntToStr(oqCount.GetVariable('o_count_405'));
  StatusBar.Panels[1].Text := IntToStr(oqCount.GetVariable('o_count_711_31'));
  StatusBar.Panels[2].Text := IntToStr(oqCount.GetVariable('o_count_711_32'));
end;

procedure Tfrm51_EmisBottom.FormShow(Sender: TObject);
begin
  if not Tfm01_Period1.odsPeriod.Active then
  begin
    Tfm01_Period1.Init;
    Tfm01_Period2.Init;
  end;

  inherited;
end;

end.
