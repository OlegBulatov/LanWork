unit frm06_BondEditForm;

interface

uses
  frm04_EditForm, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, xxxDateEdit, DBDateTimePicker;

type
  Tfrm06_BondEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
    Label3: TLabel;
    m01: TDBMemo;
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  public
  end;

var
  frm06_BondEdit: Tfrm06_BondEdit;

implementation

uses
  Forms, frm06_BondListForm, untMessages;

{$R *.DFM}

{ Tfrm06_BondEdit }

function Tfrm06_BondEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm06_BondList.CancelChange;
end;

class function Tfrm06_BondEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm06_BondEdit;
end;

class function Tfrm06_BondEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm06_BondEdit;
end;

function Tfrm06_BondEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите код типа ценной бумаги!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('¬ведите описание типа ценной бумаги!');
  end;

  Result := frm06_BondList.SaveChange;
end;

class procedure Tfrm06_BondEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm06_BondEdit) := AForm;
end;

end.
