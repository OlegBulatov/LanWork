unit F005_OpersFrame;

interface

uses
  ComCtrls, fm000_Parent, F005_Opers11Frame, F005_Opers12Frame, untParams,
  Forms, fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  fm010_FilteredGridFrame, Controls, Classes, ActnList, F005_Opers23Frame,
  F005_Opers121Frame, F005_Opers13Frame, F005_Opers14Frame,
  F005_Opers21Frame, F005_Opers22Frame, F005_Opers3Frame;

type
  TF005_Opers = class(TfmParent)
    PageControl1: TPageControl;
    Page_11: TTabSheet;
    Page_12: TTabSheet;
    Page_121: TTabSheet;
    Page_13: TTabSheet;
    Page_14: TTabSheet;
    Page_21: TTabSheet;
    Page_22: TTabSheet;
    Page_23: TTabSheet;
    Page_3: TTabSheet;
    Grid_11: TF005_Opers11;
    Grid_12: TF005_Opers12;
    Grid_121: TF005_Opers121;
    Grid_23: TF005_Opers23;
    Grid_13: TF005_Opers13;
    Grid_14: TF005_Opers14;
    Grid_21: TF005_Opers21;
    Grid_22: TF005_Opers22;
    Grid_3: TF005_Opers3;
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
    procedure FindEmissions_12_InPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    procedure FindIssuer_12_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E, AT027_ID: Double);
  end;

var
  F005_Opers: TF005_Opers;

implementation

{$R *.DFM}

{ TF005_Opers }

procedure TF005_Opers.InitFrame(Sender: TObject);
begin
  Grid_11.InitFrame(Self);
  PageControl1.ActivePageIndex := 0;

  inherited;
end;

procedure TF005_Opers.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0: if not Grid_11.Initialized then Grid_11.InitFrame(Self);
    1: if not Grid_12.Initialized then Grid_12.InitFrame(Self);
    2: if not Grid_121.Initialized then Grid_121.InitFrame(Self);
    3: if not Grid_13.Initialized then Grid_13.InitFrame(Self);
    4: if not Grid_14.Initialized then Grid_14.InitFrame(Self);
    5: if not Grid_21.Initialized then Grid_21.InitFrame(Self);
    6: if not Grid_22.Initialized then Grid_22.InitFrame(Self);
    7: if not Grid_23.Initialized then Grid_23.InitFrame(Self);
    8: if not Grid_3.Initialized then Grid_3.InitFrame(Self);
  end;
end;

procedure TF005_Opers.FindEmissions_12_InPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  Grid_12.FindEmissions_InPer(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

procedure TF005_Opers.FindIssuer_12_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E, AT027_ID: Double);
begin
  Grid_12.FindIssuer_InPer(AT028_ID, AT055_ID_S, AT055_ID_E, AT027_ID);
end;

procedure TF005_Opers.FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
  APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
begin
  case APART_ID of
    11:  begin
         PageControl1.ActivePageIndex := 0;
         Grid_11.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, APRIZ, AT028_ID);
         end;
    12:  begin
         PageControl1.ActivePageIndex := 1;
         Grid_12.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, ASECTOR, AACCOUNT, AT028_ID);
         end;
    121: begin
         PageControl1.ActivePageIndex := 2;
         Grid_121.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
    13:  begin
         PageControl1.ActivePageIndex := 3;
         Grid_13.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
    14:  begin
         PageControl1.ActivePageIndex := 4;
         Grid_14.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
    23:  begin
         PageControl1.ActivePageIndex := 7;
         Grid_23.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
  end;
end;

end.
