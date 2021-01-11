unit K001_ReestersGridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, ExtCtrls, RXSplit, Buttons, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, RXCtrls,
  K001_ReesterIssuersMainFrame, K001_ReesterIssuersAllFrame,
  K001_ReesterEmissionsAllFrame, K001_ReesterEmissionsMainFrame, K001_ToolArrowsForm;

type
  TK001_ReestersGrid = class(TfmParent)
    paTop: TPanel;
    RxSplitter1: TRxSplitter;
    paBottom: TPanel;
    paTopLeft: TPanel;
    RxSplitter2: TRxSplitter;
    paTopRight: TPanel;
    paBottomLeft: TPanel;
    RxSplitter3: TRxSplitter;
    paBottomRight: TPanel;
    GridIssuersAll: TK001_ReesterIssuersAll;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    RxLabel2: TRxLabel;
    GridIssuersMain: TK001_ReesterIssuersMain;
    actLinkTopToRight: TAction;
    actLinkTopToLeft: TAction;
    Panel3: TPanel;
    RxLabel3: TRxLabel;
    Panel4: TPanel;
    RxLabel4: TRxLabel;
    GridEmissionsAll: TK001_ReesterEmissionsAll;
    actLinkBtmToTopLeft: TAction;
    GridEmissionsMain: TK001_ReesterEmissionsMain;
    actLinkTopToBtmLeft: TAction;
    actLinkBtmToRight: TAction;
    actLinkBtmToLeft: TAction;
    actLinkBtmToTopRight: TAction;
    actLinkTopToBtmRight: TAction;
    procedure FrameResize(Sender: TObject);
    procedure paTopLeftResize(Sender: TObject);
    procedure paBottomLeftResize(Sender: TObject);
    procedure RxSplitter2Resize(Sender: TObject);
    procedure actLinkTopToRightUpdate(Sender: TObject);
    procedure actLinkTopToRightExecute(Sender: TObject);
    procedure actLinkTopToLeftUpdate(Sender: TObject);
    procedure actLinkTopToLeftExecute(Sender: TObject);
    procedure actLinkBtmToTopLeftUpdate(Sender: TObject);
    procedure actLinkBtmToTopLeftExecute(Sender: TObject);
    procedure actLinkTopToBtmLeftUpdate(Sender: TObject);
    procedure actLinkTopToBtmLeftExecute(Sender: TObject);
    procedure actLinkBtmToRightUpdate(Sender: TObject);
    procedure actLinkBtmToRightExecute(Sender: TObject);
    procedure actLinkBtmToLeftUpdate(Sender: TObject);
    procedure actLinkBtmToLeftExecute(Sender: TObject);
    procedure actLinkBtmToTopRightUpdate(Sender: TObject);
    procedure actLinkBtmToTopRightExecute(Sender: TObject);
    procedure actLinkTopToBtmRightUpdate(Sender: TObject);
    procedure actLinkTopToBtmRightExecute(Sender: TObject);
    procedure RxSplitter2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RxSplitter3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RxSplitter1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridEmissionsAllactLinkEmissionUpdate(Sender: TObject);
    procedure GridEmissionsAllactLinkEmissionExecute(Sender: TObject);
    procedure GridEmissionsAllactUnlinkEmissionUpdate(Sender: TObject);
    procedure GridEmissionsAllactUnlinkEmissionExecute(Sender: TObject);
    procedure GridIssuersAllactLinkIssuerUpdate(Sender: TObject);
    procedure GridIssuersAllactLinkIssuerExecute(Sender: TObject);
    procedure GridIssuersAllactUnlinkIssuerUpdate(Sender: TObject);
    procedure GridIssuersAllactUnlinkIssuerExecute(Sender: TObject);
    procedure RxLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RxLabel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RxLabel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FResizes: integer;
    FArrows: TK001_ToolArrows;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Free;
    procedure InitFrame(Sender: TObject);  override;

  end;

var
  K001_ReestersGrid: TK001_ReestersGrid;

implementation

uses
  Db, untMessages;

{$R *.DFM}

{ TK001_ReestersGrid }

constructor TK001_ReestersGrid.Create(AOwner: TComponent);
begin
  inherited;
  FResizes := 0;
  FArrows := TK001_ToolArrows.Create(Self);
  FArrows.Parent := Self;
  FArrows.Width := 139;
  FArrows.sbTopToLeft.Action := actLinkTopToLeft;
  FArrows.sbTopToRight.Action := actLinkTopToRight;
  FArrows.sbBottomToLeft.Action := actLinkBtmToLeft;
  FArrows.sbBottomToRight.Action := actLinkBtmToRight;
  FArrows.sbLeftToTop.Action := actLinkBtmToTopLeft;
  FArrows.sbLeftToBottom.Action := actLinkTopToBtmLeft;
  FArrows.sbRightToTop.Action := actLinkBtmToTopRight;
  FArrows.sbRightToBottom.Action := actLinkTopToBtmRight;
end;

procedure TK001_ReestersGrid.Free;
begin
  FArrows.Release;
end;

procedure TK001_ReestersGrid.InitFrame(Sender: TObject);
begin
  GridIssuersAll.InitFrame(Self);
  GridIssuersMain.InitFrame(Self);
  GridEmissionsAll.InitFrame(Self);
  GridEmissionsMain.InitFrame(Self);
  inherited;
end;

procedure TK001_ReestersGrid.FrameResize(Sender: TObject);
begin
  if FResizes = 1 then
    begin
    paTop.Height := (ClientHeight - RxSplitter1.Height) div 2;
    paTopLeft.Width := (ClientWidth - RxSplitter2.Width) div 2;
    paBottomLeft.Width := paTopLeft.Width;

//    FArrows.Left := (ClientWidth - FArrows.Width) div 2;
    FArrows.Left := paTopLeft.Width - (FArrows.Width div 2) + 1;
    FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;
    end;

  FResizes := FResizes + 1;
end;

procedure TK001_ReestersGrid.paTopLeftResize(Sender: TObject);
begin
  if paBottomLeft.Width <> paTopLeft.Width then
    begin
    paBottomLeft.Width := paTopLeft.Width;
//    sbLeftToTop.Left := (paTopLeft.Width - sbLeftToTop.Width * 3) div 2;
//    sbLeftToBottom.Left := sbLeftToTop.Left + sbLeftToTop.Width * 2;
//    sbRightToTop.Left := paTopLeft.Width + RxSplitter2.Width + (ClientWidth - paTopLeft.Width - RxSplitter2.Width - sbRightToTop.Width * 3) div 2;
//    sbRightToBottom.Left := sbRightToTop.Left + sbRightToTop.Width * 2;

    FArrows.Left := paTopLeft.Width - (FArrows.Width div 2) + 1;
    FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;
    end;
end;

procedure TK001_ReestersGrid.paBottomLeftResize(Sender: TObject);
begin
  if paTopLeft.Width <> paBottomLeft.Width then
    begin
    paTopLeft.Width := paBottomLeft.Width;
//    sbLeftToTop.Left := (paTopLeft.Width - sbLeftToTop.Width * 3) div 2;
//    sbLeftToBottom.Left := sbLeftToTop.Left + sbLeftToTop.Width * 2;
//    sbRightToTop.Left := paBottomLeft.Width + RxSplitter3.Width + (ClientWidth - paBottomLeft.Width - RxSplitter3.Width - sbRightToTop.Width * 3) div 2;
//    sbRightToBottom.Left := sbRightToTop.Left + sbRightToTop.Width * 2;
    end;
end;

procedure TK001_ReestersGrid.RxSplitter2Resize(Sender: TObject);
begin
//  sbTopToLeft.Top := (RxSplitter2.Height - sbTopToLeft.Height * 3) div 2;
//  sbTopToRight.Top := sbTopToLeft.Top + sbTopToLeft.Height * 2;

//  FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;
end;

procedure TK001_ReestersGrid.actLinkTopToRightUpdate(Sender: TObject);
begin
  actLinkTopToRight.Enabled := not GridIssuersAll.odsList.IsEmpty
                               and (GridIssuersAll.odsListREC_TYPE.AsFloat <> 0);
end;

procedure TK001_ReestersGrid.actLinkTopToRightExecute(Sender: TObject);
begin
  GridIssuersMain.ShowMain(GridIssuersAll.odsListT028_PARENT_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkTopToLeftUpdate(Sender: TObject);
begin
  actLinkTopToLeft.Enabled := not GridIssuersMain.odsList.IsEmpty
                              and (GridIssuersMain.odsListREC_TYPE.AsFloat = 1);
end;

procedure TK001_ReestersGrid.actLinkTopToLeftExecute(Sender: TObject);
begin
  GridIssuersAll.ShowLinked(GridIssuersMain.odsListT028_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkBtmToTopLeftUpdate(Sender: TObject);
begin
  actLinkBtmToTopLeft.Enabled := not GridEmissionsAll.odsList.IsEmpty;
end;

// Показать эмитентов выделенных эмиссий
procedure TK001_ReestersGrid.actLinkBtmToTopLeftExecute(Sender: TObject);
var
  bm: TBookmark;
  i: integer;
  vT028_IDs: string;
begin
  bm := GridEmissionsAll.odsList.GetBookmark;

  if GridEmissionsAll.xxxDBGrid.SelectedRows.Count = 0 then
    GridEmissionsAll.xxxDBGrid.SelectedRows.CurrentRowSelected := True;

  vT028_IDs := '';
  for i := 0 to GridEmissionsAll.xxxDBGrid.SelectedRows.Count - 1 do
    begin
    GridEmissionsAll.odsList.GotoBookmark(GridEmissionsAll.xxxDBGrid.SelectedRows.Items[I]);
    if vT028_IDs <> '' then
      vT028_IDs := vT028_IDs + ', ';

    vT028_IDs := vT028_IDs + GridEmissionsAll.odsListT028_ID.AsString;
    end;
//  GridEmissionsAll.xxxDBGrid.SelectedRows.Clear;
  GridEmissionsAll.odsList.GotoBookmark(bm);
  GridEmissionsAll.odsList.FreeBookmark(bm);

  GridIssuersAll.ShowIssuers(vT028_IDs);
end;

procedure TK001_ReestersGrid.actLinkTopToBtmLeftUpdate(Sender: TObject);
begin
  actLinkTopToBtmLeft.Enabled := not GridIssuersAll.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.actLinkTopToBtmLeftExecute(Sender: TObject);
begin
  GridEmissionsAll.ShowEmissions(GridIssuersAll.odsListT028_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkBtmToRightUpdate(Sender: TObject);
begin
  actLinkBtmToRight.Enabled := not GridEmissionsAll.odsList.IsEmpty
                               and (GridEmissionsAll.odsListREC_TYPE.AsFloat <> 0)
end;

procedure TK001_ReestersGrid.actLinkBtmToRightExecute(Sender: TObject);
begin
  GridEmissionsMain.ShowMain(GridEmissionsAll.odsListT030_PARENT_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkBtmToLeftUpdate(Sender: TObject);
begin
  actLinkBtmToLeft.Enabled := not GridEmissionsMain.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.actLinkBtmToLeftExecute(Sender: TObject);
begin
  GridEmissionsAll.ShowLinked(GridEmissionsMain.odsListT030_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkBtmToTopRightUpdate(Sender: TObject);
begin
  actLinkBtmToTopRight.Enabled := not GridEmissionsMain.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.actLinkBtmToTopRightExecute(Sender: TObject);
begin
  GridIssuersMain.ShowMain(GridEmissionsMain.odsListT028_ID.AsFloat);
end;

procedure TK001_ReestersGrid.actLinkTopToBtmRightUpdate(Sender: TObject);
begin
  actLinkTopToBtmRight.Enabled := not GridIssuersMain.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.actLinkTopToBtmRightExecute(Sender: TObject);
begin
  GridEmissionsMain.ShowEmissions(GridIssuersMain.odsListT028_ID.AsFloat);
end;

procedure TK001_ReestersGrid.RxSplitter1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FArrows.Left := paTopLeft.Width - (FArrows.Width div 2) + 1;
  FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;

  if (FArrows.Visible = False) and MouseOverControl(FArrows) then
    begin
    FArrows.Visible := True;

    if FArrows.Timer1.Enabled = False then
      FArrows.Timer1.Enabled := True;
    end;
end;

procedure TK001_ReestersGrid.RxSplitter2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FArrows.Left := paTopLeft.Width - (FArrows.Width div 2) + 1;
  FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;

  if (FArrows.Visible = False) and MouseOverControl(FArrows) then
    begin
    FArrows.Visible := True;

    if FArrows.Timer1.Enabled = False then
      FArrows.Timer1.Enabled := True;
    end;
end;

procedure TK001_ReestersGrid.RxSplitter3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FArrows.Left := paTopLeft.Width - (FArrows.Width div 2) + 1;
  FArrows.Top := paTopLeft.Height - (FArrows.Height div 2) + 1;

  if (FArrows.Visible = False) and MouseOverControl(FArrows) then
    begin
    FArrows.Visible := True;

    if FArrows.Timer1.Enabled = False then
      FArrows.Timer1.Enabled := True;
    end;
end;

procedure TK001_ReestersGrid.GridEmissionsAllactLinkEmissionUpdate(
  Sender: TObject);
begin
  GridEmissionsAll.actLinkEmission.Enabled := not GridEmissionsAll.odsList.IsEmpty
                                              and GridEmissionsAll.odsListT030_PARENT_ID.IsNull
                                              and not GridEmissionsMain.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.GridEmissionsAllactLinkEmissionExecute(
  Sender: TObject);
begin
  if GridEmissionsAll.odsListT027_ID.AsFloat <> GridEmissionsMain.odsListT027_ID.AsFloat then
    if TAppMessages.ShowConfirmation('Типы ц.б. не совпадают! Продолжить?') = False then Exit;
  if GridEmissionsAll.odsListT028_ID.asFloat <> GridEmissionsMain.odsListT028_ID.AsFloat then
    if GridEmissionsAll.odsListT028_INN.AsString <> GridEmissionsMain.odsListT028_INN.AsString then
      if TAppMessages.ShowConfirmation('Эмитенты не совпадают! Продолжить?') = False then Exit;
  if GridEmissionsAll.odsListT026_ID.asFloat <> GridEmissionsMain.odsListT026_ID.AsFloat then
    if TAppMessages.ShowConfirmation('Рег. номера не совпадают! Продолжить?') = False then Exit;
  if GridEmissionsAll.odsListT010_ID.asFloat <> GridEmissionsMain.odsListT010_ID.AsFloat then
    if TAppMessages.ShowConfirmation('Коды ISIN не совпадают! Продолжить?') = False then Exit;

  GridEmissionsAll.oqLink.SetVariable('T030_ID', GridEmissionsAll.odsListT030_ID.AsFloat);
  GridEmissionsAll.oqLink.SetVariable('T030_PARENT_ID', GridEmissionsMain.odsListT030_ID.AsFloat);
  GridEmissionsAll.oqLink.Execute;
  GridEmissionsAll.RefreshDataAfterChange;
end;

procedure TK001_ReestersGrid.GridEmissionsAllactUnlinkEmissionUpdate(
  Sender: TObject);
begin
  GridEmissionsAll.actUnlinkEmission.Enabled := not GridEmissionsAll.odsList.IsEmpty
                                                and not GridEmissionsAll.odsListT030_PARENT_ID.IsNull
                                                and not (GridEmissionsAll.odsListT030_ID.AsFloat = GridEmissionsAll.odsListT030_PARENT_ID.AsFloat);
end;

procedure TK001_ReestersGrid.GridEmissionsAllactUnlinkEmissionExecute(
  Sender: TObject);
begin
  GridEmissionsAll.oqUnLink.SetVariable('T030_ID', GridEmissionsAll.odsListT030_ID.AsFloat);
  GridEmissionsAll.oqUnLink.Execute;
  GridEmissionsAll.RefreshDataAfterChange;
end;

procedure TK001_ReestersGrid.GridIssuersAllactLinkIssuerUpdate(
  Sender: TObject);
begin
  GridIssuersAll.actLinkIssuer.Enabled := not GridIssuersAll.odsList.IsEmpty
                                          and GridIssuersAll.odsListT028_PARENT_ID.IsNull
                                          and not GridIssuersMain.odsList.IsEmpty;
end;

procedure TK001_ReestersGrid.GridIssuersAllactLinkIssuerExecute(
  Sender: TObject);
begin
  if GridIssuersAll.odsListT025_ID.AsFloat <> GridIssuersMain.odsListT025_ID.AsFloat then
    if TAppMessages.ShowConfirmation('Типы контрагентов не совпадают! Продолжить?') = False then Exit;
  if GridIssuersAll.odsListT028_INN.asString <> GridIssuersMain.odsListT028_INN.AsString then
    if TAppMessages.ShowConfirmation('ИНН не совпадают! Продолжить?') = False then Exit;
  if GridIssuersAll.odsListT028_COUNTRY_ID.asString <> GridIssuersMain.odsListT028_COUNTRY_ID.AsString then
    if TAppMessages.ShowConfirmation('Коды страны не совпадают! Продолжить?') = False then Exit;
  if GridIssuersAll.odsListT028_CODE.asString <> GridIssuersMain.odsListT028_CODE.AsString then
    if TAppMessages.ShowConfirmation('TIN не совпадают! Продолжить?') = False then Exit;

  GridIssuersAll.oqLink.SetVariable('T028_ID', GridIssuersAll.odsListT028_ID.AsFloat);
  GridIssuersAll.oqLink.SetVariable('T028_PARENT_ID', GridIssuersMain.odsListT028_ID.AsFloat);
  GridIssuersAll.oqLink.Execute;
  GridIssuersAll.RefreshDataAfterChange;
end;

procedure TK001_ReestersGrid.GridIssuersAllactUnlinkIssuerUpdate(
  Sender: TObject);
begin
  GridIssuersAll.actUnlinkIssuer.Enabled := not GridIssuersAll.odsList.IsEmpty
                                            and not GridIssuersAll.odsListT028_PARENT_ID.IsNull
                                            and not (GridIssuersAll.odsListT028_ID.AsFloat = GridIssuersAll.odsListT028_PARENT_ID.AsFloat);
end;

procedure TK001_ReestersGrid.GridIssuersAllactUnlinkIssuerExecute(
  Sender: TObject);
begin
  GridIssuersAll.oqUnLink.SetVariable('T028_ID', GridIssuersAll.odsListT028_ID.AsFloat);
  GridIssuersAll.oqUnLink.Execute;
  GridIssuersAll.RefreshDataAfterChange;
end;

procedure TK001_ReestersGrid.RxLabel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssRight in Shift) and (ssCtrl in Shift) and (ssShift in Shift) then
    GridIssuersAll.CanEdit := not GridIssuersAll.CanEdit;
end;

procedure TK001_ReestersGrid.RxLabel3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssRight in Shift) and (ssCtrl in Shift) and (ssShift in Shift) then
    GridEmissionsAll.CanEdit := not GridEmissionsAll.CanEdit;
end;

procedure TK001_ReestersGrid.RxLabel2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssRight in Shift) and (ssCtrl in Shift) and (ssShift in Shift) then
    GridIssuersMain.CanEdit := not GridIssuersMain.CanEdit;
end;

end.
