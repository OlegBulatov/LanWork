unit K001_ToolArrowsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls;

type
  TK001_ToolArrows = class(TForm)
    sbTopToLeft: TSpeedButton;
    sbTopToRight: TSpeedButton;
    sbLeftToBottom: TSpeedButton;
    sbRightToBottom: TSpeedButton;
    sbLeftToTop: TSpeedButton;
    sbBottomToRight: TSpeedButton;
    sbBottomToLeft: TSpeedButton;
    sbRightToTop: TSpeedButton;
    Timer1: TTimer;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

function MouseOverControl(const ctrl: TControl): boolean;

var
  K001_ToolArrows: TK001_ToolArrows;

implementation

{$R *.DFM}

{ TK001_ToolButtonsVert }

function MouseOverControl(const ctrl: TControl): boolean;
var
  sRect: TRect;
begin
  sRect := Rect(ctrl.ClientToScreen(Point(0, 0)).x,
                ctrl.ClientToScreen(Point(0, 0)).y,
                ctrl.ClientToScreen(Point(ctrl.Width, ctrl.Height)).x,
                ctrl.ClientToScreen(Point(ctrl.Width, ctrl.Height)).y);
  Result := PtInRect(sRect, Mouse.CursorPos);
end;

constructor TK001_ToolArrows.Create(AOwner: TComponent);
begin
  inherited;
  Width := 139;
end;

procedure TK001_ToolArrows.Timer1Timer(Sender: TObject);
begin
  if not (Self.Visible and MouseOverControl(Self))then
    begin
    if Timer1.Enabled = True then
      Timer1.Enabled := False;
    if Self.Visible = True then
      Self.Visible := False;
    end;
end;

end.
