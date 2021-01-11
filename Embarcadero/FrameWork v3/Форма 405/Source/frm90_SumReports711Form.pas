unit frm90_SumReports711Form;

interface

uses
  frm04_ListForm, Db, fm01_PeriodFrame, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, Variants,
  System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  DBCtrls,

type
  Tfrm90_SumReports711 = class(Tfrm04_List)
    Panel1: TPanel;
    odsListBANK_NAME: TStringField;
    odsListQVARTAL1: TStringField;
    odsListQVARTAL2: TStringField;
    odsListQVARTAL3: TStringField;
    odsListQVARTAL4: TStringField;
    odsListQVARTAL5: TStringField;
    fm01_Period: Tfm01_Period;
    oqChDate: TOracleQuery;
    procedure FormShow(Sender: TObject);
    procedure fm01_PeriodlcbPeriodCloseUp(Sender: TObject);
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm90_SumReports711: Tfrm90_SumReports711;

implementation

//uses dm005_MainData;

{$R *.DFM}
class function Tfrm90_SumReports711.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm90_SumReports711;
end;

class function Tfrm90_SumReports711.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm90_SumReports711;
end;

class procedure Tfrm90_SumReports711.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm90_SumReports711) := AForm;
end;

procedure Tfrm90_SumReports711.FormShow(Sender: TObject);
begin
  if odsList.Active then Exit;

  fm01_Period.Init;
  fm01_PeriodlcbPeriodCloseUp(Sender);

  inherited;
end;

procedure Tfrm90_SumReports711.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  odsList.Close;
  odsList.Open;
  if KeyFields = '' then
  begin
     if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm90_SumReports711.fm01_PeriodlcbPeriodCloseUp(
  Sender: TObject);
var
  I :Integer;
  S :string;
  VName :string;
begin
  //изменение текущего просматриваемого периода

  oqChDate.SetVariable('T055_ID', fm01_Period.KeyValue);
  oqChDate.Execute;

  fm01_Period.odsPeriod.Locate(fm01_Period.lcbPeriod.KeyField, fm01_Period.KeyValue, []);
  for I := 5 downto 1 do
  begin
    Str(I, S);
    VName := 'QVARTAL' + S;
    xxxDBGrid.Columns[I].Title.Caption := oqChDate.GetVariable(VName);
  end;

  RefreshData('', Unassigned);
end;

end.
