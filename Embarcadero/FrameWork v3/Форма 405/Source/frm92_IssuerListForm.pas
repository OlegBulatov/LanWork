unit frm92_IssuerListForm;

interface

uses
  frm04_ListForm, frm91_405LinksForm, Db, xxxDbLookupCheckCombo, StdCtrls,
  fm01_PeriodFrame, Oracle, OracleData, Menus, Classes, ActnList, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls, frm00_ParentForm, frm94_EmitentLinkListForm,
  frm04_EditForm, Variants, System.Actions;

type
  Tfrm92_IssuerList = class(Tfrm04_List, TCalcStepPage)
    Panel1: TPanel;
    fm01_Period1: Tfm01_Period;
    actApplayFilter: TAction;
    Panel2: TPanel;
    tbLinkEmitent: TToolButton;
    ToolButton5: TToolButton;
    actLinkEmitent: TAction;
    oqLinkEmitent: TOracleQuery;
    odsListT055_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_ID_IS_MAIN: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT027_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_SUM_CROSS_Y: TFloatField;
    odsListT001_OP_SUM_CROSS_N: TFloatField;
    fm01_Period2: Tfm01_Period;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListIS_PACK: TFloatField;
    chbHidePack: TCheckBox;
    Button1: TButton;
    chbPeriod: TCheckBox;
    Label1: TLabel;
    chbType: TCheckBox;
    lcbType: TxxxDBLookupCheckCombo;
    odsType: TOracleDataSet;
    odsTypeT027_ID: TFloatField;
    odsTypeDESC_FLD: TStringField;
    odsTypeT027_SEC_TYPE: TStringField;
    odsTypeT027_COMMENTS: TStringField;
    dsType: TDataSource;
    ToolButton6: TToolButton;
    actMakeMain: TAction;
    ToolButton7: TToolButton;
    actUnlinkEmitent: TAction;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT027_ID_CH: TStringField;
    ToolButton8: TToolButton;
    actGoto405: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    odsListT042_SHORT_NAME: TStringField;
    cbIssuerGroup: TCheckBox;
    lcbIssuerGroup: TxxxDBLookupCheckCombo;
    odsIssuerGroup: TOracleDataSet;
    dsIssuerGroup: TDataSource;
    odsListT042_ID: TFloatField;
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure actApplayFilterExecute(Sender: TObject);
    procedure actLinkEmitentExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actLinkEmitentUpdate(Sender: TObject);
    procedure actUnlinkEmitentUpdate(Sender: TObject);
    procedure actUnlinkEmitentExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
    procedure actGoto405Execute(Sender: TObject);
    procedure actGoto405Update(Sender: TObject);
  private
    FT055_ID_1: Double;
    FT055_ID_2: Double;
    FKeyFields: string;
    FKeyValues: Variant;
    function GetT055_ID: Double;
//    function GetParentForm: Tfrm91_405Links;
    function GetT028_ID: Double;
    function getIssuerDesc(): String;
    function GetT027_ID: Double;
  protected
    FT028_ID: Double;
	  //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function EditForm: Tfrm04_Edit; override;
    procedure DoEdit; override;

    function ChooseForm: Tfrm94_EmitentLinkList; virtual;
    function LinkEmitent: Boolean;

   //
    procedure DoRefresh(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    property T055_ID: Double read GetT055_ID;
    property T028_ID: Double read GetT028_ID;
    property T027_ID: Double read GetT027_ID;
    property IssuerDesc:String read getIssuerDesc;
    //
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant);  override;

  end;

var
  frm92_IssuerList: Tfrm92_IssuerList;

implementation

uses SysUtils, frm01_MainForm, dm005_MainData, frm92_IssuerEditForm, Dialogs;

{$R *.DFM}

{ Tfrm81_RemainsPeriodList }

function Tfrm92_IssuerList.getIssuerDesc(): String;
begin
  Result := odsList.FieldByName('T028_SHOT_NAME').AsString + ' (' + odsList.FieldByName('T028_INN').AsString + ')';
end;

procedure Tfrm92_IssuerList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  (*
	if needCalculate then
	  Applied := TAppMessages.ShowConfirmation(SConfirmCalculation)
  else
  	Applied := true;
  *)
end;

procedure Tfrm92_IssuerList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm92_IssuerList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm92_IssuerList;
end;

class function Tfrm92_IssuerList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm92_IssuerList;
end;

function Tfrm92_IssuerList.GetT055_ID: Double;
begin
  Result := odsListT055_ID.AsFloat;
end;

class procedure Tfrm92_IssuerList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm92_IssuerList) := AForm;
end;

procedure Tfrm92_IssuerList.RefreshAfterListChange;
begin
  RefreshData('T028_ID', odsList.FieldByName('T028_ID').AsFloat);
end;

{
function Tfrm92_IssuerList.GetParentForm: Tfrm91_405Links;
begin
  Result := Tfrm91_405Links(Tfrm91_405Links.Instance);
end;
}

procedure Tfrm92_IssuerList.actApplayFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm92_IssuerList.FormShow(Sender: TObject);
begin
  fm01_Period1.Init;
  if FT055_ID_1 >= 0 then
    fm01_Period1.lcbPeriod.KeyValue := FT055_ID_1;

  fm01_Period2.Init;
  if FT055_ID_2 >= 0 then
    fm01_Period2.lcbPeriod.KeyValue := FT055_ID_2;

  odsType.Close;
  odsType.Open;

  RefreshOnShow := False;

  inherited;
end;

procedure Tfrm92_IssuerList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
//var
//  VDelay: Integer;
//  VValue: string;
begin
  FKeyFields := KeyFields;
  FKeyValues := KeyValues;

  // сохраняем значения фильтров
  FT055_ID_1 := fm01_Period1.lcbPeriod.KeyValue;
  FT055_ID_2 := fm01_Period2.lcbPeriod.KeyValue;

  // обновляем данные

  DoRefresh(nil);
end;

function Tfrm92_IssuerList.GetT028_ID: Double;
begin
  Result := odsListT028_ID.AsFloat;
//  Result := odsList.FieldByName('T028_ID').AsFloat;
end;

procedure Tfrm92_IssuerList.DoRefresh(Sender: TObject);
//var
//  VDelay: Integer;
begin
  // обновляем данные
  DataSet.Close;

  // снимаем фильтры по полям
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID_CH');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('IS_PACK');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T042_ID');

  // устанавливаем фильтры

  // тип ц.б.
  if chbType.Checked then
    begin
    SetStrInFilter('T027_ID_CH', lcbType.KeyValuesStr);
    end;

  // Группа эмитента
  if cbIssuerGroup.Checked then
    begin
    if lcbIssuerGroup.KeyValue <> 1 then // 1 = все
      SetNumbFilter('T042_ID', lcbIssuerGroup.KeyValue);
    end;

  // скрывать пакеты
  if chbHidePack.Checked then
    begin
    SetNumbFilter('IS_PACK', 0);
    end;

  if chbPeriod.Checked then
    begin
//    DataSet.SetVariable('T055_ID_S', StrToFloat(fm01_Period1.KeyValue));
//    DataSet.SetVariable('T055_ID_E', StrToFloat(fm01_Period2.KeyValue));
    SetNumbBetweenFilter('T055_ID', StrToFloat(fm01_Period1.KeyValue), StrToFloat(fm01_Period2.KeyValue));
    end;

  DataSet.Open;

  if FKeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(FKeyFields, FKeyValues, [])
  end;
end;

procedure Tfrm92_IssuerList.FormCreate(Sender: TObject);
begin
  inherited;
  FT055_ID_1 := -1;
  FT055_ID_2 := -1;
end;

procedure Tfrm92_IssuerList.actLinkEmitentUpdate(Sender: TObject);
begin
  actLinkEmitent.Enabled := odsListT028_ID_IS_MAIN.AsString = 'Нет';
end;

procedure Tfrm92_IssuerList.actLinkEmitentExecute(Sender: TObject);
begin
  ChooseForm.INN := odsListT028_INN.AsString;
  ChooseForm.OnSelect := LinkEmitent;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function Tfrm92_IssuerList.ChooseForm: Tfrm94_EmitentLinkList;
begin
  result := Tfrm94_EmitentLinkList.instance;
end;

function Tfrm92_IssuerList.LinkEmitent: Boolean;
begin
  // переносим запись
  oqLinkEmitent.SetVariable('i_id', odsListT028_ID.AsFloat);
  oqLinkEmitent.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLinkEmitent.Execute;

  RefreshData('T028_ID', odsListT028_ID.AsFloat);

  Result := True;
end;

procedure Tfrm92_IssuerList.actUnlinkEmitentUpdate(Sender: TObject);
begin
  actUnlinkEmitent.Enabled := (not odsListT028_ID_MAIN.IsNull and not (odsListT028_ID.AsFloat = odsListT028_ID_MAIN.AsFloat));;
end;

procedure Tfrm92_IssuerList.actUnlinkEmitentExecute(Sender: TObject);
begin
  if odsListT028_ID.AsFloat = odsListT028_ID_MAIN.AsFloat then
    begin
    // удаляем как главного
// Пока не умеем !!!
//    oqDupl.SetVariable('T012_ID', odsList['T028_ID']);
//    oqDupl.Execute;
    end
  else
    begin
    // удаляем связь
    oqDelete.SetVariable('T028_ID', odsList['T028_ID']);
    oqDelete.Execute;
    end;

  RefreshData('T028_ID', odsList['T028_ID']);
end;

procedure Tfrm92_IssuerList.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty and odsListT028_ID_MAIN.IsNull;
end;

procedure Tfrm92_IssuerList.actMakeMainExecute(Sender: TObject);
begin
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
  oqAdd.Execute;
  RefreshData('T028_ID', odsList['T028_ID']);
end;

function Tfrm92_IssuerList.GetT027_ID: Double;
begin
  Result := odsListT027_ID.AsFloat;
end;

procedure Tfrm92_IssuerList.actGoto405Update(Sender: TObject);
begin
  actGoto405.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm92_IssuerList.actGoto405Execute(Sender: TObject);
begin
//  GetParentForm.doNext;

  // найти операции формы 405
  frm01_Main.FindIssuerInPer(
    odsListT055_ID.AsFloat,
    odsListT028_ID.AsFloat,
    [odsListT027_ID.AsFloat]
    );
end;

procedure Tfrm92_IssuerList.actEditAttributesUpdate(Sender: TObject);
var
  vEnabled:  boolean;
begin
  if dmMain.UseMatrix then
    vEnabled := not DataSet.IsEmpty and EnableAction(actEditAttributes)
  else
    vEnabled := not DataSet.IsEmpty;

  if odsListT028_ID_IS_MAIN.AsString = 'Да' then
    vEnabled := False;

  actEditAttributes.Enabled := vEnabled;
end;

function Tfrm92_IssuerList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm92_IssuerEdit.Instance;
end;

// Изменение ИНН эмитента = попытка связать с главным, имеющим нужный ИНН, если такого нет - попытка изменить ИНН
procedure Tfrm92_IssuerList.DoEdit;
begin
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T028_INN', odsList['T028_INN']);
  oqUpdate.Execute;
end;

constructor Tfrm92_IssuerList.Create(AOwner: TComponent);
begin
  inherited;
  odsIssuerGroup.Close;
  odsIssuerGroup.Open;
  lcbIssuerGroup.KeyValue := 1; // Все
end;

end.
