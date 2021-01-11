unit frm83_RemainsNotLinkedForm;

interface

uses
  frm04_ListForm, frm80_CalcRemainsForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm,
  frm00_ParentForm;

type
  Tfrm83_RemainsNotLinked = class(Tfrm04_List, TCalcStepPage)
    odsListT028_SHOT_NAME: TStringField;
    odsListBANK_NAME: TStringField;
    odsListPREV_USD_SUM_REMAIN: TFloatField;
    odsListUSD_SUM_SALDO: TFloatField;
    odsListUSD_SUM_REMAIN: TFloatField;
    odsListUSD_SUM_PEREOC: TFloatField;
    odsListPREV_COUNT_REMAIN: TFloatField;
    odsListCOUNT_SALDO: TFloatField;
    odsListCOUNT_REMAIN: TFloatField;
    oqSetPeriod: TOracleQuery;
    oqCalc: TOracleQuery;
    odsListT028_ID: TFloatField;
    odsListT096_BANK_CODE: TStringField;
    odsListT030_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListPREV_USD_SUM_EDIT_REMAIN: TFloatField;
    odsListUSD_BUM_PEREOC: TFloatField;
    odsListUSD_ALL_PEREOC: TFloatField;
    odsListPREV_RUB_SUM_REMAIN: TFloatField;
    odsListRUB_SUM_SALDO: TFloatField;
    odsListRUB_SUM_REMAIN: TFloatField;
    odsListMATUR_COUNT: TFloatField;
    odsListMATUR_RUB_SUM: TFloatField;
    odsListMATUR_USD_SUM: TFloatField;
    odsListOTHER_COUNT: TFloatField;
    odsListOTHER_RUB_SUM: TFloatField;
    odsListOTHER_USD_SUM: TFloatField;
    odsListT096_MATURITY_DATE: TDateTimeField;
    odsListOTHER_SALDO_CNT: TFloatField;
    odsListOTHER_SALDO_RUB: TFloatField;
    odsListOTHER_SALDO_USD: TFloatField;
    odsListSALDO_ALL_CNT: TFloatField;
    odsListSALDO_ALL_RUB: TFloatField;
    odsListSALDO_ALL_USD: TFloatField;
    odsListT028_INN: TStringField;
    procedure actDeleteAttributesExecute(Sender: TObject);
  private
    needCalculate: boolean;
    FT030_ID: Double;
  protected
    procedure DoEdit; override;
    procedure WriteLogOnEdit; override;
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
  end;

var
  frm83_RemainsNotLinked: Tfrm83_RemainsNotLinked;

implementation

uses
  untProgressThreads, dm005_MainData, frm01_MainForm, Matrix, A00_MatrixConst,
  frm83_RemainsNotLinkedEditForm;

{$R *.DFM}

{ Tfrm83_RemainsNotLinked }

class function Tfrm83_RemainsNotLinked.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsNotLinked;
end;

class function Tfrm83_RemainsNotLinked.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsNotLinked;
end;

class procedure Tfrm83_RemainsNotLinked.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsNotLinked) := AForm;
end;

procedure Tfrm83_RemainsNotLinked.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm83_RemainsNotLinked.DoOnShowPage(const AMainForm: TForm);
var VThread: TRemainsCalcThread;
begin
  // запускаем расчет
  needCalculate := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).needCalculate;
  if needCalculate then
  begin
{	  oqCalc.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  	oqCalc.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
	  oqCalc.Execute;}
    
    VThread := TRemainsCalcThread(TRemainsCalcThread.Init);
    VThread.T027_ID := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID;
    VThread.T055_ID := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID;
    try
      VThread.Run;
    finally
      VThread.Free;
    end;

    if dmMain.UseMatrix then
    begin
      Matrix.MA.WriteToLog2(CALC_REMAINS, true, '');
    end;
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).RefreshPeriodList;
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).needCalculate := false;
  end;

  oqSetPeriod.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqSetPeriod.Execute;

  // смотрим данные
  RefreshAfterListChange;
end;

procedure Tfrm83_RemainsNotLinked.RefreshData(const KeyFields: string;
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

procedure Tfrm83_RemainsNotLinked.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqUpdate.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  //oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T096_BANK_CODE', odsList['T096_BANK_CODE']);
  oqUpdate.SetVariable('COUNT_REMAIN', odsList['PREV_COUNT_REMAIN']);
  oqUpdate.SetVariable('USD_SUM_REMAIN', odsList['PREV_USD_SUM_EDIT_REMAIN']);
  oqUpdate.Execute;

  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm83_RemainsNotLinked.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_REMAIN, true, '');
end;

function Tfrm83_RemainsNotLinked.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm83_RemainsNotLinkedEdit.Instance;
end;

procedure Tfrm83_RemainsNotLinked.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

function Tfrm83_RemainsNotLinked.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN, FALSE)
  end else Result := true;
end;

procedure Tfrm83_RemainsNotLinked.actDeleteAttributesExecute(
  Sender: TObject);
begin
  frm01_Main.FindAllEmissInQuartal(
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID1,
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID2,
    odsListT030_ID.AsFloat
    );
end;

end.
