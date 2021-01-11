unit frm92_IssuerEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm04_EditForm, ActnList, StdCtrls, ExtCtrls, frm00_ParentForm, Mask,
  DBCtrls;

type
  Tfrm92_IssuerEdit = class(Tfrm04_Edit)
    ed01: TDBEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function SaveChange: Boolean; override;
  end;

var
  frm92_IssuerEdit: Tfrm92_IssuerEdit;

implementation

uses untMessages;

{$R *.DFM}

{ Tfrm92_IssuerEdit }

class function Tfrm92_IssuerEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm92_IssuerEdit;
end;

class function Tfrm92_IssuerEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm92_IssuerEdit;
end;

class procedure Tfrm92_IssuerEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm92_IssuerEdit) := AForm;
end;

function Tfrm92_IssuerEdit.SaveChange: Boolean;
begin
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Укажите ИНН эмитента!');
  end;

  Result := inherited SaveChange;
end;

end.
