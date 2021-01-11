unit frm33_IssuerTypeEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm33_IssuerTypeEdit = class(Tfrm04_Edit)
    ed01: TDBEdit;
    m01: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed02: TDBEdit;
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
  frm33_IssuerTypeEdit: Tfrm33_IssuerTypeEdit;

implementation

uses frm33_IssuerTypeListForm, untMessages;

{$R *.DFM}

{ Tfrm33_IssuerTypeEdit }

function Tfrm33_IssuerTypeEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm33_IssuerTypeList.CancelChange;
end;

class function Tfrm33_IssuerTypeEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm33_IssuerTypeEdit;
end;

class function Tfrm33_IssuerTypeEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm33_IssuerTypeEdit;
end;

function Tfrm33_IssuerTypeEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите —окращенное наменование!');
  end;

  if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('¬ведите код!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('¬ведите полное наименование!');
  end;

  Result := frm33_IssuerTypeList.SaveChange;
end;

class procedure Tfrm33_IssuerTypeEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm33_IssuerTypeEdit) := AForm;
end;

end.
 