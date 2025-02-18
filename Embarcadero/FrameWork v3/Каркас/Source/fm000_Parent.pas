unit fm000_Parent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm003_DialogForm, ActnList, System.Actions;

type
  TfmParent = class(TFrame)
    actList: TActionList;
  private
    FDialogForm: Tfrm003_Dialog;
    FName: String;
    function GetDialogForm: Tfrm003_Dialog;
  protected
    FInitialized: Boolean;
    //
    procedure OnInitFrame; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    procedure InitFrame(Sender: TObject);  virtual;
    procedure ShowFrame; virtual;
    procedure ShowModal; virtual;
    property DialogForm: Tfrm003_Dialog read GetDialogForm;
    property Initialized: Boolean read FInitialized write FInitialized;
    property FrameName: String read FName write FName;
  end;

  TfmParentClass = class of TfmParent;

implementation

{$R *.DFM}

{ TfmParent }


constructor TfmParent.Create(AOwner: TComponent);
begin
  inherited;
  //InitFrame(Self);
end;

function TfmParent.GetDialogForm: Tfrm003_Dialog;
begin
  // ������� �����
  if not Assigned(FDialogForm) then
    begin
    FDialogForm := Tfrm003_Dialog.Create(nil);
    end;
  Result := FDialogForm;
end;

procedure TfmParent.InitFrame(Sender: TObject);
begin
  FInitialized := TRUE;
end;

procedure TfmParent.OnInitFrame;
begin
  //
end;

procedure TfmParent.ShowFrame;
begin
  Show;
end;

procedure TfmParent.ShowModal;
begin
  if DialogForm.Caption = '' then
    DialogForm.Caption := FrameName;
  // ���������� ����� �� �����
  DialogForm.ShowFrame(Self);
end;

end.
