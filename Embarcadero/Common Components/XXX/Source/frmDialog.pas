{******************************************************************************}
{  frmDialog
{  ����� �������
{
{  �����
{  �������� �.�.  ���� 2003 �.
{
{******************************************************************************}

unit frmDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ActnList, ExtCtrls, ComCtrls, frmParent;

type
  TfrmDialogForm = class(TfrmParentForm)
    ActionList1: TActionList;
    actSave: TAction;
    actCancel: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCancelUpdate(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
  private
  protected
    function SaveChange: Boolean; virtual;
    function CancelChange: Boolean; virtual;
  public
  end;

var
  frmDialogForm: TfrmDialogForm;

implementation

{$R *.DFM}

procedure TfrmDialogForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // ��������� ����� ���� �� ���� ���� ��� ���������� ���������
  // ��� ������ ���������
  CanClose := False;
  if ModalResult = mrOk then
  begin
    CanClose := SaveChange;
  end else
  begin
    CanClose := CancelChange;
  end;
end;

function TfrmDialogForm.CancelChange: Boolean;
begin
  Result := True;
end;

function TfrmDialogForm.SaveChange: Boolean;
begin
  Result := True;
end;

procedure TfrmDialogForm.actCancelUpdate(Sender: TObject);
begin
  actCancel.Enabled := True;
end;

procedure TfrmDialogForm.actSaveUpdate(Sender: TObject);
begin
  actSave.Enabled := True;
end;

end.
