unit frm36_SostVypEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  DBCtrls;

type
  Tfrm36_SostVypEdit = class(Tfrm04_Edit)
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
  frm36_SostVypEdit: Tfrm36_SostVypEdit;

implementation

uses frm36_SostVypListForm, untMessages;

{$R *.DFM}

{ Tfrm36_SostVypEdit }

function Tfrm36_SostVypEdit.CancelChange: Boolean;
begin
  // отменяем изменения
  Result := frm36_SostVypList.CancelChange;
end;

class function Tfrm36_SostVypEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm36_SostVypEdit;
end;

class function Tfrm36_SostVypEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm36_SostVypEdit;
end;

function Tfrm36_SostVypEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('Введите описание!');
  end;

  Result := frm36_SostVypList.SaveChange;
end;

class procedure Tfrm36_SostVypEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm36_SostVypEdit) := AForm;
end;

end.
 