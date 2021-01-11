unit frm31_EmisInfListForm;

interface

uses
  Windows, Classes, Forms, Db, frm04_TabListForm, RxLookup, xxxDbLookupCheckCombo,
  StdCtrls, Oracle, OracleData, Menus, ActnList, ComCtrls, fm31_FilterFrame,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm78_MaturityListForm, frm99_EmissSizeListForm, frm103_NkdListForm,
  Graphics, frm04_TabListItemForm, frm04_EditForm, frm00_ParentForm, Variants,
  System.Actions;

type
  TCouponsCalcType = (ctNone, ctAll, ctSelected, ctOne);
  TWarn = (twShowError, twHideError);

  Tfrm31_EmisInfList = class(Tfrm04_TabList)
    odsListT031_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT031_REG_DATE: TDateTimeField;
    odsListT024_ID: TFloatField;
    odsListT024_NAME: TStringField;
    odsListT023_ID: TFloatField;
    odsListT023_NAME: TStringField;
    odsListT031_START_DATE: TDateTimeField;
    odsListT031_END_DATE: TDateTimeField;
    odsListT031_NOMINAL: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT026_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT031_CURRENCY: TStringField;
    odsListT031_COUPON_PER: TFloatField;
    Panel2: TPanel;
    cbSecType: TCheckBox;
    odsIssuers: TOracleDataSet;
    odsIssuersT028_ID: TFloatField;
    dsIssuers: TDataSource;
    odsSecType: TOracleDataSet;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    dsSecType: TDataSource;
    actApplayFilter: TAction;
    btnRefresh: TButton;
    TabSheet1: TTabSheet;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actClearSelect: TAction;
    oqClearSelect: TOracleQuery;
    TabSheet2: TTabSheet;
    odsListT031_DATE_ANNUL: TDateTimeField;
    TabSheet3: TTabSheet;
    odsListT031_RATES_TYPE: TIntegerField;
    odsListT031_RATES_TYPE_NAME: TStringField;
    cbCode: TCheckBox;
    odsListT031_CALC_METHOD: TIntegerField;
    odsListT031_CALC_METHOD_NAME: TStringField;
    edCode: TEdit;
    cbIsin: TCheckBox;
    edISIN: TEdit;
    oqDeleteCoupons: TOracleQuery;
    odsListT031_CALC_DATE_TYPE: TIntegerField;
    odsListT031_COUPON_PERIOD: TFloatField;
    ToolButton10: TToolButton;
    oqRecalcCoupons: TOracleQuery;
    oqMMCheck: TOracleQuery;
    odsIssuersT028_SHOT_NAME_DESC: TStringField;
    actFilterByIssName: TAction;
    odsListT030_TYPE: TStringField;
    odsListT030_TYPE_DESC: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    cbIssuer: TCheckBox;
    cbInn: TCheckBox;
    lcbSecType: TxxxDBLookupCheckCombo;
    odsSecTypeT027_COMMENTS: TStringField;
    edINN: TEdit;
    lcbIssuers: TRxDBLookupCombo;
    odsListT028_CODE: TStringField;
    cbEditions: TCheckBox;
    odsListT167_NAME: TStringField;
    odsListT167_EXCHANGE: TStringField;
    odsListT031_AUTOLOAD: TIntegerField;
    oqSetCheck: TOracleQuery;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    MenuLoadRates: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    actRatesLoadCurrent: TAction;
    actRatesLoadSelected: TAction;
    actRatesLoadAll: TAction;
    oqCheckBlPipe: TOracleQuery;
    oqRequestRates: TOracleQuery;
    odsListT030_RECORD_TYPE: TIntegerField;
    odsListT010_ID: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actApplayFilterExecute(Sender: TObject);
    procedure lcIssuers1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcSecTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbSecTypeClick(Sender: TObject);
    procedure actClearSelectExecute(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chbIssuer1Click(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure ToolButton10Click(Sender: TObject);
    procedure actFilterByIssNameExecute(Sender: TObject);
    procedure cbCodeClick(Sender: TObject);
    procedure cbIsinClick(Sender: TObject);
    procedure edIssuerNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure odsListAfterInsert(DataSet: TDataSet);
    procedure cbInnClick(Sender: TObject);
    procedure lcbSecTypeCloseUp(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actRatesLoadCurrentUpdate(Sender: TObject);
    procedure actRatesLoadCurrentExecute(Sender: TObject);
    procedure actRatesLoadSelectedUpdate(Sender: TObject);
    procedure actRatesLoadSelectedExecute(Sender: TObject);
    procedure actRatesLoadAllUpdate(Sender: TObject);
    procedure actRatesLoadAllExecute(Sender: TObject);
  private
    FT030_ID: Double;
    FMaturityMatrix: Tfrm78_MaturityList;
    FEmissSize: Tfrm99_EmissSizeList;
    FNkdForm: TFrm103_NkdList;
    procedure ClearSelect;
    //
    procedure RefreshIssuers;
//    function GetIssuerNameFiltr: String;
    procedure RefreshSecType;
    procedure RefreshAll;
    //
    function getCheckedColor(AChecked: Boolean): TColor;
    procedure RefreshFiltrView;
    procedure SetCheck;
    procedure CheckBlPipe;
    procedure SendRequest(Isin, Ticker, Exch_code: string; DateFrom, DateTo: TDate; AUser: string);
  protected
    //
    function GetListItem: Tfrm04_TabListItem; override;
    //
    procedure OnClearSelect;
    procedure OnAdd; override;
    //
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
    CouponsEnabled: boolean;
    MaturityMatrixExists: boolean;
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RecalcCoupons(T030_ID: Double; NoWarn: TWarn);
    function  CanHaveCoupons(EmissionType: string): boolean;
    procedure FindAllIssEmiss(const AT028_ID: Double; const AT027_IDs: array of Double);
    procedure FindEmissByIssuer(const AT027_ID, AT028_ID: Double; AISIN, AINN: string; ASource: Integer);
 end;

var
  frm31_EmisInfList: Tfrm31_EmisInfList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, untMessages, frm31_EmisInfEditForm,
  frm34_CouponListForm, frm04_ListForm, frm31_CouponsRecalcDlg, dm005_MainData,
  G001_RequestDatesDlg;

{$R *.DFM}

{ Tfrm31_EmisInfList }


procedure Tfrm31_EmisInfList.FormCreate(Sender: TObject);
begin
  inherited;

  cbIssuer.Checked := False;
  cbINN.Checked := False;
  cbSecType.Checked := False;
  cbCode.Checked := False;
  cbISIN.Checked := False;

  // проверка
  if Assigned(FMaturityMatrix) then Exit;

  // инициализируем и кладем на панель
  FMaturityMatrix := Tfrm78_MaturityList.Instance;
  FMaturityMatrix.odsList.Master := odsList;
  PlaceFormToWinControl(FMaturityMatrix, pc01.Pages[1]);

  // инициализируем и кладем на панель
  FEmissSize := Tfrm99_EmissSizeList.Instance;
  FEmissSize.odsList.Master := odsList;
  PlaceFormToWinControl(FEmissSize, pc01.Pages[2]);

  // инициализируем и кладем на панель 3
  FNkdForm := TFrm103_NkdList.Instance;
  FNkdForm.odsList.Master := odsList;
  PlaceFormToWinControl(FNkdForm, pc01.Pages[3]);

  pc01.ActivePageIndex := 0;
end;

procedure Tfrm31_EmisInfList.RefreshFiltrView;
begin
  chbIssuer1Click(self);
  cbInnClick(self);
  cbSecTypeClick(self);
  cbCodeClick(Self);
  cbISINClick(self);
end;

class function Tfrm31_EmisInfList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm31_EmisInfList;
end;

class function Tfrm31_EmisInfList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm31_EmisInfList;
end;

class procedure Tfrm31_EmisInfList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm31_EmisInfList) := AForm;
end;

procedure Tfrm31_EmisInfList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  if odsIssuers.Active then
    DataSet.FieldByName('T028_ID').AsFloat := lcbIssuers.KeyValue;
  if odsSecType.Active then
    DataSet.FieldByName('T027_ID').AsFloat := lcbSecType.KeyValue;
  (*
  DataSet.FieldByName('T031_REG_DATE').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T031_START_DATE').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T031_END_DATE').AsDateTime := Trunc(Now);
  *)
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm31_EmisInfList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T030_ID', odsList['T030_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm31_EmisInfList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T026_ID', odsList['T026_ID']);
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T030_TYPE', odsList['T030_TYPE']);
  oqUpdate.SetVariable('T031_REG_DATE', odsList['T031_REG_DATE']);
  oqUpdate.SetVariable('T010_ISIN_SOURCE', odsList['T010_ISIN_TRANSL']);
  oqUpdate.SetVariable('T024_ID', odsList['T024_ID']);
  oqUpdate.SetVariable('T023_ID', odsList['T023_ID']);
  oqUpdate.SetVariable('T031_DATE_ANNUL', odsList['T031_DATE_ANNUL']);
  oqUpdate.SetVariable('T031_CURRENCY', odsList['T031_CURRENCY']);
  oqUpdate.SetVariable('T031_NOMINAL', odsList['T031_NOMINAL']);
  oqUpdate.SetVariable('T031_COUPON_PER', odsList['T031_COUPON_PER']);

  oqUpdate.SetVariable('T126_RATES_TYPE', odsList['T031_RATES_TYPE']);
  oqUpdate.SetVariable('T126_CALC_METHOD', odsList['T031_CALC_METHOD']);
  oqUpdate.SetVariable('T126_CALC_DATE_TYPE', odsList['T031_CALC_DATE_TYPE']);

  oqUpdate.SetVariable('T167_NAME', odsList['T167_NAME']);
  oqUpdate.SetVariable('T167_EXCHANGE', odsList['T167_EXCHANGE']);
  oqUpdate.SetVariable('T031_AUTOLOAD', odsList['T031_AUTOLOAD']);

  oqUpdate.Execute;
  FT030_ID := odsList['T030_ID'];

  if Tfrm31_EmisInfEdit(EditForm).NeedRecalc then
    RecalcCoupons(odsListT030_ID.AsFloat, twShowError);
end;
procedure Tfrm31_EmisInfList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T026_ID', odsList['T026_ID']);
  oqAdd.SetVariable('T027_ID', odsList['T027_ID']);
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
  oqAdd.SetVariable('T030_TYPE', odsList['T030_TYPE']);

  oqAdd.SetVariable('T031_REG_DATE', odsList['T031_REG_DATE']);
  oqAdd.SetVariable('T010_ISIN_SOURCE', odsList['T010_ISIN_TRANSL']);
  oqAdd.SetVariable('T024_ID', odsList['T024_ID']);
  oqAdd.SetVariable('T023_ID', odsList['T023_ID']);
  oqAdd.SetVariable('T031_CURRENCY', odsList['T031_CURRENCY']);
  oqAdd.SetVariable('T031_NOMINAL', odsList['T031_NOMINAL']);
  oqAdd.SetVariable('T031_COUPON_PER', odsList['T031_COUPON_PER']);
  oqAdd.SetVariable('T031_DATE_ANNUL', odsList['T031_DATE_ANNUL']);

  oqAdd.SetVariable('T126_RATES_TYPE', odsList['T031_RATES_TYPE']);
  oqAdd.SetVariable('T126_CALC_DATE_TYPE', odsList['T031_CALC_DATE_TYPE']);
  oqAdd.SetVariable('T126_CALC_METHOD', odsList['T031_CALC_METHOD']);

  oqAdd.SetVariable('T167_NAME', odsList['T167_NAME']);
  oqAdd.SetVariable('T167_EXCHANGE', odsList['T167_EXCHANGE']);
  oqAdd.SetVariable('T031_AUTOLOAD', odsList['T031_AUTOLOAD']);

  oqAdd.Execute;
  FT030_ID := oqAdd.GetVariable('T030_ID');
end;

procedure Tfrm31_EmisInfList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_EMISSION, true, '');
end;

procedure Tfrm31_EmisInfList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_EMISSION, true, '');
end;

procedure Tfrm31_EmisInfList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_EMISSION, true, '');
end;

function Tfrm31_EmisInfList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm31_EmisInfEdit.Instance;
end;

function Tfrm31_EmisInfList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_EMISSION, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_EMISSION, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_EMISSION, FALSE)
  else result:= true;
end;

function Tfrm31_EmisInfList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
    oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
    oqDupl.SetVariable('T026_ID', odsList['T026_ID']);
    oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
    oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
    oqDupl.SetVariable('T010_ID', odsList['T010_ID']);
    oqDupl.Execute;
    Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm31_EmisInfList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

function Tfrm31_EmisInfList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm34_CouponList.Instance;
end;

procedure Tfrm31_EmisInfList.RefreshIssuers;
var
  VOldCursor: TCursor;
begin
  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    odsIssuers.Close;
    if cbIssuer.Checked then
      begin
//      odsIssuers.SetVariable('T028_SHOT_NAME', GetIssuerNameFiltr);
      odsIssuers.Open;
      //odsIssuers.First;
      lcbIssuers.KeyValue := odsIssuers.FieldByName(lcbIssuers.LookupField).AsFloat;
      end;
  finally
    Screen.Cursor := VOldCursor;
  end;
end;

{
function Tfrm31_EmisInfList.GetIssuerNameFiltr: String;
begin
  Result := '%' + lcbIssuers.Text + '%';
end;
}

procedure Tfrm31_EmisInfList.RefreshSecType;
begin
  odsSecType.Close;
  if cbSecType.Checked then
    begin
    odsSecType.Open;
    odsSecType.First;
    lcbSecType.KeyValue := odsSecType.FieldByName(lcbSecType.LookupField).AsFloat;
    end;
end;

procedure Tfrm31_EmisInfList.RefreshAll;
begin
  RefreshIssuers;
  RefreshSecType;
  RefreshData('', Unassigned);
end;

procedure Tfrm31_EmisInfList.FormShow(Sender: TObject);
begin
  if odsList.Active then Exit;

  if not odsIssuers.Active and cbIssuer.Checked then
    begin
    RefreshIssuers;
    end;

  if not odsSecType.Active and cbSecType.Checked then
    begin
    RefreshSecType;
    end;

  RefreshOnShow := False;

  RefreshFiltrView;

  inherited;
end;

procedure Tfrm31_EmisInfList.actApplayFilterExecute(Sender: TObject);
begin
  RefreshData('', Unassigned);
end;

procedure Tfrm31_EmisInfList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.Close;
  // Снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T028_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T028_INN');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T026_SEC_REGN');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T010_ISIN_TRANSL');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T030_RECORD_TYPE');

  // Ставим фильтры
  if cbIssuer.Checked then
    SetNumbFilter('T028_ID', lcbIssuers.KeyValue);
  if cbINN.Checked and (edINN.Text <> '') then
    SetStrFilter('T028_INN', edINN.Text);
  if cbSecType.Checked then
    SetNumbFilter('T027_ID', lcbSecType.KeyValue);
  if (cbCode.Checked and (edCode.Text <> '')) then
    SetStrFilter('T026_SEC_REGN', edCode.Text);
  if (cbISIN.Checked and (edISIN.Text <> '')) then
    SetStrFilter('T010_ISIN_TRANSL', edISIN.Text);
  // для SHS3 и SHS4 показываем/прячем доп.выпуски
  if cbSecType.Checked and ((lcbSecType.KeyValue = 3) or (lcbSecType.KeyValue = 4)) then
    if not cbEditions.Checked then
      SetNumbFilter('T030_RECORD_TYPE', 1);

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;

  CheckBlPipe;
end;

procedure Tfrm31_EmisInfList.lcIssuers1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    RefreshData('', Unassigned);
end;

procedure Tfrm31_EmisInfList.lcSecTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    RefreshData('', Unassigned);
end;

function Tfrm31_EmisInfList.getCheckedColor(AChecked: Boolean): TColor;
begin
  if AChecked then
    Result := clWindow
  else
    Result := clBtnFace;
end;

procedure Tfrm31_EmisInfList.chbIssuer1Click(Sender: TObject);
begin
  lcbIssuers.Enabled := cbIssuer.Checked;
  lcbIssuers.Color := getCheckedColor(cbIssuer.Checked);

  RefreshIssuers;
end;

procedure Tfrm31_EmisInfList.cbInnClick(Sender: TObject);
begin
  edINN.Enabled := cbINN.Checked;
  edINN.Color := getCheckedColor(cbINN.Checked);
end;

procedure Tfrm31_EmisInfList.cbSecTypeClick(Sender: TObject);
begin
  lcbSecType.Enabled := cbSecType.Checked;
  lcbSecType.Color := getCheckedColor(cbSecType.Checked);
  RefreshSecType;
  lcbSecTypeCloseUp(lcbSecType);
end;

procedure Tfrm31_EmisInfList.cbCodeClick(Sender: TObject);
begin
  edCode.Enabled := cbCode.Checked;
  edCode.Color := getCheckedColor(cbCode.Checked);
end;

procedure Tfrm31_EmisInfList.cbIsinClick(Sender: TObject);
begin
  edISIN.Enabled := cbISIN.Checked;
  edISIN.Color := getCheckedColor(cbISIN.Checked);
end;

procedure Tfrm31_EmisInfList.OnClearSelect;
begin
  // выбираем текущего эмитента
  oqClearSelect.SetVariable('i_id', odsList.FieldByName('T030_ID').AsFloat);
  oqClearSelect.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm31_EmisInfList.ClearSelect;
begin
    // выбираем запись
    OnClearSelect;
    // обновляем списки
    RefreshAfterListChange;
end;

procedure Tfrm31_EmisInfList.actClearSelectExecute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation('Эмиссия будет удалена из списка главных эмиссий. Продолжить?') then
    ClearSelect;
end;

procedure Tfrm31_EmisInfList.SpeedButton7Click(Sender: TObject);
begin
  RefreshAll;
end;

procedure Tfrm31_EmisInfList.odsListAfterScroll(DataSet: TDataSet);
begin
  CouponsEnabled := CanHaveCoupons(odsListT027_SEC_TYPE.AsString);
  oqMMCheck.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqMMCheck.Execute;
  MaturityMatrixExists := oqMMCheck.GetVariable('RESULT') = 1;
end;

procedure Tfrm31_EmisInfList.ToolButton10Click(Sender: TObject);
var
  Dlg: Tfrm31_CouponsRecalc;
  vCalcType: TCouponsCalcType;
  i: integer;
  VOldCursor: TCursor;
begin
  vCalcType := ctNone;
  Dlg := Tfrm31_CouponsRecalc.Create(Self);
  if Dlg.ShowModal = mrOk then
    begin
    if Dlg.rb1.Checked then
      vCalcType := ctOne
    else if Dlg.rb2.Checked then
      vCalcType := ctSelected
    else if Dlg.rb3.Checked then
      vCalcType := ctAll;
    end;
  Dlg.Free;

  if vCalcType = ctAll then
    RecalcCoupons(-1, twHideError)
  else if vCalcType = ctOne then
    RecalcCoupons(odsListT030_ID.AsFloat, twShowError)
  else if vCalcType = ctSelected then
    begin
    VOldCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    Application.ProcessMessages;
    try
      if xxxDBGrid.SelectedRows.Count = 0 then
	      RecalcCoupons(odsListT030_ID.AsFloat, twShowError)
      else
	      with xxxDBGrid.DataSource.DataSet do
	        for i := 0 to xxxDBGrid.SelectedRows.Count-1 do
	          begin
	          GotoBookmark(TBookmark(xxxDBGrid.SelectedRows.Items[i]));
	          RecalcCoupons(odsListT030_ID.AsFloat, twHideError);
	          end;
      finally
        Screen.Cursor:= VOldCursor;
      end;
    end;
end;

procedure Tfrm31_EmisInfList.RecalcCoupons(T030_ID: Double; NoWarn: TWarn);
var
  VOldCursor: TCursor;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  Application.ProcessMessages;
  try
    try
      oqRecalcCoupons.SetVariable('T030_ID', T030_ID);
      if NoWarn = twShowError then
        oqRecalcCoupons.SetVariable('NOWARN', 0)
      else
        oqRecalcCoupons.SetVariable('NOWARN', 1);
      dmMain.StartTransaction;
      oqRecalcCoupons.Execute;
      dmMain.Commit;
      if Assigned(frm34_CouponList) then
        frm34_CouponList.RefreshData('', Unassigned);
      if Assigned(frm103_NkdList) then
        frm103_NkdList.RefreshData('', Unassigned);
    except
      on E: Exception do
        begin
        dmMain.Rollback;
	TAppMessages.ShowError(E.Message);
        end;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm31_EmisInfList.FindAllIssEmiss(const AT028_ID: Double; const AT027_IDs: array of Double);
begin
  cbIssuer.Checked := True;
  lcbIssuers.KeyValue := AT028_ID;
  odsIssuers['T028_ID'] := lcbIssuers.KeyValue;

  if Length(AT027_IDs) = 1 then
    begin
    cbSecType.Checked := True;
    lcbSecType.KeyValue := AT027_IDs[0];
    odsSecType['T027_ID'] := lcbSecType.KeyValue;
    end
  else
    begin
    cbSecType.Checked := False;
    end;

  cbCode.Checked := False;
  edCode.Text := '';
  cbISIN.Checked := False;
  edISIN.Text := '';

  RefreshData('', Unassigned);
end;

function Tfrm31_EmisInfList.CanHaveCoupons(EmissionType: string): boolean;
begin
  Result := (EmissionType = 'BON1') or
	    (EmissionType = 'BON2') or
	    (EmissionType = 'BON3') or
	    (EmissionType = 'BON4') or
	    (EmissionType = 'BON5') or
	    (EmissionType = 'BON6') or
	    (EmissionType = 'BON7') or
	    (EmissionType = 'BON11') or
	    (EmissionType = 'TRS1') or
	    (EmissionType = 'TRS2');
end;

procedure Tfrm31_EmisInfList.actFilterByIssNameExecute(Sender: TObject);
begin
  RefreshIssuers;
end;

procedure Tfrm31_EmisInfList.edIssuerNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then actFilterByIssName.Execute;
end;

procedure Tfrm31_EmisInfList.odsListAfterInsert(DataSet: TDataSet);
begin
  odsListT030_TYPE.AsString := '-';
end;

procedure Tfrm31_EmisInfList.FindEmissByIssuer(const AT027_ID, AT028_ID: Double; AISIN, AINN: string; ASource: integer);
begin
  // снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  // устанавливаем фильтр по эмитенту
  cbIssuer.Checked := True;
  lcbIssuers.KeyValue := AT028_ID;;

  // фильтр по ИНН
  cbINN.Checked := False;
  edINN.Text := AINN;

  // устанавливаем фильтр по типу ц.б.
  cbSecType.Checked := True;
  lcbSecType.KeyValue := AT027_ID;

  // фильтр по рег номеру ц.б.
  cbCode.Checked := False;
  edCode.Text := '';

  // фильтр по ISIN
  cbIsin.Checked := False;
  edISIN.Text := AISIN;

  // Фильтр по типу ц.б. (Акции обыкновенные/акции привилегированные)
  if ASource = 3 then
    begin
    cbCode.Checked := True;
    edCode.Text := 'Акции обыкновенные';
    pc01.ActivePageIndex := 2; // размер эмиссии
    end
  else if ASource = 4 then
    begin
    cbCode.Checked := True;
    edCode.Text := 'Акции привилегированные';
    pc01.ActivePageIndex := 2; // размер эмиссии
    end;

  RefreshAfterListChange;
end;

procedure Tfrm31_EmisInfList.lcbSecTypeCloseUp(Sender: TObject);
begin
  if cbSecType.Checked and ((lcbSecType.KeyValue = '3') or (lcbSecType.KeyValue = '4')) then
    cbEditions.Enabled := True
  else
    cbEditions.Enabled := False;
end;

procedure Tfrm31_EmisInfList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VState: array [Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.FieldName = 'T031_AUTOLOAD') then
    begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    if odsListT030_RECORD_TYPE.AsFloat  = 1 then
      DrawFrameControl(
        xxxDBGrid.Canvas.Handle,
        VRect,
        DFC_BUTTON,
        DFCS_BUTTONCHECK or VState[odsListT031_AUTOLOAD.AsInteger = 1] or DFCS_FLAT
        );
   end;
end;

procedure Tfrm31_EmisInfList.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.FieldName  = 'T031_AUTOLOAD' then
    begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];

    if odsListT030_RECORD_TYPE.AsFloat = 1 then
      begin
      DataSet.Edit;
      if Column.Field.AsInteger = 0 then
        Column.Field.AsInteger := 1
      else
        Column.Field.AsInteger := 0;
      DataSet.Post;
      SetCheck;
      end;

//    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    end
  else
    begin
    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    inherited;
    end;
end;

procedure Tfrm31_EmisInfList.SetCheck;
begin
  // ставим/снимаем признак автозагрузки котировок
  oqSetCheck.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqSetCheck.SetVariable('T031_AUTOLOAD', odsListT031_AUTOLOAD.AsFloat);
  oqSetCheck.Execute;
///  RefreshData('T030_ID', odsListT030_ID.Value);
end;

procedure Tfrm31_EmisInfList.CheckBlPipe;
begin
  oqCheckBlPipe.Execute;
end;

procedure Tfrm31_EmisInfList.SendRequest(ISIN, Ticker, Exch_code: string;
  DateFrom, DateTo: TDate; AUser: string);
begin
  oqRequestRates.SetVariable('ISIN', ISIN);
  oqRequestRates.SetVariable('TICKER_IIP', Ticker);
  oqRequestRates.SetVariable('EXCH_CODE_IIP', Exch_code);
  oqRequestRates.SetVariable('DATE_FROM', Int(DateFrom));
  oqRequestRates.SetVariable('DATE_TO', Int(DateTo));
  oqRequestRates.SetVariable('USER', AUser);
  oqRequestRates.Execute;
end;

procedure Tfrm31_EmisInfList.actRatesLoadCurrentUpdate(Sender: TObject);
begin
  actRatesLoadCurrent.Enabled := not odsList.IsEmpty and (oqCheckBlPipe.Field('ACTIVE') = 'Y');
end;

procedure Tfrm31_EmisInfList.actRatesLoadCurrentExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    SendRequest(
      odsListT010_ISIN_TRANSL.AsString,
      odsListT167_NAME.AsString,
      odsListT167_EXCHANGE.AsString,
      vDlg.dtFrom.Date,
      vDlg.dtUpto.Date,
      dmMain.GetUser
      );
    end;

  vDlg.Free;
end;

procedure Tfrm31_EmisInfList.actRatesLoadSelectedUpdate(Sender: TObject);
begin
  actRatesLoadSelected.Enabled := (not odsList.IsEmpty) and (xxxDBGrid.SelectedRows.Count <> 0) and (oqCheckBlPipe.Field('ACTIVE') = 'Y');
end;

procedure Tfrm31_EmisInfList.actRatesLoadSelectedExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
  vCursor: TCursor;
  bm: TBookmark;
  i: integer;
  vUser: string;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    vCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    vUser := dmMain.GetUser;
    for i := 0 to xxxDBGrid.SelectedRows.Count -1 do
      begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      SendRequest(
        odsListT010_ISIN_TRANSL.AsString,
        odsListT167_NAME.AsString,
        odsListT167_EXCHANGE.AsString,
        vDlg.dtFrom.Date,
        vDlg.dtUpto.Date,
        vUser
        );
      end;
    xxxDBGrid.SelectedRows.Clear;
    odsList.GotoBookmark(bm);
    odsList.FreeBookmark(bm);
    odsList.EnableControls;
    Screen.Cursor:= vCursor;
    end;

  vDlg.Free;
end;

procedure Tfrm31_EmisInfList.actRatesLoadAllUpdate(Sender: TObject);
begin
  actRatesLoadAll.Enabled := (not odsList.IsEmpty) and (oqCheckBlPipe.Field('ACTIVE') = 'Y');
end;

procedure Tfrm31_EmisInfList.actRatesLoadAllExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
  vCursor: TCursor;
  bm: TBookmark;
  vUser: string;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    vCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    vUser := dmMain.GetUser;
    odsList.First;
    while not odsList.Eof do
      begin
      SendRequest(
        odsListT010_ISIN_TRANSL.AsString,
        odsListT167_NAME.AsString,
        odsListT167_EXCHANGE.AsString,
        vDlg.dtFrom.Date,
        vDlg.dtUpto.Date,
        vUser
        );
      odsList.Next;
      end;
    odsList.GotoBookmark(bm);
    odsList.FreeBookmark(bm);
    odsList.EnableControls;
    Screen.Cursor:= vCursor;
    end;

  vDlg.Free;
end;

end.
