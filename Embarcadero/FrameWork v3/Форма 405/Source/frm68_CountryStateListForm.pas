unit frm68_CountryStateListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm00_ParentForm;
//  Messages, SysUtils, Graphics, Dialogs,
//  frm04_ListForm,

type
  Tfrm68_CountryStateList = class(Tfrm04_TabListItem)
    odsListSN015_ISO_DIG: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListSTATE_ID: TStringField;
    odsListSTATE_DESC: TStringField;
    odsListT055_ID: TFloatField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
  private
    FT055_ID: Double;
  protected
    procedure OnEdit; override;
    procedure DoEdit; override;
    procedure WriteLogOnEdit(); override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm68_CountryStateList: Tfrm68_CountryStateList;

implementation

uses dm005_MainData, Matrix, A00_MatrixConst, frm04_EditForm;

{$R *.DFM}

{ Tfrm68_CountryStateList }

class function Tfrm68_CountryStateList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm68_CountryStateList;
end;

class function Tfrm68_CountryStateList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm68_CountryStateList;
end;

class procedure Tfrm68_CountryStateList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm68_CountryStateList) := AForm;
end;

procedure Tfrm68_CountryStateList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
//  I: Integer;
  VRect: TRect;
begin
  inherited;
  if Column.Index <> 1 then Exit;

  VRect := Rect;
  VRect.Top := VRect.Top + 1;
  VRect.Bottom := VRect.Bottom - 1;
  xxxDBGrid.Canvas.FillRect(Rect);
  DrawFrameControl(
    xxxDBGrid.Canvas.Handle,
    VRect,
    DFC_BUTTON,
    DFCS_BUTTONCHECK or
    VState[odsListSTATE_ID.AsString = 'BAD'] or
    DFCS_FLAT
    );
end;

procedure Tfrm68_CountryStateList.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index <> 1 then Exit;

  // if не прошел матрикс then Exit;
  if dmMain.UseMatrix then
  begin
    if not Matrix.MA.IsOperationPermitted(ADD_SOST, FALSE) then Exit;
  end;

  OnEdit;
end;

procedure Tfrm68_CountryStateList.DoEdit;
begin
  if odsListSTATE_ID.AsString = 'GOOD' then
  begin
    odsListSTATE_ID.AsString := 'BAD';
//    DoEdit;
    oqAdd.SetVariable('I_T055_ID', odsList['T055_ID']);
    oqAdd.SetVariable('I_ISO_DIG', odsList['SN015_ISO_DIG']);
    oqAdd.Execute;
  end else
  begin
    odsListSTATE_ID.AsString := 'GOOD';
//    DoEdit;
    oqDelete.SetVariable('I_T055_ID', odsList['T055_ID']);
    oqDelete.SetVariable('I_ISO_DIG', odsList['SN015_ISO_DIG']);
    oqDelete.Execute;
  end;
  FT055_ID := odsList['T055_ID'];
end;

procedure Tfrm68_CountryStateList.OnEdit;
begin
  DataSet.Edit;
  EditType := etEdit;
  SaveChange;
end;

procedure Tfrm68_CountryStateList.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_REPUTATION, true, '');
end;

procedure Tfrm68_CountryStateList.RefreshAfterListChange;
begin
  RefreshData('T055_ID', FT055_ID);
end;

end.
