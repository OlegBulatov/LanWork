unit frm76_CalcQuotMItemsForm;

interface

uses
  frm04_ListForm, Db, StdCtrls, Oracle, OracleData, Menus, Classes,
  ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Graphics, frm04_EditForm,
  frm00_ParentForm, System.Actions;
//  Windows, Messages, Dialogs,

type
  Tfrm76_CalcQuotMItems = class(Tfrm04_List)
    odsListT083_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT083_STATE: TStringField;
    odsListT083_STATE_DESC: TStringField;
    odsListT055_END_DATE: TDateTimeField;
    odsListT083_CALC_DATE: TDateTimeField;
    odsListT083_CHANGE_DATE: TDateTimeField;
    oqCalc: TOracleQuery;
    actCalc: TAction;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    odsMMVB: TOracleDataSet;
    odsMMVBMIN_DATE: TDateTimeField;
    odsMMVBMAX_DATE: TDateTimeField;
    Label2: TLabel;
    odsReuters: TOracleDataSet;
    odsReutersMIN_DATE: TDateTimeField;
    odsReutersMAX_DATE: TDateTimeField;
    Label3: TLabel;
    odsRTS: TOracleDataSet;
    odsRTSMIN_DATE: TDateTimeField;
    odsRTSMAX_DATE: TDateTimeField;
    odsListT083_COMMENT: TStringField;
    odsListT121_NKD: TFloatField;
    odsListT083_RATE_VALUE: TFloatField;
    odsListT083_FULL_RATE: TFloatField;
    Label4: TLabel;
    odsGko: TOracleDataSet;
    odsGkoMIN_DATE: TDateTimeField;
    odsGkoMAX_DATE: TDateTimeField;
    procedure actCalcExecute(Sender: TObject);
    procedure actCalcUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure odsReutersAfterOpen(DataSet: TDataSet);
    procedure odsMMVBAfterOpen(DataSet: TDataSet);
    procedure odsRTSAfterOpen(DataSet: TDataSet);
    procedure odsGkoAfterOpen(DataSet: TDataSet);
  private
    FT083_ID: Double;
    procedure DoCalc;
  protected
    function GetRowFontColor: TColor; override;
    procedure DoEdit; override;
    procedure WriteLogOnEdit; override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EditForm2: Tfrm04_Edit;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    class function Instance: Tfrm76_CalcQuotMItems;
    procedure RefreshAfterListChange; override;
  end;

var
  frm76_CalcQuotMItems: Tfrm76_CalcQuotMItems;

implementation

uses
  SysUtils, dm005_MainData, Matrix, A00_MatrixConst, frm76_CalcQuotMEdit2Form,
  frm76_CalcQuotMEditForm, frm76_CalcQuotListForm, untMessages;

{$R *.DFM}

{ Tfrm76_CalcQuotMItems }

class function Tfrm76_CalcQuotMItems.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm76_CalcQuotMItems;
end;

class function Tfrm76_CalcQuotMItems.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm76_CalcQuotMItems;
end;

class function Tfrm76_CalcQuotMItems.Instance: Tfrm76_CalcQuotMItems;
begin
  Result := Tfrm76_CalcQuotMItems(inherited Instance);
end;

class procedure Tfrm76_CalcQuotMItems.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm76_CalcQuotMItems) := AForm;
end;

procedure Tfrm76_CalcQuotMItems.DoEdit;
begin
  oqUpdate.SetVariable('I_T083_ID', odsList['T083_ID']);
  oqUpdate.SetVariable('I_T083_VALUE', odsList['T083_RATE_VALUE']);
  oqUpdate.Execute;
  FT083_ID := odsList['T083_ID'];
end;

procedure Tfrm76_CalcQuotMItems.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_RATE, true, '');
end;

function Tfrm76_CalcQuotMItems.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm76_CalcQuotMEdit2.Instance;
end;

function Tfrm76_CalcQuotMItems.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actEditAttributes' then
  begin
    result:= Matrix.MA.IsOperationPermitted(CHANGE_RATE, FALSE)
  end else
  if Action.Name = 'actCalc' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CALC_QUOTATION, FALSE)
  end else result:= true;
end;

procedure Tfrm76_CalcQuotMItems.RefreshAfterListChange;
begin
  RefreshData('T083_ID', FT083_ID);
end;

procedure Tfrm76_CalcQuotMItems.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
var
  VYear, VMonth, VDay: Word;
begin
  // обновляем данные
  DataSet.Close;
  DataSet.Open;

  if KeyFields = '' then
    begin
    DecodeDate(Now, VYear, VMonth, VDay);
    DataSet.Locate('T055_LONG_NAME',  IntToStr(VYear), [loPartialKey	]);
    end
  else
    begin
    DataSet.Locate(KeyFields, KeyValues, [])
    end;
end;

function Tfrm76_CalcQuotMItems.GetRowFontColor: TColor;
begin
  if ((odsListT083_STATE.AsString = 'A') or (odsListT083_STATE.AsString = 'H')) then
    Result := inherited GetRowFontColor
  else if odsListT083_STATE.AsString = 'B' then
    Result := clMaroon
  else
    Result := clRed;
end;

procedure Tfrm76_CalcQuotMItems.actCalcExecute(Sender: TObject);
var
  i: Integer;
begin
  if EditForm2 = nil then Exit;

  // отображаем форму
  with Tfrm76_CalcQuotMEdit(EditForm2) do
    begin
    T030_ID := frm76_CalcQuotList.odsList.FieldByName('T030_ID').AsFloat;
    T083_ID := odsList.FieldByName('T083_ID').AsFloat;
    T027_ID := frm76_CalcQuotList.odsList.FieldByName('T027_ID').AsFloat;
    if ShowModal = mrOk then
      begin
//      FT083_ID := odsList['T083_ID'];
      if Tfrm76_CalcQuotMEdit(EditForm2).rbCalcAll.Checked = TRUE then
      	begin
      	// перерасчет всех котировок
      	oqCalc.SetVariable('I_T030_ID', -1);
      	oqCalc.SetVariable('I_T055_END_DATE_S', Tfrm76_CalcQuotMEdit(EditForm2).lcb01.ListSource.DataSet.FieldByName('T055_END_DATE').AsDateTime);
      	oqCalc.SetVariable('I_T055_END_DATE_E', Tfrm76_CalcQuotMEdit(EditForm2).lcb02.ListSource.DataSet.FieldByName('T055_END_DATE').AsDateTime);
        DoCalc;
      	end
      else
      	begin
      	// Перерасчет котировок только выбранных в верхней форме бумаг
    	  if frm76_CalcQuotList.xxxDBGrid.SelectedRows.Count = 0 then
     	    frm76_CalcQuotList.xxxDBGrid.SelectedRows.CurrentRowSelected := True;

     	  for i := 0 to frm76_CalcQuotList.xxxDBGrid.SelectedRows.Count - 1 do
     	    begin
     	    frm76_CalcQuotList.odsList.GotoBookmark(frm76_CalcQuotList.xxxDBGrid.SelectedRows.Items[i]);
      	  oqCalc.SetVariable('I_T030_ID', frm76_CalcQuotList.odsList['T030_ID']);
      	  oqCalc.SetVariable('I_T055_END_DATE_S', Tfrm76_CalcQuotMEdit(EditForm2).lcb01.ListSource.DataSet.FieldByName('T055_END_DATE').AsDateTime);
      	  oqCalc.SetVariable('I_T055_END_DATE_E', Tfrm76_CalcQuotMEdit(EditForm2).lcb02.ListSource.DataSet.FieldByName('T055_END_DATE').AsDateTime);
      	  DoCalc;
      	  end;

   	    frm76_CalcQuotList.xxxDBGrid.SelectedRows.Clear;
      	end;
      if dmMain.UseMatrix then
      	begin
      	Matrix.MA.WriteToLog2(CALC_QUOTATION, true, '');
      	end;

      RefreshAfterListChange;
      end;
    end;
end;

function Tfrm76_CalcQuotMItems.EditForm2: Tfrm04_Edit;
begin
  Result := Tfrm76_CalcQuotMEdit.Instance;
end;

procedure Tfrm76_CalcQuotMItems.actCalcUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    begin
//    if frm76_CalcQuotList.odsList.FieldByName('T027_ID').AsFloat = 5 then
      actCalc.Enabled := EnableAction(actCalc);
//    else
//      actCalc.Enabled := not DataSet.IsEmpty and EnableAction(actCalc);
    end
  else
    begin
//    if frm76_CalcQuotList.odsList.FieldByName('T027_ID').AsFloat = 5 then
      actCalc.Enabled := TRUE;
//    else
//      actCalc.Enabled := not DataSet.IsEmpty;
    end;
end;

procedure Tfrm76_CalcQuotMItems.FormShow(Sender: TObject);
begin
  inherited;

  if odsGKO.Active then odsGKO.Close;
  odsGKO.Master := frm76_CalcQuotList.odsList;
  odsGKO.MasterFields := 'T030_ID';
  odsGKO.Open;

  if odsReuters.Active then
    odsReuters.Close;
  odsReuters.Master := frm76_CalcQuotList.odsList;
  odsReuters.MasterFields := 'T030_ID';
  odsReuters.Open;

  if odsMMVB.Active then
    odsMMVB.Close;
  odsMMVB.Master := frm76_CalcQuotList.odsList;
  odsMMVB.MasterFields := 'T030_ID';
  odsMMVB.Open;

  if odsRTS.Active then
    odsRTS.Close;
  odsRTS.Master := frm76_CalcQuotList.odsList;
  odsRTS.MasterFields := 'T030_ID';
  odsRTS.Open;

end;

procedure Tfrm76_CalcQuotMItems.odsReutersAfterOpen(DataSet: TDataSet);
begin
  if odsReuters.IsEmpty then
    Label2.Caption := 'Данные Reuters отсутствуют'
  else
    Label2.Caption := 'Данные Reuters с '+odsReutersMIN_DATE.AsString+' по '+odsReutersMAX_DATE.AsString;
end;

procedure Tfrm76_CalcQuotMItems.odsMMVBAfterOpen(DataSet: TDataSet);
begin
  if odsMMVB.IsEmpty then
    Label1.Caption := 'Данные ММВБ отсутствуют'
  else
    Label1.Caption := 'Данные ММВБ с '+odsMMVBMIN_DATE.AsString+' по '+odsMMVBMAX_DATE.AsString;
end;

procedure Tfrm76_CalcQuotMItems.odsRTSAfterOpen(DataSet: TDataSet);
begin
  if odsRTS.IsEmpty then
    Label3.Caption := 'Данные РТС отсутствуют'
  else
    Label3.Caption := 'Данные РТС с '+odsRTSMIN_DATE.AsString+' по '+odsRTSMAX_DATE.AsString;
end;

procedure Tfrm76_CalcQuotMItems.DoCalc;
var
  VOldCursor: TCursor;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;

//        ShowMessage(string(oqCalc.GetVariable('I_T030_ID')) + ' ' +
//                    string(oqCalc.GetVariable('I_T055_END_DATE_S')) + ' ' +
//                    string(oqCalc.GetVariable('I_T055_END_DATE_E')));


  odsList.Close;
  Application.ProcessMessages;
  try
    try
      dmMain.StartTransaction;
      oqCalc.Execute;
      dmMain.Commit;
    except
      on E: Exception do
	begin
	dmMain.Rollback;
	TAppMessages.ShowError(E.Message);
	end;
    end;
  finally
    odsList.Open;
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm76_CalcQuotMItems.odsGkoAfterOpen(DataSet: TDataSet);
begin
  if odsGKO.IsEmpty then
    Label4.Caption := 'Данные ГКО-ОФЗ отсутствуют'
  else
    Label4.Caption := 'Данные ГКО-ОФЗ с ' + odsGkoMIN_DATE.AsString + ' по ' + odsGkoMAX_DATE.AsString;
end;

end.
