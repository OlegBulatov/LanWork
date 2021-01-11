unit frm50_IssuerBottomForm;

interface

uses
  frm27_LinkerBottomForm, StdCtrls, ComCtrls, ExtCtrls, Menus, ActnList,
  Db, Oracle, fm36_MonthFrame, OracleData, Classes, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, frm04_EditForm,
  frm00_ParentForm;
//  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
//  OracleData, fmSeach,
//  Grids, DBGrids, xxxDBGrid, ToolWin,
//  fm31_FilterFrame, DBCtrls, fm01_PeriodFrame,

type
  Tfrm50_IssuerBottom = class(Tfrm27_LinkerBottom)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actGoToForm405: TAction;
    pmGoTo: TPopupMenu;
    N4051: TMenuItem;
    N711311: TMenuItem;
    N711321: TMenuItem;
    oqCount: TOracleQuery;
    Panel1: TPanel;
    chbPeriod: TCheckBox;
    odsListT055_ID: TFloatField;
    Tfm01_Period1: Tfm36_MonthAll;
    Tfm01_Period2: Tfm36_MonthAll;
    Label1: TLabel;
    chbHideFL: TCheckBox;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT028_INDUSTRY: TStringField;
    odsListT028_REGION_CODE: TFloatField;
    odsListT028_REGION: TStringField;
    odsListT140_ID: TIntegerField;
    odsListSECTOR_NAME: TStringField;
    actGoToForm405Rez: TAction;
    actGoToForm405Nrez: TAction;
    actGoToForm405Iss: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N4052: TMenuItem;
    N4053: TMenuItem;
    procedure actGoToForm405Execute(Sender: TObject);
    procedure actGoToForm711_31Execute(Sender: TObject);
    procedure actGoToForm711_32Execute(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actGoToForm405IssExecute(Sender: TObject);
    procedure actGoToForm405RezExecute(Sender: TObject);
    procedure actGoToForm405NrezExecute(Sender: TObject);
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
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    procedure RefreshAfterListChange; override;
  end;

var
  frm50_IssuerBottom: Tfrm50_IssuerBottom;

implementation

uses
  SysUtils, frm01_MainForm, Matrix, A00_MatrixConst, frm50_IssuerBottomEditForm,
  frm04_ListForm;

{$R *.DFM}

{ Tfrm50_IssuerBottom }

class function Tfrm50_IssuerBottom.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm50_IssuerBottom;
end;

class function Tfrm50_IssuerBottom.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm50_IssuerBottom;
end;

procedure Tfrm50_IssuerBottom.RefreshAfterListChange;
begin
  RefreshData('T028_ID', Linker.LeftID);
end;

class procedure Tfrm50_IssuerBottom.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm50_IssuerBottom) := AForm;
end;

procedure Tfrm50_IssuerBottom.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T028_ID', odsList['T028_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  Linker.LeftID := odsList['T028_ID'];
end;

procedure Tfrm50_IssuerBottom.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqUpdate.SetVariable('T025_ID', odsList['T025_ID']);
  oqUpdate.SetVariable('T140_ID', odsList['T140_ID']);
  oqUpdate.SetVariable('T028_INN', odsList['T028_INN']);
  oqUpdate.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqUpdate.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
  oqUpdate.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqUpdate.SetVariable('T033_ID', odsList['T033_ID']);
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
  oqUpdate.Execute;
  Linker.LeftID := odsList['T028_ID'];
end;

procedure Tfrm50_IssuerBottom.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqAdd.SetVariable('T025_ID', odsList['T025_ID']);
  oqAdd.SetVariable('T140_ID', odsList['T140_ID']);
  oqAdd.SetVariable('T028_INN', odsList['T028_INN']);
  oqAdd.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqAdd.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
  oqAdd.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqAdd.SetVariable('T033_ID', odsList['T033_ID']);
  oqAdd.SetVariable('T037_ID', odsList['T037_ID']);
  oqAdd.Execute;
  Linker.LeftID := oqAdd.GetVariable('T028_ID');
end;

function Tfrm50_IssuerBottom.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  oqDupl.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqDupl.SetVariable('T025_ID', odsList['T025_ID']);
  oqDupl.SetVariable('T028_INN', odsList['T028_INN']);
  oqDupl.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
//  oqDupl.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
//  oqDupl.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqDupl.SetVariable('T033_ID', odsList['T033_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm50_IssuerBottom.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_ISSUER, true, '');
end;

procedure Tfrm50_IssuerBottom.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUER, true, '');
end;

procedure Tfrm50_IssuerBottom.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_ISSUER, true, '');
end;

function Tfrm50_IssuerBottom.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm50_IssuerBottomEdit.Instance;
end;

function Tfrm50_IssuerBottom.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_ISSUER, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_ISSUER, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_ISSUER, FALSE)
  else result:= true;
end;

procedure Tfrm50_IssuerBottom.actGoToForm405Execute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllIssuer(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerBottom.actGoToForm711_31Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.1
  frm01_Main.FindAllIssuer_711_31(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerBottom.actGoToForm711_32Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.2
  frm01_Main.FindAllIssuer_711_32(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerBottom.odsListAfterScroll(DataSet: TDataSet);
begin
  // считаем кол-во записей
  oqCount.SetVariable('T028_ID', odsList['T028_ID']);
  oqCount.Execute;
  StatusBar.Panels[0].Text := IntToStr(oqCount.GetVariable('o_count_405'));
  StatusBar.Panels[1].Text := IntToStr(oqCount.GetVariable('o_count_711_31'));
  StatusBar.Panels[2].Text := IntToStr(oqCount.GetVariable('o_count_711_32'));
end;

procedure Tfrm50_IssuerBottom.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T025_ID');

  // фильт по дате появления
  if chbPeriod.Checked then
  begin
    SetNumbBetweenFilter(
      'T055_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
  end;

  // фильт Исключать физ. лица
  if chbHideFL.Checked then
  begin
    SetNumb03Filter('T025_ID',  1);
  end;

  DataSet.Close;
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm50_IssuerBottom.FormShow(Sender: TObject);
begin
  if not Tfm01_Period1.odsPeriod.Active then
  begin
    Tfm01_Period1.Init;
    Tfm01_Period2.Init;
  end;

  inherited;
end;

procedure Tfrm50_IssuerBottom.actGoToForm405IssExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllIssuer(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerBottom.actGoToForm405RezExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllRezid(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerBottom.actGoToForm405NrezExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllNRezid(
    odsListT028_ID.AsFloat
    );
end;

end.
