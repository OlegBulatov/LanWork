unit z001TABs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm030_WizardFrame, ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, z001_p1,
  fm031_WizardPageFrame, z001_wp1,  z001_wp3, zwp_2;

type
  Tz001TABs_frame = class(TfmWizard)
    z001_wp1frame1: Tz001_wp1frame;
    z001_wp21: Tz001_wp2;
    TabSheet3: TTabSheet;
    z001_wp3_frame1: Tz001_wp3_frame;
    procedure z001_p1_frame1xxxDBGridDblClick(Sender: TObject);
    procedure z001_p2_frame1xxxDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure InitFrame(Sender: TObject); override;
    { Public declarations }
  end;

var
  z001TABs_frame: Tz001TABs_frame;

implementation
 uses grids;
{$R *.DFM}

{ Tz001TABs_frame }

procedure Tz001TABs_frame.InitFrame;
begin
  inherited;
   z001_wp1frame1.z001_p1_frame1.RefreshData;
end;

procedure Tz001TABs_frame.z001_p1_frame1xxxDBGridDblClick(Sender: TObject);
var X: integer;Y: integer; cd: TGridCoord ; mousepoint: TPoint;
begin
  if not z001_wp1frame1.z001_p1_frame1.odsList.IsEmpty then
    begin
    mousepoint := z001_wp1frame1.z001_p1_frame1.xxxDBGrid.screentoclient(mouse.CursorPos);
    cd := z001_wp1frame1.z001_p1_frame1.xxxDBGrid.MouseCoord(mousepoint.X, mousepoint.Y);
    if cd.X = 16 then exit;
  // showmessage(format('col=%d, row = %d',[cd.X,cd.Y]) );
 //    showmessage(z001_wp1frame1.z001_p1_frame1.odsList.DataSetField.AsString);
    z001_wp21.z001_p2_frame1.BANK_CODE := z001_wp1frame1.z001_p1_frame1.odsListT093_BANK_CODE.AsString;
    z001_wp21.z001_p2_frame1.PERIOD := z001_wp1frame1.z001_p1_frame1.odsListPERIOD.AsFloat;
    Self.PageControl.ActivePageIndex := 1;
    z001_wp21.z001_p2_frame1.RefreshData;
    end;
  // end;

end;

procedure Tz001TABs_frame.z001_p2_frame1xxxDBGridDblClick(Sender: TObject);
var X: integer;Y: integer; cd: TGridCoord ; mousepoint: TPoint;
begin
    if not z001_wp21.z001_p2_frame1.odsList.IsEmpty then
    begin
    mousepoint := z001_wp21.z001_p2_frame1.xxxDBGrid.screentoclient(mouse.CursorPos);
    cd := z001_wp21.z001_p2_frame1.xxxDBGrid.MouseCoord(mousepoint.X, mousepoint.Y);
    if cd.X = 16 then exit;
    //showmessage(format('col=%d, row = %d',[cd.X,cd.Y]) );
  //  showmessage(z001_wp21.z001_p2_frame1.odsListSEC_TYPE.AsString);
    z001_wp3_frame1.z001_p4_frame1.SEC_TYPE := z001_wp21.z001_p2_frame1.odsListSEC_TYPE.AsString;
    z001_wp3_frame1.z001_p4_frame1.BANK_CODE := z001_wp1frame1.z001_p1_frame1.odsListT093_BANK_CODE.AsString;
    z001_wp3_frame1.z001_p4_frame1.PERIOD := z001_wp1frame1.z001_p1_frame1.odsListPERIOD.AsFloat;
    Self.PageControl.ActivePageIndex := 2;
    z001_wp3_frame1.z001_p4_frame1.RefreshData;
    end;

end;

end.
