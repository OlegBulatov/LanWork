unit frm47_IssuerGroupListItemForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm,
  frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//

type
  Tfrm47_IssuerGroupListItem = class(Tfrm04_TabListItem)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT036_ISBANK: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT028_INN: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT036_TICKER_SKRIN: TStringField;
    odsListT036_MAIL_ADDRESS: TStringField;
    odsListT036_REG_NUMBER: TStringField;
    odsListT036_COMPANY_HEAD: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    procedure actEditAttributesUpdate(Sender: TObject);
  private
  protected
    //
    function EditForm: Tfrm04_Edit; override;
    //
    //
    procedure OnEdit; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm47_IssuerGroupListItem: Tfrm47_IssuerGroupListItem;

implementation

uses
  frm47_IssuerGroupDoubleForm;

{$R *.DFM}

{ Tfrm44_RezidGroupListItem }

function Tfrm47_IssuerGroupListItem.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm47_IssuerGroupDouble.Instance;
end;

class function Tfrm47_IssuerGroupListItem.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupListItem;
end;

class function Tfrm47_IssuerGroupListItem.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupListItem;
end;

procedure Tfrm47_IssuerGroupListItem.OnEdit;
begin
  if EditForm = nil then Exit;

  // отображаем форму дл€ изменени€ состава группы
  with Tfrm47_IssuerGroupDouble(EditForm) do
  begin
    EditType := etEdit;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    T042_ID := odsList.Master.FieldByName(odsList.MasterFields).AsFloat;
    ShowModal;
  end;
end;

class procedure Tfrm47_IssuerGroupListItem.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupListItem) := AForm;
end;

procedure Tfrm47_IssuerGroupListItem.actEditAttributesUpdate(
  Sender: TObject);
begin
  actEditAttributes.Enabled := True;
end;

end.
