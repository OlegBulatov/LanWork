unit frm38_NewReportsOpGCIForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm00_ParentForm;
//  Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm38_NewReportsOpGCI = class(Tfrm04_List)
    odsListID: TIntegerField;
    odsListT033_ID: TIntegerField;
    odsListT034_ID: TIntegerField;
    odsListT025_CODE: TIntegerField;
    odsListT011_TYPE_ID: TIntegerField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT001_ROW_NUM: TFloatField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT006_NAME: TStringField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TStringField;
    odsListT001_C11: TStringField;
    odsListT001_C12: TStringField;
    odsListT001_DATE_ON: TDateTimeField;
    odsListT001_DATE_OFF: TDateTimeField;
    odsListT001_CR_ID: TStringField;
    odsListT001_C16: TStringField;
    odsListT001_C17: TStringField;
    odsListT001_C18: TStringField;
    odsListT001_C19: TStringField;
    odsListT001_C20: TStringField;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_10: TFloatField;
    odsListSUM_CROSS: TFloatField;
    odsListPROC_CROSS: TFloatField;
    odsListN_GR: TIntegerField;
    odsListT001_C10: TStringField;
    odsListT001_ROW_PRFX: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    class function Instance: Tfrm38_NewReportsOpGCI;
  end;

var
  frm38_NewReportsOpGCI: Tfrm38_NewReportsOpGCI;

implementation

{$R *.DFM}

class function Tfrm38_NewReportsOpGCI.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm38_NewReportsOpGCI;
end;

class function Tfrm38_NewReportsOpGCI.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm38_NewReportsOpGCI;
end;

class procedure Tfrm38_NewReportsOpGCI.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm38_NewReportsOpGCI) := AForm;
end;

class function Tfrm38_NewReportsOpGCI.Instance: Tfrm38_NewReportsOpGCI;
begin
  Result := Tfrm38_NewReportsOpGCI(inherited Instance);
end;

procedure Tfrm38_NewReportsOpGCI.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.Field.FieldName = 'T001_N8')
  or (Column.Field.FieldName = 'T001_N9')
  or (Column.Field.FieldName = 'T001_10') then
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
      VState[Column.Field.AsInteger = 1] or
      DFCS_FLAT
      );
  end;
end;

end.









