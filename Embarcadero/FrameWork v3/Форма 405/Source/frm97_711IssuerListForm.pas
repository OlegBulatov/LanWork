unit frm97_711IssuerListForm;

interface

uses
  StdCtrls, ExtCtrls, Buttons, Forms, ActnList, frm04_ListForm,
  frm96_711LinksForm, fm01_PeriodFrame, fm41_SecTypeForLinksFrame, ComCtrls, Db,
  Oracle, fm14_711CodeFrame, fm04_LookUpFrame, untParams, frm00_ParentForm,
  frm94_EmitentLinkListForm, fm07_SelectParentFrame, fm02_PrmParentFrame,
  fm12_ListFrame, fm27_SecTypeFrame, OracleData, Menus, Classes,
  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, Variants,
  System.Actions;

type
  Tfrm97_711IssuerList = class(Tfrm04_List, TCalcStepPage)
    Panel1: TPanel;
    Tfm01_Period1: Tfm01_Period;
    chbPeriod: TCheckBox;
    actApplayFilter: TAction;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    fm27_SecType: Tfm41_SecTypeForLinks;
    tbLinkEmitent: TToolButton;
    ToolButton5: TToolButton;
    actLinkEmitent: TAction;
    oqLinkEmitent: TOracleQuery;
    odsListT055_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_ID_IS_MAIN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT064_COUNT: TFloatField;
    odsListT052_SUM: TFloatField;
    odsListT052_SUM_Y: TFloatField;
    odsListT052_SUM_N: TFloatField;
    chbRazdel: TCheckBox;
    chbTypes: TCheckBox;
    fm14_711Code1: Tfm14_711Code;
    fm04_LookUp1: Tfm04_LookUp;
    odsListT036_INCLUDE: TStringField;
    odsListT025_ID: TFloatField;
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure actApplayFilterExecute(Sender: TObject);
    procedure actLinkEmitentExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actLinkEmitentUpdate(Sender: TObject);
    procedure actAddAttributesExecute(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FKeyFields: string;
    FKeyValues: Variant;
    function GetT055_ID: Double;
    function GetT054_ID: Double;
    function GetT053_ID: Double;
    function GetFLAG_T055: Double;
    function GetFLAG_T054: Double;
    function GetFLAG_T053: Double;
    function GetT053_Name: String;
    function GetParentForm: Tfrm96_711Links;
    function GetT028_ID: Double;
    function GetT027_IDs: TFloatArray;

  protected
    FT028_ID: Double;
	  //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function EnableAction(Action: TAction): boolean; override;

    procedure OnEdit; override;

    function ChooseForm: Tfrm94_EmitentLinkList; virtual;
    function LinkEmitent: Boolean;

   //
    procedure DoRefresh(Sender: TObject);
  public
    { Public declarations }
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    property T055_ID: Double read GetT055_ID;
    property T054_ID: Double read GetT054_ID;
    property T053_ID: Double read GetT053_ID;
    property FLAG_T055: Double read GetFLAG_T055;
    property FLAG_T054: Double read GetFLAG_T054;
    property FLAG_T053: Double read GetFLAG_T053;

    property T053_Name: String read GetT053_Name;
    property T028_ID: Double read GetT028_ID;
    property T027_IDs: TFloatArray read GetT027_IDs;

    //
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant);  override;

  end;

var
  frm97_711IssuerList: Tfrm97_711IssuerList;

implementation

uses
  dm005_MainData, frm01_MainForm;

//untMessages, A00_MatrixConst, Matrix, , frm89_WaitForm, untTask,
//, frm94_EmitentLinkListForm

resourcestring
  SConfirmCalculation = 'Ѕудет начат расчет остатков дл€ выбранного квартала. ѕродолжить?';
  SConfirmCalculation2 = '¬ы действительно хотите пересчитать остатки заново?';

{$R *.DFM}

{ Tfrm81_RemainsPeriodList }

procedure Tfrm97_711IssuerList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  (*
	if needCalculate then
	  Applied := TAppMessages.ShowConfirmation(SConfirmCalculation)
  else
  	Applied := true;
  *)
end;

procedure Tfrm97_711IssuerList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm97_711IssuerList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm97_711IssuerList;
end;

class function Tfrm97_711IssuerList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm97_711IssuerList;
end;

function Tfrm97_711IssuerList.GetT055_ID: Double;
begin
  Result := odsListT055_ID.AsFloat;
end;

function Tfrm97_711IssuerList.GetT054_ID: Double;
begin
  Result := DataSet.GetVariable('T054_ID');
end;

function Tfrm97_711IssuerList.GetT053_ID: Double;
begin
  Result := DataSet.GetVariable('T053_ID');
end;

function Tfrm97_711IssuerList.GetFLAG_T055: Double;
begin
  Result := DataSet.GetVariable('FLAG_T055');
end;

function Tfrm97_711IssuerList.GetFLAG_T054: Double;
begin
  Result := DataSet.GetVariable('FLAG_T054');
end;

function Tfrm97_711IssuerList.GetFLAG_T053: Double;
begin
  Result := DataSet.GetVariable('FLAG_T053');
end;

class procedure Tfrm97_711IssuerList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm97_711IssuerList) := AForm;
end;

procedure Tfrm97_711IssuerList.RefreshAfterListChange;
begin
  RefreshData('T028_ID', odsList.FieldByName('T028_ID').AsFloat);
end;

procedure Tfrm97_711IssuerList.OnEdit;
begin

  GetParentForm.doNext;
end;

function Tfrm97_711IssuerList.GetParentForm: Tfrm96_711Links;
begin
  Result := Tfrm96_711Links(Tfrm96_711Links.Instance);
end;

function Tfrm97_711IssuerList.EnableAction(Action: TAction): boolean;
//var
//  VEnabled: Boolean;
begin
  // даем редактировать только рассчитанные
  result:= true;
  (*
  VEnabled := odsList.FieldByName('T094_STATE').AsString = 'P';

  if Action.Name = 'actEditAttributes' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end
  else result:= true;
  *)
end;

procedure Tfrm97_711IssuerList.actEditAttributesUpdate(
  Sender: TObject);
begin
  if dmMain.UseMatrix then
    actEditAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actEditAttributes)
  else
    actEditAttributes.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm97_711IssuerList.actApplayFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm97_711IssuerList.FormShow(Sender: TObject);
begin
  if Tfm01_Period1.odsPeriod.Active then Exit;
  Tfm01_Period1.Init;

  if fm04_LookUp1.odsList.Active then exit;
  fm04_LookUp1.odsList.Close;
  fm04_LookUp1.odsList.Open;
  fm04_LookUp1.Lookup01.KeyValue := 31;

  if fm14_711Code1.odsSelect.active then exit;
  fm14_711Code1.odsSelect.Close;
  fm14_711Code1.odsSelect.Open;
  fm14_711Code1.lcbSelect.KeyValue := 1;

  inherited;
end;

procedure Tfrm97_711IssuerList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
//var
//  VDelay: Integer;
//  VValue: string;
begin
  FKeyFields := KeyFields;
  FKeyValues := KeyValues;

  (*
  VValue := dmMain.GetSetting('ttRef92');
  if VValue <> '' then VDelay := StrToInt(VValue);
  if VDelay = 0 then VDelay := 5 * 1000;

  // обновл€ем данные
  Tfrm89_Wait.ExecProc(ttRef92, DoRefresh, True, VDelay);

  dmMain.SetSetting('ttRef92', IntToStr(VDelay));
  *)

  DoRefresh(nil);
end;

function Tfrm97_711IssuerList.GetT028_ID: Double;
begin
  Result := odsListT028_ID.AsFloat;
end;

function Tfrm97_711IssuerList.GetT027_IDs: TFloatArray;
begin
  fm27_SecType.GetParamsValues;
  Result := untParams.TFloatArray(fm27_SecType.Param.AsFloatArray);
end;

procedure Tfrm97_711IssuerList.DoRefresh(Sender: TObject);
//var
//  VDelay: Integer;
begin

  // снимаем фильтры по полю тип ц.б.
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  // получаем список ценных бумаг
  fm27_SecType.GetParamsValues;

  {
  // снимаем фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T054_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T053_TYPE');
  }

  // обновл€ем данные
  DataSet.Close;

  if chbPeriod.checked then
  begin
    DataSet.SetVariable('FLAG_T055', 1);
    DataSet.SetVariable('T055_ID', Tfm01_Period1.KeyValue);
  end else
  begin
    DataSet.SetVariable('FLAG_T055', 0);
  end;

  if chbRazdel.checked then
  begin
    DataSet.SetVariable('FLAG_T054', 1);
    DataSet.SetVariable('T054_ID', fm04_LookUp1.lookup01.KeyValue);
  end else
  begin
    DataSet.SetVariable('FLAG_T054', 0);
  end;

  if chbTypes.checked then
  begin
    DataSet.SetVariable('FLAG_T053', 1);
    DataSet.SetVariable('T053_ID', fm14_711Code1.lcbSelect.KeyValue);
  end else
  begin
    DataSet.SetVariable('FLAG_T053', 0);
  end;

    // устанавливаем фильтр
  Set24Filter('T027_ID', untParams.TFloatArray(fm27_SecType.Param.AsFloatArray));

  DataSet.Open;
  if FKeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(FKeyFields, FKeyValues, [])
  end;
end;

procedure Tfrm97_711IssuerList.actEditAttributesExecute(Sender: TObject);
begin
    ///
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  // получаем список ценных бумаг
  fm27_SecType.GetParamsValues;

  // устанавливаем фильтр
  Set24Filter('T027_ID', untParams.TFloatArray(fm27_SecType.Param.AsFloatArray));
  
  if odsListT028_ID_IS_MAIN.AsString = 'ƒа' then
  begin
    frm01_Main.FindMainIssuer_711_32_InPer(
    odsListT028_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID,
    untParams.TFloatArray(fm27_SecType.Param.AsFloatArray)
    );
  end else
  begin
    frm01_Main.FindIssuer_711_32_InPer(
    odsListT028_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID,
    untParams.TFloatArray(fm27_SecType.Param.AsFloatArray)
    );
  end;
end;

procedure Tfrm97_711IssuerList.FormCreate(Sender: TObject);
begin
  inherited;

  fm27_SecType.SetParamsValues;
end;

procedure Tfrm97_711IssuerList.actLinkEmitentExecute(Sender: TObject);
begin
  ChooseForm.INN := odsListT028_INN.AsString;
  ChooseForm.OnSelect := LinkEmitent;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal
end;

function Tfrm97_711IssuerList.ChooseForm: Tfrm94_EmitentLinkList;
begin
  result := Tfrm94_EmitentLinkList.instance;
end;

function Tfrm97_711IssuerList.LinkEmitent: Boolean;
begin
  // переносим запись
  oqLinkEmitent.SetVariable('i_id', odsListT028_ID.AsFloat);
  oqLinkEmitent.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLinkEmitent.Execute;

  RefreshData('T028_ID', ChooseForm.SelectedID);

  Result := True;
end;

procedure Tfrm97_711IssuerList.actLinkEmitentUpdate(Sender: TObject);
begin
  actLinkEmitent.Enabled :=  odsListT028_ID_IS_MAIN.AsString = 'Ќет';
end;

procedure Tfrm97_711IssuerList.actAddAttributesExecute(Sender: TObject);
begin
  ///
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  // получаем список ценных бумаг
  fm27_SecType.GetParamsValues;
  // устанавливаем фильтр
  Set24Filter('T027_ID', fm27_SecType.Param.AsFloatArray);
  
  if odsListT028_ID_IS_MAIN.AsString = 'ƒа' then
  begin
    frm01_Main.FindMainIssuer_711_31_InPer(
    odsListT028_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID,
    fm27_SecType.Param.AsFloatArray
    );
  end else
  begin
    frm01_Main.FindIssuer_711_31_InPer(
    odsListT028_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID,
    fm27_SecType.Param.AsFloatArray
    );
  end;
end;

procedure Tfrm97_711IssuerList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := not DataSet.IsEmpty;
end;

function Tfrm97_711IssuerList.GetT053_Name: String;
begin
 if chbTypes.checked then
 begin
  result := fm14_711Code1.odsSelect.FieldByName('T053_NAME').asString;
 end else
 begin
  result := '-1';
 end;
end;

end.
