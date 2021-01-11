unit z001_wp2;
     
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, z001_p2, Oracle,
  Menus, untInterfaces, SumData_Frame, db;

type
  Tz001_wp2_frame = class(TfmWizardPage, IDoThis)
    z001_p2_frame1: Tz001_p2_frame;
    actLoadSEC: TAction;
    actLoadSECKO: TAction;
    oqLoadSEC: TOracleQuery;
    oqLoadSECKO: TOracleQuery;
    oqClear1: TOracleQuery;
    oqClear2: TOracleQuery;
    actClear1: TAction;
    actClear2: TAction;
    Button1: TButton;
    Panel1: TPanel;
    SumDataKO: TSumData;
    procedure actLoadSECExecute(Sender: TObject);
    procedure actLoadSECKOExecute(Sender: TObject);
    procedure actClear1Execute(Sender: TObject);
    procedure actClear2Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetSumDataSource(const ADS: TDataSource);
    procedure RunDML(const vT002_ID: Double; const vsec_id: Double);
  end;

var
  z001_wp2_frame: Tz001_wp2_frame;

implementation

uses z001_Tabs;

{$R *.DFM}


procedure Tz001_wp2_frame.actLoadSECExecute(Sender: TObject);
 var
  vsec_id:  double;
  vT002_ID:  double;
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  z001_p2_frame1.odsList.DisableControls;
  vT002_ID := z001_p2_frame1.odsListT002_ID.AsFloat;
  vsec_id   := z001_p2_frame1.odsListSEC_ID.AsFloat;
  oqLoadSEC.SetVariable('I_T002',vT002_ID);
  oqLoadSEC.SetVariable('I_SEC' ,vsec_id) ;
  oqLoadSEC.Execute;
  z001_p2_frame1.odsList.EnableControls;
  z001_p2_frame1.odsList.Refresh;
  z001_p2_frame1.odsList.Locate('SEC_ID', vsec_id, [loCaseInsensitive]);
  Screen.Cursor := OldCursor;
  end;

procedure Tz001_wp2_frame.actLoadSECKOExecute(Sender: TObject);
 var
  vsec_id:  double;
  vT002_ID:  double;
   OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  z001_p2_frame1.odsList.DisableControls;
  vT002_ID := z001_p2_frame1.odsListT002_ID.AsFloat;
  vsec_id   := z001_p2_frame1.odsListSEC_ID.AsFloat;
  oqLoadSECKO.SetVariable('I_T002',vT002_ID);
  oqLoadSECKO.Execute;
  z001_p2_frame1.odsList.EnableControls;
  z001_p2_frame1.odsList.Refresh;
  z001_p2_frame1.odsList.Locate('SEC_ID', vsec_id, [loCaseInsensitive]);
  Screen.Cursor := OldCursor;
 end;




 procedure Tz001_wp2_frame.actClear1Execute(Sender: TObject);
var
  vsec_id:  double;
  vT002_ID:  double;
begin
  z001_p2_frame1.odsList.DisableControls;
  vT002_ID := z001_p2_frame1.odsListT002_ID.AsFloat;
  vsec_id   := z001_p2_frame1.odsListSEC_ID.AsFloat;
  oqClear1.SetVariable('I_T002',vT002_ID);
  oqClear1.SetVariable('I_SEC' ,vsec_id);
  oqClear1.Execute;
  z001_p2_frame1.odsList.EnableControls;
  z001_p2_frame1.odsList.Refresh;
  z001_p2_frame1.odsList.Locate('SEC_ID', vsec_id, [loCaseInsensitive]);

  end;

  procedure Tz001_wp2_frame.actClear2Execute(Sender: TObject);
 var
  vsec_id:  double;
  vT002_ID:  double;
begin
  z001_p2_frame1.odsList.DisableControls;
  vT002_ID := z001_p2_frame1.odsListT002_ID.AsFloat;
  vsec_id   := z001_p2_frame1.odsListSEC_ID.AsFloat;
  oqClear2.SetVariable('I_T002',vT002_ID);
  oqClear2.Execute;
  z001_p2_frame1.odsList.EnableControls;
  z001_p2_frame1.odsList.Refresh;
  z001_p2_frame1.odsList.Locate('SEC_ID', vsec_id, [loCaseInsensitive]);

 end;

procedure Tz001_wp2_frame.RunDML(const vT002_ID: Double; const vsec_id: Double);
begin
  oqLoadSEC.SetVariable('I_T002',vT002_ID);
  oqLoadSEC.SetVariable('I_SEC' ,vsec_id );
  oqLoadSEC.Execute;
end;

procedure Tz001_wp2_frame.Button1Click(Sender: TObject);
begin
 showmessage( z001_p2_frame1.odsListT002_ID.AsString +' : '+  z001_p2_frame1.odsListSEC_ID.AsString);
end;

procedure Tz001_wp2_frame.SetSumDataSource(const ADS: TDataSource);
begin
  SumDataKO.DBEdit1.DataSource := ADS;
  SumDataKO.DBEdit1.DataField  := 'T093_GCI_SUM_IN'  ;
  SumDataKO.DBEdit2.DataSource := ADS;
  SumDataKO.DBEdit2.DataField  := 'T093_DPB_SUM_IN'  ;
  SumDataKO.DBEdit3.DataSource := ADS;
  SumDataKO.DBEdit3.DataField  := 'T093_RAZN_SUM_IN' ;
  SumDataKO.DBEdit4.DataSource := ADS;
  SumDataKO.DBEdit4.DataField  := 'T093_GCI_SUM_OUT' ;
  SumDataKO.DBEdit5.DataSource := ADS;
  SumDataKO.DBEdit5.DataField  := 'T093_DPB_SUM_OUT' ;
  SumDataKO.DBEdit6.DataSource := ADS;
  SumDataKO.DBEdit6.DataField  := 'T093_RAZN_SUM_OUT';
  SumDataKO.DBEdit7.DataSource := ADS;
  SumDataKO.DBEdit7.DataField  := 'T093_GCI_SALDO'   ;
  SumDataKO.DBEdit8.DataSource := ADS;
  SumDataKO.DBEdit8.DataField  := 'T093_DPB_SALDO'   ;
  SumDataKO.DBEdit9.DataSource := ADS;
  SumDataKO.DBEdit9.DataField  := 'T093_RAZN_SALDO'  ;
end;


end.
