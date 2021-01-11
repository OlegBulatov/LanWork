unit frm35_SecRegnEditForm;

interface

uses
  frm04_EditForm, StdCtrls, Mask, DBCtrls, Controls, Classes, ActnList,
  ExtCtrls, Db, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfrm35_SecRegnEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
  private
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm35_SecRegnEdit: Tfrm35_SecRegnEdit;

implementation

uses
  Forms, untMessages;
// frm35_SecRegnListForm

{$R *.DFM}

{ Tfrm04_Edit1 }

class function Tfrm35_SecRegnEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm35_SecRegnEdit;
end;

class function Tfrm35_SecRegnEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm35_SecRegnEdit;
end;

function Tfrm35_SecRegnEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите Рег. номер ценной бумаги!');
  end;

  if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите Сокр. номер ценной бумаги!');
  end;

  Result := inherited SaveChange;
end;

procedure Tfrm35_SecRegnEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource:= Value;
  ed02.DataSource:= Value;
end;

class procedure Tfrm35_SecRegnEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm35_SecRegnEdit) := AForm;
end;

end.
