unit frm000_ParentForm;

interface

uses
  Forms, SysUtils, Controls;

type
  Tfrm000_Parents = class of Tfrm000_Parent;

  Tfrm000_Parent = class(TForm)
  private
  protected
    class function GetSelfClass: Tfrm000_Parents; virtual;
    class function GetSelfForm: Tfrm000_Parent; virtual;
    class procedure SetSelfForm(const AForm: Tfrm000_Parent); virtual;
  public
    procedure PlaceToWinControl(const AControl: TWinControl);
    //
    class function Instance: Tfrm000_Parent;
  end;

var
  frm000_Parent: Tfrm000_Parent;

implementation

{$R *.DFM}

resourcestring
  SErrorCalling = '������ ������������!';

class function Tfrm000_Parent.GetSelfClass: Tfrm000_Parents;
begin
  // ����������� ������� ������ ���������� ����� �����
  raise Exception.Create(SErrorCalling);
end;

class function Tfrm000_Parent.GetSelfForm: Tfrm000_Parent;
begin
  // ����������� ������� ������ ���������� ������ �� �����
  raise Exception.Create(SErrorCalling);
end;

class procedure Tfrm000_Parent.SetSelfForm(const AForm: Tfrm000_Parent);
begin
  // ����������� ��������� ������ ��������� ������ �� �����
  raise Exception.Create(SErrorCalling);
end;

class function Tfrm000_Parent.Instance: Tfrm000_Parent;
var
  VForm: Tfrm000_Parent;
begin
  if GetSelfForm = nil then
  begin
    Application.CreateForm(GetSelfClass, VForm);
    SetSelfForm(VForm);
  end;

  Result := GetSelfForm;
end;

procedure Tfrm000_Parent.PlaceToWinControl(const AControl: TWinControl);
begin
  if not Assigned(AControl) then Exit;
  
  BorderStyle := bsNone;
  Parent := AControl;
  Align := alClient;
  BoundsRect := AControl.BoundsRect;
  Visible := True;
end;

end.

