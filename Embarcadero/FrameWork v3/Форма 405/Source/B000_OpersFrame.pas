unit B000_OpersFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, ComCtrls, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, fm010_FilteredGridFrame, B000_Opers11Frame, untParams,
  B000_Opers12Frame, B000_Opers13Frame, B000_Opers14Frame,
  B000_Opers21Frame, B000_Opers22Frame, B000_Opers23Frame, B000_Opers3Frame;

type
  TB000_Opers = class(TfmParent)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grid_11: TB000_Opers11;
    TabSheet2: TTabSheet;
    Grid_12: TB000_Opers12;
    TabSheet3: TTabSheet;
    Grid_13: TB000_Opers13;
    TabSheet4: TTabSheet;
    Grid_14: TB000_Opers14;
    TabSheet5: TTabSheet;
    Grid_21: TB000_Opers21;
    TabSheet6: TTabSheet;
    Grid_22: TB000_Opers22;
    TabSheet7: TTabSheet;
    Grid_23: TB000_Opers23;
    TabSheet8: TTabSheet;
    Grid_3: TB000_Opers3;
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
    procedure FindMainEmissionsInPer(AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    procedure FindIssuer_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E: Double; AT027_IDs: array of Double);
  end;

var
  B000_Opers: TB000_Opers;

implementation

{$R *.DFM}

procedure TB000_Opers.InitFrame(Sender: TObject);
begin
  Grid_11.InitFrame(Self);
  PageControl1.ActivePageIndex := 0;
  
  inherited;
end;

procedure TB000_Opers.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0: if not Grid_11.Initialized then Grid_11.InitFrame(Self);
    1: if not Grid_12.Initialized then Grid_12.InitFrame(Self);
    2: if not Grid_13.Initialized then Grid_13.InitFrame(Self);
    3: if not Grid_14.Initialized then Grid_14.InitFrame(Self);
    4: if not Grid_21.Initialized then Grid_21.InitFrame(Self);
    5: if not Grid_22.Initialized then Grid_22.InitFrame(Self);
    6: if not Grid_23.Initialized then Grid_23.InitFrame(Self);
    7: if not Grid_3.Initialized then Grid_3.InitFrame(Self);
  end;
end;

procedure TB000_Opers.FindMainEmissionsInPer(AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  Grid_12.FindMainEmissionsInPer(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

// ѕереход к данным ф711-1.2 из расчета IIP
procedure TB000_Opers.FindIssuer_InPer(const AT028_ID, AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: array of Double);
begin
  Grid_12.FindIssuer_InPer(AT028_ID, AT055_ID_S, AT055_ID_E, AT027_IDs);
end;

procedure TB000_Opers.FindData_InPer(const AT055_ID_S, AT055_ID_E: Double;
  AT027_IDs: TFloatArray; APART_ID: Integer; APRIZ, ASECTOR,
  AACCOUNT: TStrings; AT028_ID: Double);
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
    13: begin
         PageControl1.ActivePageIndex := 2;
         Grid_13.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
    14:  begin
         PageControl1.ActivePageIndex := 3;
         Grid_14.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
    23:  begin
         PageControl1.ActivePageIndex := 6;
         Grid_23.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, AT028_ID);
         end;
  end;
end;

end.
