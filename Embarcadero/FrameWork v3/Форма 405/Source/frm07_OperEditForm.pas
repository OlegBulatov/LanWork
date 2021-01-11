unit frm07_OperEditForm;

interface

uses
  frm04_EditForm, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, xxxDateEdit, DBDateTimePicker;

type
  Tfrm07_OperEdit = class(Tfrm04_Edit)
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
  frm07_OperEdit: Tfrm07_OperEdit;

implementation

uses
  Forms, frm07_OperListForm, untMessages;

{$R *.DFM}

{ Tfrm07_OperEdit }

function Tfrm07_OperEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm07_OperList.CancelChange;
end;

class function Tfrm07_OperEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm07_OperEdit;
end;

class function Tfrm07_OperEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm07_OperEdit;
end;

function Tfrm07_OperEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите код типа операции!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('¬ведите описание типа операции!');
  end;

  Result := frm07_OperList.SaveChange;
end;

class procedure Tfrm07_OperEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm07_OperEdit) := AForm;
end;

end.
