unit fm028_HDoubleListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, ExtCtrls, StdCtrls, RXSplit;

type
  TfmHDoubleList = class(TfmParent)
    PanelTop: TPanel;
    PanelBottom: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Splitter1: TRxSplitter;
    procedure FrameResize(Sender: TObject); 
  private
  protected
    FResizes: Integer;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  fmHDoubleList: TfmHDoubleList;

implementation

{$R *.DFM}

constructor TfmHDoubleList.Create(AOwner: TComponent);
begin
  inherited;
  FResizes := 0;
end;

procedure TfmHDoubleList.FrameResize(Sender: TObject);
begin
  if FResizes = 1 then
    begin
    PanelTop.Height := (ClientHeight - Splitter1.Height) div 2;
    end;
  FResizes := FResizes + 1;
end;

end.
