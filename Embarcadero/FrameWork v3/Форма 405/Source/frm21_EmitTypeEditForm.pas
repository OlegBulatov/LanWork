unit frm21_EmitTypeEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm21_EmitTypeEdit = class(Tfrm04_Edit)
    ed01: TDBEdit;
    m01: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  end;

var
  frm21_EmitTypeEdit: Tfrm21_EmitTypeEdit;

implementation

uses frm21_EmitTypeListForm, untMessages;

{$R *.DFM}

{ Tfrm21_EmitTypeEdit }

function Tfrm21_EmitTypeEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm21_EmitTypeList.CancelChange;
end;

class function Tfrm21_EmitTypeEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm21_EmitTypeEdit;
end;

class function Tfrm21_EmitTypeEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm21_EmitTypeEdit;
end;

function Tfrm21_EmitTypeEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите сокращенное наменование!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('¬ведите полное наименование!');
  end;

  Result := frm21_EmitTypeList.SaveChange;
end;

class procedure Tfrm21_EmitTypeEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm21_EmitTypeEdit) := AForm;
end;

end.
 