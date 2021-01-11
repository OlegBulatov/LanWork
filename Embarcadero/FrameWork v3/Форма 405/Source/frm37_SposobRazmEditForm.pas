unit frm37_SposobRazmEditForm;

interface

uses
  frm04_EditForm, StdCtrls, DBCtrls, Controls, Classes, ActnList, ExtCtrls,
  frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfrm37_SposobRazmEdit = class(Tfrm04_Edit)
    Label3: TLabel;
    m01: TDBMemo;
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
  frm37_SposobRazmEdit: Tfrm37_SposobRazmEdit;

implementation

uses
  Forms, frm37_SposobRazmListForm, untMessages;

{$R *.DFM}

{ Tfrm37_SposobRazmEdit }

function Tfrm37_SposobRazmEdit.CancelChange: Boolean;
begin
  // отменяем изменения
  Result := frm37_SposobRazmList.CancelChange;
end;

class function Tfrm37_SposobRazmEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm37_SposobRazmEdit;
end;

class function Tfrm37_SposobRazmEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm37_SposobRazmEdit;
end;

function Tfrm37_SposobRazmEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('Введите описание!');
  end;

  Result := frm37_SposobRazmList.SaveChange;
end;

class procedure Tfrm37_SposobRazmEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm37_SposobRazmEdit) := AForm;
end;

end.
 