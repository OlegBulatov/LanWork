unit PanelEn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TPanelEn = class(TPanel)
  private
    { Private declarations }
    function GetEnabled: Boolean; reintroduce;
    procedure SetEnabled(Value: Boolean); reintroduce;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
  published
    { Published declarations }
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('R_Viewer', [TPanelEn]);
end;

procedure TPanelEn.Paint;
var
  Rect: TRect;
  TopColor, BottomColor: TColor;
  FontHeight: Integer;
const
  Alignments: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;

begin
  Rect := GetClientRect;
  if BevelOuter <> bvNone then
    begin
    AdjustColors(BevelOuter);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
    end;
  Frame3D(Canvas, Rect, Color, Color, BorderWidth);
  if BevelInner <> bvNone then
    begin
    AdjustColors(BevelInner);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
    end;
  with Canvas do
    begin
    Brush.Color := Color;
    FillRect(Rect);
    Brush.Style := bsClear;
    Font := Self.Font;
    FontHeight := TextHeight('W');
    with Rect do
      begin
      Top := ((Bottom + Top) - FontHeight) div 2;
      Bottom := Top + FontHeight;
      end;
    if not Enabled then
      begin
      OffsetRect(Rect, 1, 1);
      Font.Color := clBtnHighlight;
      DrawText(Handle, PChar(Caption), -1, Rect, (DT_EXPANDTABS or DT_VCENTER) or Alignments[Alignment]);
      OffsetRect(Rect, -1, -1);
      Font.Color := clBtnShadow;
      DrawText(Handle, PChar(Caption), -1, Rect, (DT_EXPANDTABS or DT_VCENTER) or Alignments[Alignment]);
      end
    else
      DrawText(Handle, PChar(Caption), -1, Rect, (DT_EXPANDTABS or DT_VCENTER) or Alignments[Alignment]);
    end;
end;

function TPanelEn.GetEnabled: Boolean;
begin
  Result := inherited Enabled;
end;

procedure TPanelEn.SetEnabled(Value: Boolean);
begin
  inherited Enabled := Value;
  Paint;
end;

end.
