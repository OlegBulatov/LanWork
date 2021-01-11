unit DBGridEx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids;

type
  TDBGridEx = class(TDBGrid)
  private
    FOnTopLeftChanged: TNotifyEvent;
    FOnColWidthsChanged: TNotifyEvent;
  protected
    procedure TopLeftChanged; override;
    procedure ColWidthsChanged; override;
  public
  published
    property OnTopLeftChanged: TNotifyEvent read FOnTopLeftChanged write FOnTopLeftChanged;
    property OnColWidthsChanged: TNotifyEvent read FOnColWidthsChanged write FOnColWidthsChanged;
  end;

procedure Register;

implementation

procedure TDBGridEx.TopLeftChanged;
begin
  inherited TopLeftChanged;
  if Assigned(FOnTopLeftChanged) then FOnTopLeftChanged(Self);
end;

procedure TDBGridEx.ColWidthsChanged;
begin
  inherited ColWidthsChanged;
  if Assigned(FOnColWidthsChanged) then FOnColWidthsChanged(Self);
end;

procedure Register;
begin
  RegisterComponents('R_Viewer', [TDBGridEx]);
end;

end.
