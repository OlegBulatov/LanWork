unit frm47_IssuerGroupEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm47_IssuerGroupEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
    Label2: TLabel;
    m01: TDBMemo;
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  public
  end;

var
  frm47_IssuerGroupEdit: Tfrm47_IssuerGroupEdit;

implementation

uses frm47_IssuerGroupListForm, untMessages;

{$R *.DFM}

{ Tfrm46_NRezidGroupEdit }

class function Tfrm47_IssuerGroupEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupEdit;
end;

class function Tfrm47_IssuerGroupEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupEdit;
end;

function Tfrm47_IssuerGroupEdit.SaveChange: Boolean;
begin
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите сокращенное название!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('Введите полное название!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm47_IssuerGroupEdit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupEdit) := AForm;
end;

end.
