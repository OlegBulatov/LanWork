unit frmParent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TfrmParentForms = class of TfrmParentForm;
  TfrmParentForm = class(TForm)
  private
  protected  
    class function GetSelfClass: TfrmParentForms; virtual;
    class function GetSelfForm: TfrmParentForm; virtual;
    class procedure SetSelfForm(const AForm: TfrmParentForm); virtual;
  public
    class function Instance: TfrmParentForm;
  end;

var
  frmParentForm: TfrmParentForm;

implementation

{$R *.DFM}

resourcestring
  SErrorCalling = 'ќшибка наследовани€!';

class function TfrmParentForm.GetSelfClass: TfrmParentForms;
begin
  // абстрактна€ функци€ должна возвращать класс формы
  raise Exception.Create(SErrorCalling);
end;

// создаем и возвращаем новый экземпл€р класса GetSelfClass
// инициализируем форму GetSelfForm как класс GetSelfClass
class function TfrmParentForm.GetSelfForm: TfrmParentForm;
begin
  // абстрактна€ функци€ должна возвращать ссылку на форму
  raise Exception.Create(SErrorCalling);
end;

class procedure TfrmParentForm.SetSelfForm(const AForm: TfrmParentForm);
begin
  // абстрактна€ функци€ должна сохран€ть ссылку на форму
  raise Exception.Create(SErrorCalling);
end;

class function TfrmParentForm.Instance: TfrmParentForm;
var
  VForm: TfrmParentForm;
begin
  if GetSelfForm = nil then
  begin
    Application.CreateForm(GetSelfClass, VForm);
    SetSelfForm(VForm);
  end;

  Result := GetSelfForm;
end;

end.
