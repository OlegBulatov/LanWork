unit frm82_RemainsPeriodListForm;

interface

uses
  frm04_ListForm, frm80_CalcRemainsForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;

type
  Tfrm82_RemainsPeriodList = class(Tfrm04_List, TCalcStepPage)
    odsListT094_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_END_DATE: TDateTimeField;
    odsListT055_NAME: TStringField;
    odsListT094_CALC_DATE: TDateTimeField;
    odsListT094_STATE: TStringField;
    odsListT094_STATE_DESC: TStringField;
    odsListT027_ID: TFloatField;
    oqGetMonths: TOracleQuery;
    odsPeriod: TOracleDataSet;
    odsPeriodT055_ID: TFloatField;
    odsPeriodT055_NAME: TStringField;
    dsPeriod: TDataSource;
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure dsListDataChange(Sender: TObject; Field: TField);
  private
    FT055_ID1: Double;
    FT055_ID2: Double;
    FNeedCalculate: boolean;
    FNeedRecalc: boolean;
    function GetT055_ID: Double;
    function GetT094_ID: Double;
    function GetParentForm: Tfrm80_CalcRemains;
    function GetPERIOD_NAME: String;
  protected
	  //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function EnableAction(Action: TAction): boolean; override;

    procedure OnEdit; override;
    function GetNeedCalculate: boolean;
    procedure SetNeedCalculate(needCalculate: boolean);
  public
    { Public declarations }
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    property T055_ID: Double read GetT055_ID;
    property T094_ID: Double read GetT094_ID;
    property needCalculate: boolean read GetNeedCalculate write SetNeedCalculate;
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    property T055_ID1: Double read FT055_ID1;
    property T055_ID2: Double read FT055_ID2;
    property PERIOD_NAME: String read GetPERIOD_NAME;
  end;

var
  frm82_RemainsPeriodList: Tfrm82_RemainsPeriodList;

implementation

uses dm005_MainData, Matrix, A00_MatrixConst;

//uses untMessages,

{$R *.DFM}

{ Tfrm81_RemainsPeriodList }

procedure Tfrm82_RemainsPeriodList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := true;

  // если квартал не рассчитан или мы хотим его пересчитать
  if (odsList.FieldByName('T094_STATE').AsString = 'N') or FNeedRecalc then
  begin
    FNeedRecalc := false;
    needCalculate := true;

    // проверяем права
    if dmMain.UseMatrix then
    begin
      if not Matrix.MA.IsOperationPermitted(CALC_REMAINS, FALSE) then
    	begin
        // нет доступа в Mаtrix
        needCalculate := false;
    	end;
    end;
  end;

  Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).SetStep2Desc(PERIOD_NAME);

  frm80_CalcRemains.T055_ID_Selected := frm80_CalcRemains.T055_ID;

  odsPeriod.Close;
  odsPeriod.SetVariable('T027_ID', frm80_CalcRemains.T027_ID);
  odsPeriod.SetVariable('T055_ID', frm80_CalcRemains.T055_ID);
  odsPeriod.Open;
end;

procedure Tfrm82_RemainsPeriodList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm82_RemainsPeriodList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm82_RemainsPeriodList;
end;

class function Tfrm82_RemainsPeriodList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm82_RemainsPeriodList;
end;

function Tfrm82_RemainsPeriodList.GetT055_ID: Double;
begin
  Result := odsList.FieldByName('T055_ID').AsFloat;
end;

function Tfrm82_RemainsPeriodList.GetT094_ID: Double;
begin
  Result := odsList.FieldByName('T094_ID').AsFloat;
end;

function Tfrm82_RemainsPeriodList.GetNeedCalculate: boolean;
begin
	Result := FNeedCalculate;

{	if not FNeedCalculate then
	  Result := odsList.FieldByName('T094_STATE').AsString = 'N'
  else begin
		Result := true;
  end;}
end;

class procedure Tfrm82_RemainsPeriodList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm82_RemainsPeriodList) := AForm;
end;

procedure Tfrm82_RemainsPeriodList.RefreshAfterListChange;
begin
  RefreshData('T094_ID', odsList.FieldByName('T094_ID').AsFloat);
end;

procedure Tfrm82_RemainsPeriodList.OnEdit;
begin
  FNeedRecalc := true;
  GetParentForm.doNext;
end;

function Tfrm82_RemainsPeriodList.GetParentForm: Tfrm80_CalcRemains;
begin
  Result := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance);
end;

procedure Tfrm82_RemainsPeriodList.SetNeedCalculate(
  needCalculate: boolean);
begin
  FNeedCalculate := needCalculate;
end;

function Tfrm82_RemainsPeriodList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
    begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
    end
  else
    result:= true;
end;

procedure Tfrm82_RemainsPeriodList.actEditAttributesUpdate(
  Sender: TObject);
var
  VEnabled: Boolean;
begin
  // даем редактировать только рассчитанные
  VEnabled := odsList.FieldByName('T094_STATE').AsString = 'P';

  if dmMain.UseMatrix then
    actEditAttributes.Enabled := not DataSet.IsEmpty and VEnabled and EnableAction(actEditAttributes)
  else
    actEditAttributes.Enabled := not DataSet.IsEmpty and VEnabled;

  frm80_CalcRemains.btnDefaults.Enabled := VEnabled;
end;

procedure Tfrm82_RemainsPeriodList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm82_RemainsPeriodList.dsListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  oqGetMonths.SetVariable('T055_ID', T055_ID);
  oqGetMonths.Execute;
  FT055_ID1 := oqGetMonths.GetVariable('T055_ID1');
  FT055_ID2 := oqGetMonths.GetVariable('T055_ID2');
end;

function Tfrm82_RemainsPeriodList.GetPERIOD_NAME: String;
begin
  Result := odsList.FieldByName('T055_NAME').AsString;
end;

end.
