unit zwp_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, z001_p2, ActnList, StdCtrls, ExtCtrls,
  Oracle, Menus;

type
  Tz001_wp2 = class(TfmWizardPage)
    oqLoadSec: TOracleQuery;
    actLoadSEC: TAction;
    Button1: TButton;
    actClean01: TAction;
    actClean02: TAction;
    oqClean1: TOracleQuery;
    oqClean2: TOracleQuery;
    procedure actLoadSECExecute(Sender: TObject);
  procedure actClean1(Sender: TObject);
    procedure actClean02Execute(Sender: TObject);
    procedure actClean01Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z001_wp2: Tz001_wp2;

implementation

{$R *.DFM}

procedure Tz001_wp2.actLoadSECExecute(Sender: TObject);
begin
  inherited;
oqLoadSec.Execute;
end;

//procedure Tz001_wp1frame.actCleanExecute(Sender: TObject);

begin
       oqClean.SetVariable('I_T002',z001_p1_frame1.odsListT002_ID.AsFloat);
       oqClean.Execute;
      odsList.Next;
end;

procedure Tz001_wp2.actClean1(Sender: TObject);
begin
       oqClean1.SetVariable('I_T002',z001_wp2.z001_p2_frame1.odsListT002_ID.AsFloat);
       oqClean1.SetVariable('I_SEC',z001_wp2.z001_p2_frame1.odsListSEC_ID.AsFloat);
       oqClean1.Execute;
end;


procedure Tz001_wp2.actClean02Execute(Sender: TObject);
begin
      oqClean2.SetVariable('I_T002',z001_wp2.z001_p2_frame1.odsListT002_ID.AsFloat);
      oqClean2.Execute;
end;

procedure Tz001_wp2.actClean01Execute(Sender: TObject);
begin
       oqClean1.SetVariable('I_T002',z001_wp2.z001_p2_frame1.odsListT002_ID.AsFloat);
       oqClean1.SetVariable('I_SEC',z001_wp2.z001_p2_frame1.odsListSEC_ID.AsFloat);
       oqClean1.Execute;
end;

end.
