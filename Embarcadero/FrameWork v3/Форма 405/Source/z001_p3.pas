unit z001_p3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, fm033_PeriodFilterFrame,
  B000_PeriodFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, B002_BankFilterFrame, StdCtrls;

type
  Tz001_p3_frame = class(TfmGrid)
  private
    procedure SetBANK_CODE(const Value: string);
    procedure SetPERIOD(const Value: double);
    procedure SetSEC_TYPE(const Value: string);
    { Private declarations }
   // procedure InitFrames;
  public
    { Public declarations }
  //constructor Create(AOwner: TComponent); override;
    property BANK_CODE: string write SetBANK_CODE;
    property PERIOD: double write SetPERIOD;
    property SEC_TYPE: string write SetSEC_TYPE;
  end;

var
  z001_p3_frame: Tz001_p3_frame;

implementation

uses dm005_MainData,dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

//constructor Tz001_p2_frame.Create(AOwner: TComponent);
//begin
//  inherited;
//  InitFrames;
//end ;


{ Tz001_p2_frame }

procedure Tz001_p3_frame.SetBANK_CODE(const Value: string);
begin
  odsList.SetVariable('BANK_CODE', Value);
end;
procedure Tz001_p3_frame.SetPERIOD(const Value: double);
begin
  odsList.SetVariable('PERIOD', Value);
end;
procedure Tz001_p3_frame.SetSEC_TYPE(const Value: string);
begin
  odsList.SetVariable('SEC_TYPE', Value);
end;



end.
