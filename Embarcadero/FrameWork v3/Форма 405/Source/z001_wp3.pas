unit z001_wp3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, z001_p4,
  SumData_Frame,db, Menus;

type
  Tz001_wp3_frame = class(TfmWizardPage)
    z001_p4_frame1: Tz001_p4_frame;
    Panel1: TPanel;
    SumDataSEC: TSumData;
  private
    { Private declarations }
//    procedure SetSumDataSource(const ADS: TDataSource);
  public
  procedure SetSumDataSource(const ADS: TDataSource);
    { Public declarations }
  end;
  var
  z001_wp3_frame: Tz001_wp3_frame;

implementation
{$R *.DFM}
procedure Tz001_wp3_frame.SetSumDataSource(const ADS: TDataSource);
begin
  SumDataSEC.DBEdit1.DataSource := ADS;
  SumDataSEC.DBEdit1.DataField  := 'T093_GCI_SUM_IN';
  SumDataSEC.DBEdit2.DataSource := ADS;
  SumDataSEC.DBEdit2.DataField  := 'T093_DPB_SUM_IN';
  SumDataSEC.DBEdit3.DataSource := ADS;
  SumDataSEC.DBEdit3.DataField  := 'T093_RAZN_SUM_IN';
  SumDataSEC.DBEdit4.DataSource := ADS;
  SumDataSEC.DBEdit4.DataField  := 'T093_GCI_SUM_OUT';
  SumDataSEC.DBEdit5.DataSource := ADS;
  SumDataSEC.DBEdit5.DataField  := 'T093_DPB_SUM_OUT';
  SumDataSEC.DBEdit6.DataSource := ADS;
  SumDataSEC.DBEdit6.DataField  := 'T093_RAZN_SUM_OUT';
  SumDataSEC.DBEdit7.DataSource := ADS;
  SumDataSEC.DBEdit7.DataField  := 'T093_GCI_SALDO';
  SumDataSEC.DBEdit8.DataSource := ADS;
  SumDataSEC.DBEdit8.DataField  := 'T093_DPB_SALDO';
  SumDataSEC.DBEdit9.DataSource := ADS;
  SumDataSEC.DBEdit9.DataField  := 'T093_RAZN_SALDO';
end;

end.
