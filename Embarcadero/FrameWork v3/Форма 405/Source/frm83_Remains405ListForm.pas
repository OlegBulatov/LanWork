unit frm83_Remains405ListForm;

interface

uses
  frm04_ListForm, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, Db, frm00_ParentForm;
//  Messages, SysUtils, Graphics, Dialogs,
//  frm05_SumListForm, DBCtrls,
//  fm04_PrmKOFrame, fm01_PeriodFrame, Mask,
//  ;

type
  Tfrm83_Remains405List = class(Tfrm04_List)
    odsListT002_ID: TFloatField;
    odsListT001_PART_ID: TFloatField;
    odsListT005_DISPLAY_NAME: TStringField;
    odsListT055_ID: TFloatField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_BANK_NAME: TStringField;
    odsListT002_REPORT_DATE: TDateTimeField;
    odsListT002_NUMB_IN_YEA: TStringField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT002_KP_ID: TIntegerField;
    odsListT001_ID: TFloatField;
    odsListT001_ROW_PREFIX: TIntegerField;
    odsListT001_ROW_NUM: TIntegerField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT001_YEAR_OP: TStringField;
    odsListT001_OP_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_PAY_ID: TFloatField;
    odsListT006_NAME: TStringField;
    odsListT006_DIRECTION: TIntegerField;
    odsListT006_DIRECTION_DESC: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT001_OP_CR_DESC: TStringField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT001_MOD_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_PROC_CROSS: TFloatField;
    odsListT001_OP_MODIF: TFloatField;
    odsListT001_OP_SUM_RUB: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT001_REMAINS_TYPE: TIntegerField;
    actSetMainType: TAction;
    actSetOthType: TAction;
    oqFlag: TOracleQuery;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    odsListIS_FIRST: TStringField;
    odsListT001_ROW_PRFX: TStringField;
    procedure actSetMainTypeExecute(Sender: TObject);
    procedure actSetMainTypeUpdate(Sender: TObject);
    procedure actSetOthTypeExecute(Sender: TObject);
    procedure actSetOthTypeUpdate(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
  private
    { Private declarations }
    FT001_ID: Double;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function EnableAction(Action: TAction): boolean; override;
    //
    procedure DoEdit; override;
    //
    procedure WriteLogOnEdit(); override;
  public
    { Public declarations }
    class function Instance: Tfrm83_Remains405List;
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant);  override;
  end;

var
  frm83_Remains405List: Tfrm83_Remains405List;

implementation

uses
  dm005_MainData, Matrix, A00_MatrixConst, frm80_CalcRemainsForm, untMessages,
  frm04_EditForm, frm83_RemainsListForm;

resourcestring
  CONFIRM_OPER_MAIN = 'Отнесение операции к первичному рынку приведёт к пересчёту данной эмиссии при переходе с шага "Назад/Далее". Продолжить?';
  CONFIRM_OPER_OTHER = 'Отнесение операции к вторичному рынку приведёт к пересчёту данной эмиссии при переходе с шага "Назад/Далее". Продолжить?';
//  CONFIRM_OPER_MAIN = 'Перевод операции в основные приведет у пересчету остатков по выбранной эмиссии. Продолжить?';
//  CONFIRM_OPER_OTHER = 'Перевод операции в прочие приведет у пересчету остатков по выбранной эмиссии. Продолжить?';

{$R *.DFM}

procedure Tfrm83_Remains405List.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_REMAIN_711, true, '');
end;

procedure Tfrm83_Remains405List.DoEdit;
begin
  oqFlag.SetVariable('T001_ID', odsList['T001_ID']);
  oqFlag.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqFlag.SetVariable('T030_ID', odsList['T030_PARENT_ID']);
  oqFlag.SetVariable('T001_REMAINS_TYPE', odsList['T001_REMAINS_TYPE']);
  oqFlag.SetVariable('IS_FIRST', odsList['IS_FIRST']);
  oqFlag.Execute;
  FT001_ID := odsList['T001_ID'];
end;

class function Tfrm83_Remains405List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_Remains405List;
end;

class function Tfrm83_Remains405List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_Remains405List;
end;

class procedure Tfrm83_Remains405List.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_Remains405List) := AForm;
end;

class function Tfrm83_Remains405List.Instance: Tfrm83_Remains405List;
begin
  Result := Tfrm83_Remains405List(inherited Instance);
end;

procedure Tfrm83_Remains405List.actSetMainTypeExecute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation(CONFIRM_OPER_MAIN) then
    begin
    DataSet.Edit;
    EditType := etEdit;
    odsList['T001_REMAINS_TYPE'] := 0;
    SaveChange;
    end;
end;

procedure Tfrm83_Remains405List.actSetMainTypeUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetMainType.Enabled := not DataSet.IsEmpty and EnableAction(actSetMainType)
  else
    actSetMainType.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm83_Remains405List.xxxDBGridCellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'IS_FIRST') then
  begin

    if Column.Field.AsString = 'Y' then
    begin
      if TAppMessages.ShowConfirmation(CONFIRM_OPER_OTHER) then
      begin
        DataSet.Edit;
        Column.Field.AsString := 'N';
        EditType := etEdit;
        SaveChange;
      end
    end
    else
    begin
      if TAppMessages.ShowConfirmation(CONFIRM_OPER_MAIN) then
      begin
        DataSet.Edit;
        Column.Field.AsString := 'Y';
        EditType := etEdit;
        SaveChange;
      end
    end;

  end;

end;

procedure Tfrm83_Remains405List.actSetOthTypeExecute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation(CONFIRM_OPER_MAIN) then
  begin
    DataSet.Edit;
    EditType := etEdit;
    odsList['T001_REMAINS_TYPE'] := 1;
    SaveChange;
  end;
end;

procedure Tfrm83_Remains405List.actSetOthTypeUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetOthType.Enabled := not DataSet.IsEmpty and EnableAction(actSetOthType)
  else
    actSetOthType.Enabled := not DataSet.IsEmpty;
end;

function Tfrm83_Remains405List.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actSetMainType' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN_711, FALSE)
  end else
  if Action.Name = 'actSetOthType' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN_711, FALSE)
  end else Result := true;
end;

procedure Tfrm83_Remains405List.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T030_ID', frm83_RemainsList.T030_ID);
  DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm83_Remains405List.RefreshAfterListChange;
begin
  RefreshData('T001_ID', FT001_ID);
end;

procedure Tfrm83_Remains405List.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.Field.FieldName = 'T001_REMAINS_TYPE') or (Column.Field.FieldName = 'IS_FIRST') then
  begin
	 if not Column.Field.IsNull then
   begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[(Column.Field.FieldName = 'T001_REMAINS_TYPE') and (Column.Field.AsInteger = 1)] or
      VState[(Column.Field.FieldName = 'IS_FIRST') and (Column.Field.AsString = 'Y')] or
      DFCS_FLAT
      );
    end;
  end;
end;

end.
