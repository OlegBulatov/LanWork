unit frm83_DefaultOperationsListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, Graphics, frm00_ParentForm, Variants,
  System.Actions;
//  Messages, Dialogs,
//  frm04_ListForm
//  , frm04_EditForm
//  frm04_TabListItemForm

type
  Tfrm83_DefaultOperationsList = class(Tfrm04_TabListItem)
    ToolButton5: TToolButton;
    odsListT001_PART_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_BANK_NAME: TStringField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT001_ID: TFloatField;
    odsListT001_ROW_NUM: TIntegerField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT001_YEAR_OP: TStringField;
    odsListT027_ID: TFloatField;
    odsListT001_TYPE_ID: TStringField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT006_NAME: TStringField;
    odsListT006_DIRECTION_DESC: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_CR_DESC: TStringField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT001_MOD_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_PROC_CROSS: TFloatField;
    odsListT001_OP_MODIF: TFloatField;
    odsListT001_OP_SUM_RUB: TFloatField;
    odsListT001_REZID_NAME: TStringField;
    odsListT001_REZID_CO_ID: TStringField;
    odsListT033_NAME: TStringField;
    odsListT001_NREZID_NAME: TStringField;
    odsListT001_NREZID_COUNTRY: TStringField;
    odsListT034_NAME: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT001_REG_NUM: TStringField;
    odsListT001_DATE_ON: TDateTimeField;
    odsListT001_DATE_OFF: TDateTimeField;
    odsListT001_CR_DESC: TStringField;
    odsListT001_IS_RANSOM: TStringField;
    odsListT030_ID: TFloatField;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_10: TFloatField;
    odsListT001_11: TFloatField;
    odsListT001_N99: TFloatField;
    odsListT001_COMMENT: TStringField;
    odsListT035_NAME: TStringField;
    odsListT001_C11: TStringField;
    odsListT001_C12: TStringField;
    odsListT001_C16: TStringField;
    odsListT001_C17: TStringField;
    odsListT001_C18: TStringField;
    odsListT001_C19: TStringField;
    odsListT001_C20: TStringField;
    odsListT001_PROCESSED_DESC: TStringField;
    odsListT001_DPB_COMMENT: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    odsListT150_ID: TFloatField;
    odsListT152_ID: TFloatField;
    odsListIS_SELECTED: TFloatField;
    oq405RepayAdd: TOracleQuery;
    oq405RepayDelete: TOracleQuery;
    odsListT001_ROW_PRFX: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
  private
    FT001_ID: Double;
    FT030_ID: Double;
    FDefaultID: Double;
    FDefaultDate: TDateTime;
    FPeriodID: Double;
    procedure ChangeSelectFlag(ASelectFlag: Integer);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    RefreshMaster: procedure of object;
    function GetRowFontColor: TColor; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    //
    property T030_ID: Double read FT030_ID write FT030_ID;
    property DefaultID: Double read FDefaultID write FDefaultID;
    property DefaultDate: TDateTime read FDefaultDate write FDefaultDate;
    property PeriodID: Double read FPeriodID write FPeriodID;
    //
  end;

var
  frm83_DefaultOperationsList: Tfrm83_DefaultOperationsList;

implementation

uses SysUtils, dm005_MainData, Matrix, A00_MatrixConst;
//uses , untMessages, Math;

{$R *.DFM}

{ Tfrm83_DefaultOperationsList }

function Tfrm83_DefaultOperationsList.GetRowFontColor: TColor;
begin
  if (FDefaultID <> odsListT150_ID.AsFloat) and (odsList['T150_ID'] <> NULL) then
  begin
    Result := clSilver;
  end
  else
  begin
    Result := inherited GetRowFontColor;
  end;
end;

procedure Tfrm83_DefaultOperationsList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.SetVariable('T030_ID', FT030_ID);
  DataSet.SetVariable('T055_ID', FPeriodID);
  DataSet.SetVariable('DEF_DATE', FDefaultDate);

  inherited;
end;

class function Tfrm83_DefaultOperationsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_DefaultOperationsList;
end;

class function Tfrm83_DefaultOperationsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_DefaultOperationsList;
end;

class procedure Tfrm83_DefaultOperationsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_DefaultOperationsList) := AForm;
end;

procedure Tfrm83_DefaultOperationsList.xxxDBGridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;

  if (Column.Field.FieldName = 'IS_SELECTED') then
    begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(xxxDBGrid.Canvas.Handle,
		     VRect,
		     DFC_BUTTON,
		     DFCS_BUTTONCHECK or
		     VState[Column.Field.AsInteger <> 0] or
		     DFCS_FLAT);
    end;
end;

procedure Tfrm83_DefaultOperationsList.ChangeSelectFlag(ASelectFlag: Integer);
begin
  if ASelectFlag = 1 then
  begin
    oq405RepayAdd.SetVariable('T150_ID', FDefaultID);
    oq405RepayAdd.SetVariable('T001_ID', odsList['T001_ID']);
    oq405RepayAdd.Execute;

    if dmMain.UseMatrix then Matrix.MA.WriteToLog2(ADD_DEF_405_REPAY, true, '');
  end
  else
  begin
    oq405RepayDelete.SetVariable('T152_ID', odsList['T152_ID']);
    oq405RepayDelete.Execute;

    if dmMain.UseMatrix then Matrix.MA.WriteToLog2(DELETE_DEF_405_REPAY, true, '');
  end;
end;

procedure Tfrm83_DefaultOperationsList.RefreshAfterListChange;
begin
  RefreshData('T001_ID', FT001_ID);
end;

procedure Tfrm83_DefaultOperationsList.xxxDBGridCellClick(Column: TColumn);
var
  VOLDCursor: TCursor;
  I: Integer;
  VSelectFlag: Integer;
begin
  if dmMain.UseMatrix then Exit;

  if (Column.Field.FieldName <> 'IS_SELECTED') then
  begin
    Exit;
  end;

  odsList.DisableControls;
  VOLDCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  FT001_ID := odsList['T001_ID'];

  xxxDBGrid.SelectedRows.CurrentRowSelected := True;

  VSelectFlag := (odsList['IS_SELECTED'] + 1) mod 2;

  try
    try
      dmMain.StartTransaction;

      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        odsList.GotoBookmark(TBookmark(xxxDBGrid.SelectedRows.Items[I]));

        if (VSelectFlag <> odsListIS_SELECTED.AsInteger) then
        begin
          ChangeSelectFlag(VSelectFlag);
        end;
      end;

      dmMain.Commit;
    except
      on E: Exception do
      begin
        dmMain.Rollback;
        raise;
      end;
    end;
  finally
    xxxDBGrid.SelectedRows.Clear;
    Screen.Cursor := VOLDCursor;
    RefreshMaster;
    DataSet.Locate('T001_ID', FT001_ID, []);
    odsList.EnableControls;
  end;
end;

end.
