unit frm60_DividentsItemEditForm;

interface

uses
  frm04_EditForm, StdCtrls, Mask, DBCtrls, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfrm60_DividentsItemEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
  private
    { Private declarations }
  protected
    function SaveChange: Boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm60_DividentsItemEdit: Tfrm60_DividentsItemEdit;

implementation

uses Forms, frm60_DividentsItemForm, untMessages;

{$R *.DFM}

class function Tfrm60_DividentsItemEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm60_DividentsItemEdit;
end;

class function Tfrm60_DividentsItemEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm60_DividentsItemEdit;
end;

function Tfrm60_DividentsItemEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите процент налога!');
  end;

  if ed01.Field.AsFloat < 0 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Процент налога не может быть меньше нуля!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm60_DividentsItemEdit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm60_DividentsItemEdit) := AForm;
end;

end.
