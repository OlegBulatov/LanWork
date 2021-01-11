unit frm83_RemainsEditForm;

interface

uses
  frm04_EditForm, StdCtrls, DBCtrls, Classes, ActnList, Controls, ExtCtrls,
  frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm83_RemainsEdit = class(Tfrm04_Edit)
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm83_RemainsEdit: Tfrm83_RemainsEdit;

implementation

uses Forms, frm83_RemainsListForm;

{$R *.DFM}

{ Tfrm83_RemainsEdit }

class function Tfrm83_RemainsEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsEdit;
end;

class function Tfrm83_RemainsEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsEdit;
end;

function Tfrm83_RemainsEdit.SaveChange: Boolean;
begin
  Result := frm83_RemainsList.SaveChange;
end;

class procedure Tfrm83_RemainsEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsEdit) := AForm;
end;

end.
