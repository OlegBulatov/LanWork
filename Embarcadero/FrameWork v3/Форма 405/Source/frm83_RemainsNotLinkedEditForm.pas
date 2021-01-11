unit frm83_RemainsNotLinkedEditForm;

interface

uses
  frm04_EditForm, StdCtrls, Mask, DBCtrls, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm83_RemainsNotLinkedEdit = class(Tfrm04_Edit)
    Label8: TLabel;
    ed01: TDBEdit;
    Label10: TLabel;
    ed02: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm83_RemainsNotLinkedEdit: Tfrm83_RemainsNotLinkedEdit;

implementation

uses Forms;
//frm83_RemainsNotLinkedForm;

{$R *.DFM}

{ Tfrm83_RemainsNotLinkedEdit }

class function Tfrm83_RemainsNotLinkedEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsNotLinkedEdit;
end;

class function Tfrm83_RemainsNotLinkedEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsNotLinkedEdit;
end;

class procedure Tfrm83_RemainsNotLinkedEdit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsNotLinkedEdit) := AForm;
end;

end.
