unit z001_Tabs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm030_WizardFrame, ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
  fm031_WizardPageFrame, z001_Compare_Form ,z001_wp1, z001_wp3, z001_wp2, Menus, untInterfaces,
  Mask, DBCtrls;

type
  Tz001_TABS_frame = class(TfmWizard)
    Page1: Tz001_wp1frame;
    Page2: Tz001_wp2_frame;
    TabSheet3: TTabSheet;
    Page3: Tz001_wp3_frame;
 //   procedure z001_p1_frame1xxxDBGridDblClick(Sender: TObject);
 //   procedure z001_p2_frame1xxxDBGridDblClick(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actBackExecute(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure PageControlChanging(Sender: TObject;  var AllowChange: Boolean);
  private
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  z001_TABS_frame: Tz001_TABS_frame;

implementation

uses grids, db;
{$R *.DFM}

{ Tz001TABs_frame }

procedure Tz001_TABS_frame.InitFrame;
begin
  inherited;
 //  FIsLoaded := False;
 //  z001_wp1frame1.Parent := Self;
  Page1.Grid.RefreshData;
  Page3.z001_p4_frame1.DoThis := Page2;
  Page2.SetSumDataSource(Page1.Grid.dsList);
  Page3.SetSumDataSource(Page2.z001_p2_frame1.dsList);
end;


{procedure Tz001_TABS_frame.z001_p1_frame1xxxDBGridDblClick(
  Sender: TObject);
  var X: integer;Y: integer; cd: TGridCoord ; mousepoint: TPoint;
begin
  if not z001_wp1frame1.z001_p1_frame1.odsList.IsEmpty then
    begin
    mousepoint := z001_wp1frame1.z001_p1_frame1.xxxDBGrid.screentoclient(mouse.CursorPos);
    cd := z001_wp1frame1.z001_p1_frame1.xxxDBGrid.MouseCoord(mousepoint.X, mousepoint.Y);
    if cd.X = 16 then exit;
    z001_wp2_frame1.z001_p2_frame1.REPORT := z001_wp1frame1.z001_p1_frame1.odsListT002_ID.AsFloat;
    Self.PageControl.ActivePageIndex := 1;
    z001_wp2_frame1.z001_p2_frame1.RefreshData;
    end;
  // end;

end;

procedure Tz001_TABS_frame.z001_p2_frame1xxxDBGridDblClick(
  Sender: TObject);
var X: integer;Y: integer; cd: TGridCoord ; mousepoint: TPoint;
begin
    if not z001_wp2_frame1.z001_p2_frame1.odsList.IsEmpty then
    begin
    mousepoint := z001_wp2_frame1.z001_p2_frame1.xxxDBGrid.screentoclient(mouse.CursorPos);
    cd := z001_wp2_frame1.z001_p2_frame1.xxxDBGrid.MouseCoord(mousepoint.X, mousepoint.Y);
    if cd.X = 16 then exit;


   z001_wp3_frame1.z001_p4_frame1.SEC_ID := z001_wp2_frame1.z001_p2_frame1.odsListSEC_ID.AsFloat;
    z001_wp3_frame1.z001_p4_frame1.REPORT := z001_wp1frame1.z001_p1_frame1.odsListT002_ID.AsFloat;
    Self.PageControl.ActivePageIndex := 2;
    z001_wp3_frame1.z001_p4_frame1.RefreshData;
    end;
end;
}
procedure Tz001_TABS_frame.actNextExecute(Sender: TObject);
begin
  if Self.PageControl.ActivePageIndex=0 then
    begin
    Page2.z001_p2_frame1.REPORT := Page1.Grid.odsListT002_ID.AsFloat;
    Page2.z001_p2_frame1.RefreshData;
    end;
  if Self.PageControl.ActivePageIndex=1 then
    begin
    Page3.z001_p4_frame1.v_counter := 0;
    Page3.z001_p4_frame1.REPORT := Page1.Grid.odsListT002_ID.AsFloat;
    Page3.z001_p4_frame1.SEC_ID := Page2.z001_p2_frame1.odsListSEC_ID.AsFloat;
    Page3.z001_p4_frame1.btComp.Enabled := FALSE;
    Page3.z001_p4_frame1.RefreshData;
    end;
  inherited;
end;

procedure Tz001_TABS_frame.actBackExecute(Sender: TObject);
var
  vT002_id:  double;
  vSec_id:  double;
begin
 if Self.PageControl.ActivePageIndex=2 then
   begin
   vsec_id   := Page2.z001_p2_frame1.odsListSEC_ID.AsFloat;
   Page2.z001_p2_frame1.RefreshData;
   Page2.z001_p2_frame1.odsList.Locate('SEC_ID', vsec_id, [loCaseInsensitive]);
   end;
 if Self.PageControl.ActivePageIndex=1 then
   begin
   vT002_ID := Page1.Grid.odsListT002_ID.AsFloat;
   Page1.Grid.RefreshData;
   Page1.Grid.odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
   end;
  inherited;
end;

procedure Tz001_TABS_frame.actFinishExecute(Sender: TObject);
var
  vT002_id:  double;
begin
  vT002_ID := Page1.Grid.odsListT002_ID.AsFloat;
  Page1.Grid.RefreshData;
  Page1.Grid.odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
  inherited;
end;

procedure Tz001_TABS_frame.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange := False;
end;

end.
