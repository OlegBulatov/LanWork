unit fm002_EditFrame;

interface

uses
  Messages, Classes, ActnList, Db, fm000_Parent, frm003_DialogForm,
  System.Actions;

type
  TEditType = (
    etBrowse,   // ������� ������
    etInsert,   // � ������ ���������� ������
    etEdit,     // � ������ ������-���� ��������� ������, � ��� ����� ���. ���.
    etDelete    // � ������ �������� ������
    );

  TfmEdit = class(TfmParent)
    procedure FrameKeyPress(Sender: TObject; var Key: Char);
  private
    FDataSource: TDataSource;
    FEditType: TEditType;
    procedure SetOnCancelChange(const Value: TChangeEvent);
    procedure SetOnSaveChange(const Value: TChangeEvent);
  protected
    procedure IsNext(var AKey: Char);
    procedure SetEditType(const Value: TEditType); virtual;
  public
    property OnSaveChange: TChangeEvent write SetOnSaveChange;
    property OnCancelChange: TChangeEvent write SetOnCancelChange;
    property EditType: TEditType read FEditType write SetEditType;
    procedure SetDataSource(Value: TDataSource); virtual;
    procedure ShowModal; override;
    function CheckValues: Boolean; virtual;

    property DataSource: TDataSource read FDataSource write SetDataSource;
  end;

  TfmEditClass = class of TfmEdit;

var
  fmEdit: TfmEdit;

implementation

{$R *.DFM}

{ TfmParent4 }

function TfmEdit.CheckValues: Boolean;
begin
  // Override in descendants
  Result := TRUE;
end;

procedure TfmEdit.FrameKeyPress(Sender: TObject; var Key: Char);
begin
  // �� Enter ��������� �� ������ �������
  if (Key = #13) then
    begin
    Key := #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfmEdit.IsNext(var AKey: Char);
begin
  // �� Enter ��������� �� ������ �������
  if (AKey = #13) then
    begin
    AKey := #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfmEdit.SetDataSource(Value: TDataSource);
begin
  FDataSource := Value;
end;

procedure TfmEdit.SetEditType(const Value: TEditType);
begin
  Self.Enabled := (Value <> etBrowse);
  FEditType := Value;
end;

procedure TfmEdit.SetOnCancelChange(const Value: TChangeEvent);
begin
  DialogForm.OnCancelChange := Value;
end;

procedure TfmEdit.SetOnSaveChange(const Value: TChangeEvent);
begin
  DialogForm.OnSaveChange := Value;
end;

procedure TfmEdit.ShowModal;
begin
  Self.InitFrame(nil);

  if FEditType = etInsert then
  begin
    // � ������ ���������� ������
    DialogForm.Caption := '��������';    
  end else
  if FEditType = etEdit then
  begin
    // � ������ ������-���� ��������� ������
    DialogForm.Caption := '��������������';
  end;
  
  inherited ShowModal;
end;

end.
