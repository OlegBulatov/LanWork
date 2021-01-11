unit fm029_VDoubleListEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm002_EditFrame, ActnList, ExtCtrls, StdCtrls, Buttons, RXSplit,
  dm005_MainData, dm006_PictersData, Oracle, fm008_DBObjectFrame;

type
  TfmVDoubleListEdit = class(TfmEdit)
    PanelLeft: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Splitter1: TRxSplitter;
    PanelRight: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    actLeft: TAction;
    actLeftAll: TAction;
    actRight: TAction;
    actRightAll: TAction;
    Splitter2: TRxSplitter;
    PanelB: TPanel;
    sbLeft: TSpeedButton;
    sbLeftAll: TSpeedButton;
    sbRightAll: TSpeedButton;
    sbRight: TSpeedButton;
    oqLeft: TOracleQuery;
    oqLeftAll: TOracleQuery;
    oqRightAll: TOracleQuery;
    oqRight: TOracleQuery;
    actUp: TAction;
    actDn: TAction;
    PanelC: TPanel;
    sbUp: TSpeedButton;
    sbDn: TSpeedButton;
    procedure FrameResize(Sender: TObject);
    procedure actLeftUpdate(Sender: TObject);
    procedure actLeftAllUpdate(Sender: TObject);
    procedure actRightUpdate(Sender: TObject);
    procedure actRightAllUpdate(Sender: TObject);
    procedure actUpUpdate(Sender: TObject);
    procedure actDnUpdate(Sender: TObject);
  private
    FLeftList: TfmDBObject;
    FRightList: TfmDbObject;
  protected
    procedure DoBeforeEdit; virtual;
  public
    property LeftListFrame: TfmDbObject read FLeftList write FLeftList;
    property RightListFrame: TfmDbObject read FRightList write FRightList;

    constructor Create(AOwner: TComponent); override;

    procedure ShowModal; override;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  fmVDoubleListEdit: TfmVDoubleListEdit;

implementation

{$R *.DFM}

{ TfmVDoubleListEdit }

constructor TfmVDoubleListEdit.Create(AOwner: TComponent);
begin
  inherited;
  PanelLeft.Width := (ClientWidth - Splitter1.Width -
		      PanelB.Width - Splitter2.Width);
  if PanelC.Visible then
    PanelLeft.Width := PanelLeft.Width - PanelC.Width;
    
  PanelLeft.Width := PanelLeft.Width div 2;
end;

procedure TfmVDoubleListEdit.FrameResize(Sender: TObject);
begin
  sbLeft.Top := (PanelB.Height - sbLeft.Height * 9) div 2;
  sbLeftAll.Top := sbLeft.Top + sbLeft.Height * 2;
  sbRightAll.Top := sbLeftAll.Top + sbLeft.Height * 4;
  sbRight.Top := sbRightAll.Top + sbLeft.Height * 2;

  sbUp.Top := (PanelC.Height - sbUp.Height * 2 - 10) div 2;
  sbDn.Top := sbUp.Top + sbUp.Height + 10;
end;

procedure TfmVDoubleListEdit.InitFrame(Sender: TObject);
begin
  if Assigned(LeftListFrame) then
    LeftListFrame.InitFrame(Self);
  if Assigned(RightListFrame) then
    RightListFrame.InitFrame(Self);
  DoBeforeEdit;
  inherited;
end;

procedure TfmVDoubleListEdit.DoBeforeEdit;
begin
// To be overrided to do something useful
end;

procedure TfmVDoubleListEdit.ShowModal;
begin
  DialogForm.BorderStyle := bsSizeable;
  inherited;
end;

procedure TfmVDoubleListEdit.actLeftUpdate(Sender: TObject);
begin
  if Assigned(LeftListFrame) then
    actLeft.Enabled := not LeftListFrame.odsList.IsEmpty
  else
    actLeft.Enabled := FALSE;
end;

procedure TfmVDoubleListEdit.actLeftAllUpdate(Sender: TObject);
begin
  if Assigned(LeftListFrame) then
    actLeftAll.Enabled := not LeftListFrame.odsList.IsEmpty
  else
    actLeftAll.Enabled := FALSE;
end;

procedure TfmVDoubleListEdit.actRightUpdate(Sender: TObject);
begin
  if Assigned(RightListFrame) then
    actRight.Enabled := not RightListFrame.odsList.IsEmpty
  else
    actRight.Enabled := FALSE;
end;

procedure TfmVDoubleListEdit.actRightAllUpdate(Sender: TObject);
begin
  if Assigned(RightListFrame) then
    actRightAll.Enabled := not RightListFrame.odsList.IsEmpty
  else
    actRightAll.Enabled := FALSE;
end;

procedure TfmVDoubleListEdit.actUpUpdate(Sender: TObject);
begin
  if Assigned(RightListFrame) then
    actUp.Enabled := not RightListFrame.odsList.IsEmpty
  else
    actUp.Enabled := FALSE;
end;

procedure TfmVDoubleListEdit.actDnUpdate(Sender: TObject);
begin
  if Assigned(RightListFrame) then
    actDn.Enabled := not RightListFrame.odsList.IsEmpty
  else
    actDn.Enabled := FALSE;
end;

end.
