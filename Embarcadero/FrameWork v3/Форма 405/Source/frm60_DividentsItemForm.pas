unit frm60_DividentsItemForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm,
  frm00_ParentForm;

//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm60_DividentsItem = class(Tfrm04_TabListItem)
    odsListT002_ID: TFloatField;
    odsListT001_PART_ID: TFloatField;
    odsListT005_DISPLAY_NAME: TStringField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_REPORT_DATE: TDateTimeField;
    odsListT002_NUMB_IN_YEA: TStringField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT002_KP_ID: TIntegerField;
    odsListT001_ID: TFloatField;
    odsListT001_ROW_PREFIX: TIntegerField;
    odsListT001_ROW_NUM: TIntegerField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT001_TYPE_ID: TStringField;
    odsListT016_BOND_ID: TFloatField;
    odsListT001_OP_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_PAY_ID: TFloatField;
    odsListT006_NAME: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT001_OP_CR_DESC: TStringField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT012_ID: TFloatField;
    odsListT001_REZID_NAME: TStringField;
    odsListT001_REZID_CO_ID: TStringField;
    odsListT001_REZID_TYPE: TFloatField;
    odsListT013_ID: TFloatField;
    odsListT001_NREZID_NAME: TStringField;
    odsListT001_NREZID_CO_ID: TFloatField;
    odsListT001_NREZID_COUNTRY: TStringField;
    odsListT001_NREZID_TYPE: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_CODE: TFloatField;
    odsListT001_REG_NUM: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT050_ID: TFloatField;
    odsListT050_DESC: TStringField;
    odsListT079_TOTAL_SUM: TFloatField;
    odsListT079_PROC_SUM: TFloatField;
    odsListT079_PROC_VALUE: TFloatField;
    odsListT079_CALC_TYPE: TStringField;
    odsListT079_TAX_SUM: TFloatField;
  private
    FT001_ID: Double;
  protected
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnEdit(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm60_DividentsItem: Tfrm60_DividentsItem;

implementation

uses Matrix, A00_MatrixConst, frm60_DividentsItemEditForm;

{$R *.DFM}

{ Tfrm44_RezidGroupListItem }

function Tfrm60_DividentsItem.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm60_DividentsItemEdit.Instance;
end;

class function Tfrm60_DividentsItem.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm60_DividentsItem;
end;

class function Tfrm60_DividentsItem.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm60_DividentsItem;
end;

class procedure Tfrm60_DividentsItem.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm60_DividentsItem) := AForm;
end;

procedure Tfrm60_DividentsItem.DoEdit;
begin
  oqUpdate.SetVariable('T001_ID', odsList['T001_ID']);
  oqUpdate.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']);
  oqUpdate.SetVariable('T079_PROC_VALUE', odsList['T079_PROC_VALUE']);
  oqUpdate.SetVariable('T050_TAX_VALUE', odsList.Master['T050_TAX_VALUE']);
  oqUpdate.Execute;
  FT001_ID := odsList['T001_ID'];
end;

procedure Tfrm60_DividentsItem.DoDelete;
begin
  oqDelete.SetVariable('T001_ID', odsList['T001_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT001_ID := odsList['T001_ID'];
end;

function Tfrm60_DividentsItem.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_DIVIDEND, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(DELETE_DIVIDEND, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure Tfrm60_DividentsItem.RefreshAfterListChange;
begin
  RefreshData('T001_ID', FT001_ID);
end;

procedure Tfrm60_DividentsItem.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_DIVIDEND, true, '');
end;

end.
