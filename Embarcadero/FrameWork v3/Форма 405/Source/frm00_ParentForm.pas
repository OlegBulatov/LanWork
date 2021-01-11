unit frm00_ParentForm;

interface

uses
  Controls, Forms, SysUtils;

type
  Tfrm00_Parents = class of Tfrm00_Parent;
  
  Tfrm00_Parent = class(TForm)
  private
  protected
    class function GetSelfClass: Tfrm00_Parents; virtual;
    class function GetSelfForm: Tfrm00_Parent; virtual;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); virtual;
  public
    procedure PlaceToWinControl(const AControl: TWinControl);
    //
    class function Instance: Tfrm00_Parent;
  end;

var
  frm00_Parent: Tfrm00_Parent;

implementation

{$R *.DFM}

resourcestring
  SErrorCalling = 'Ошибка наследования!';

class function Tfrm00_Parent.GetSelfClass: Tfrm00_Parents;
begin
  // абстрактная функция должна возвращать класс формы
  raise Exception.Create(SErrorCalling);
end;

class function Tfrm00_Parent.GetSelfForm: Tfrm00_Parent;
begin
  // абстрактная функция должна возвращать ссылку на форму
  raise Exception.Create(SErrorCalling);
end;

class procedure Tfrm00_Parent.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  // абстрактная процедура должна сохранять ссылку на форму
  raise Exception.Create(SErrorCalling);
end;

class function Tfrm00_Parent.Instance: Tfrm00_Parent;
var
  VForm: Tfrm00_Parent;
begin
  if GetSelfForm = nil then
  begin
    Application.CreateForm(GetSelfClass, VForm);
    SetSelfForm(VForm);
  end;

  Result := GetSelfForm;
end;

procedure Tfrm00_Parent.PlaceToWinControl(const AControl: TWinControl);
begin
  if not Assigned(AControl) then Exit;
  
  BorderStyle := bsNone;
  Parent := AControl;
  Align := alClient;
  BoundsRect := AControl.BoundsRect;
  Visible := True;
end;

end.
