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
  SErrorCalling = '������ ������������!';

class function TfrmParentForm.GetSelfClass: TfrmParentForms;
begin
  // ����������� ������� ������ ���������� ����� �����
  raise Exception.Create(SErrorCalling);
end;

// ������� � ���������� ����� ��������� ������ GetSelfClass
// �������������� ����� GetSelfForm ��� ����� GetSelfClass
class function TfrmParentForm.GetSelfForm: TfrmParentForm;
begin
  // ����������� ������� ������ ���������� ������ �� �����
  raise Exception.Create(SErrorCalling);
end;

class procedure TfrmParentForm.SetSelfForm(const AForm: TfrmParentForm);
begin
  // ����������� ������� ������ ��������� ������ �� �����
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
