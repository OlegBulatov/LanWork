unit frm831_EmissPaymentsListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm00_ParentForm, Variants,
  System.Actions;
//  Messages, Graphics, Dialogs,

type
  Tfrm831_EmissPaymentsList = class(Tfrm04_List)
    odsListT030_ID: TFloatField;
    odsListT092_ID: TFloatField;
    odsListT032_ID: TFloatField;
    odsListPAY_TYPE_DESC: TStringField;
    odsListPAY_DATE: TDateTimeField;
    odsListPAY_RATE: TFloatField;
    odsListIS_DEFAULT: TFloatField;
    oqDefaultAdd: TOracleQuery;
    oqDefaultDelete: TOracleQuery;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    FT032_ID: Variant;
    FT092_ID: Variant;
    FT030_ID: Double;
    procedure ChangeDefaultFlag(ADefaultFlag: Integer);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    //
    property T030_ID: Double read FT030_ID write FT030_ID;
  end;

var
  frm831_EmissPaymentsList: Tfrm831_EmissPaymentsList;

implementation

uses SysUtils, dm005_MainData;

{$R *.DFM}

procedure Tfrm831_EmissPaymentsList.RefreshData(const KeyFields: string; const KeyValues: Variant);
begin
  DataSet.SetVariable('T030_ID', FT030_ID);

  inherited;
end;

class function Tfrm831_EmissPaymentsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm831_EmissPaymentsList;
end;

class function Tfrm831_EmissPaymentsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm831_EmissPaymentsList;
end;

class procedure Tfrm831_EmissPaymentsList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm831_EmissPaymentsList) := AForm;
end;

procedure Tfrm831_EmissPaymentsList.xxxDBGridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;

  if (Column.Field.FieldName = 'IS_DEFAULT') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(xxxDBGrid.Canvas.Handle,
		     VRect,
		     DFC_BUTTON,
		     DFCS_BUTTONCHECK or
		     VState[Column.Field.AsInteger = 1] or
		     DFCS_FLAT);
  end;
end;

procedure Tfrm831_EmissPaymentsList.ChangeDefaultFlag(ADefaultFlag: Integer);
begin
  if ADefaultFlag = 1 then
  begin
    oqDefaultAdd.SetVariable('T030_ID', FT030_ID);
    oqDefaultAdd.SetVariable('T032_ID', odsList['T032_ID']);
    oqDefaultAdd.SetVariable('T092_ID', odsList['T092_ID']);
    oqDefaultAdd.Execute;
  end
  else
  begin
    oqDefaultDelete.SetVariable('T032_ID', odsList['T032_ID']);
    oqDefaultDelete.SetVariable('T092_ID', odsList['T092_ID']);
    oqDefaultDelete.Execute;
  end;
end;

procedure Tfrm831_EmissPaymentsList.RefreshAfterListChange;
begin
  RefreshData('T092_ID; T032_ID', VarArrayOf([odsList['T092_ID'], odsList['T032_ID']]));
end;

procedure Tfrm831_EmissPaymentsList.xxxDBGridCellClick(Column: TColumn);
var
  VOLDCursor: TCursor;
  I: Integer;
  VDefaultFlag: Integer;
begin
  if (Column.Field.FieldName <> 'IS_DEFAULT') then
  begin
    Exit;
  end;

  odsList.DisableControls;
  VOLDCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  FT092_ID := odsList['T092_ID'];
  FT032_ID := odsList['T032_ID'];

  xxxDBGrid.SelectedRows.CurrentRowSelected := True;

  VDefaultFlag := (odsList['IS_DEFAULT'] + 1) mod 2;

  try
    try
      dmMain.StartTransaction;

      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);

        if (VDefaultFlag <> odsListIS_DEFAULT.AsInteger) then
        begin
          ChangeDefaultFlag(VDefaultFlag);
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
    RefreshAfterListChange;
    odsList.EnableControls;
  end;
end;

procedure Tfrm831_EmissPaymentsList.FormShow(Sender: TObject);
begin
  inherited;

  RefreshData('', Unassigned);
end;

end.
