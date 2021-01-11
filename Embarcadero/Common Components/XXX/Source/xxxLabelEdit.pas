unit xxxLabelEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  stdctrls;

type
  TLabelEdit = class(TCustomControl)
  private
    FEdit: TEdit;
    FLabel: TLabel;
    FSpacing: Integer;
    function GetEditText: string;
    function GetLabelText: string;
    procedure SetEditText(const Value: string);
    procedure SetLabelText(const Value: string);
    procedure ArrangeContols;
    procedure SetSpacing(const Value: Integer);
    function GetEditWidth: Integer;
    function GetLabelWidth: Integer;
    procedure SetEditWidth(const Value: Integer);
    procedure SetLabelWidth(const Value: Integer);
  protected
    procedure WmSize(var Message: TMessage); message WM_SIZE;
    procedure CMFontChange(var Message: TMessage); message CM_FONTCHANGED;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property EditText: string read GetEditText write SetEditText;
    property EditWidth: Integer read GetEditWidth write SetEditWidth;
    property LabelText: string read GetLabelText write SetLabelText;
    property LabelWidth: Integer read GetLabelWidth write SetLabelWidth;
    property Spacing: Integer read FSpacing write SetSpacing default 4;
    property Font;
  end;

procedure Register;

implementation

uses Math;

procedure Register;
begin
  RegisterComponents('XXX', [TLabelEdit]);
end;

{ TLabelEdit }

procedure TLabelEdit.ArrangeContols;
begin
  FLabel.Height := Self.Height;
  FEdit.Width := Self.Width - FEdit.Left;
  FEdit.Height := Self.Height;
end;

procedure TLabelEdit.CMFontChange(var Message: TMessage);
begin
  inherited;
  (*
  FLabel.Top := 0;
  FLabel.Height := 15;
  FEdit.Top := 0;
  FEdit.Height := 15;
  *)
end;

constructor TLabelEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSpacing := 4;

  FLabel := TLabel.Create(Self);
  FLabel.Parent := Self;
  FLabel.AutoSize := False;
  FLabel.Layout := tlCenter;
  FLabel.Left := 0;
  FLabel.Top := 0;
  FLabel.Visible := True;
  //FLabel.Caption := 'ddd';

  FEdit := TEdit.Create(Self);
  FEdit.Parent := Self;
  FEdit.Left := FLabel.Left + FLabel.Width + FSpacing;  
  FEdit.Top := 0;
  FEdit.Visible := True;
  //FEdit.Text := 'ddd';

  Width := FLabel.Width + FSpacing + FEdit.Width;
  Height := 21;
  //Height := Max(FEdit.Height, FLabel.Height);

  ArrangeContols;
end;

function TLabelEdit.GetEditText: string;
begin
  Result := FEdit.Text;
end;

function TLabelEdit.GetEditWidth: Integer;
begin
  Result := FEdit.Width;
end;

function TLabelEdit.GetLabelText: string;
begin
  Result := FLabel.Caption;
end;

function TLabelEdit.GetLabelWidth: Integer;
begin
  Result := FLabel.Width;
end;

procedure TLabelEdit.SetEditText(const Value: string);
begin
  FEdit.Text := Value;
end;

procedure TLabelEdit.SetEditWidth(const Value: Integer);
begin
  FEdit.Width := Value;
end;

procedure TLabelEdit.SetLabelText(const Value: string);
begin
  FLabel.Caption := Value;
end;

procedure TLabelEdit.SetLabelWidth(const Value: Integer);
begin
  FLabel.Width := Value;
end;

procedure TLabelEdit.SetSpacing(const Value: Integer);
begin
  if Value <> FSpacing then
  begin
    FSpacing := Value;
    //Invalidate;
  end;
end;

procedure TLabelEdit.WmSize(var Message: TMessage);
begin
  inherited;
  ArrangeContols;
end;

end.
 