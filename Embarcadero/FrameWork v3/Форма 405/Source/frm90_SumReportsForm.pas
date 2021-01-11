unit frm90_SumReportsForm;

interface

uses
  frm04_ListForm, Db, fm01_PeriodFrame, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, Variants,
  System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  DBCtrls

type
  Tfrm90_SumReports = class(Tfrm04_List)
    Panel1: TPanel;
    odsListMONTH1: TStringField;
    odsListMONTH2: TStringField;
    odsListMONTH3: TStringField;
    odsListMONTH4: TStringField;
    odsListMONTH5: TStringField;
    odsListMONTH6: TStringField;
    odsListMONTH7: TStringField;
    odsListMONTH8: TStringField;
    odsListMONTH9: TStringField;
    odsListMONTH10: TStringField;
    odsListMONTH11: TStringField;
    odsListMONTH12: TStringField;
    oqChDate: TOracleQuery;
    fm01_Period: Tfm01_Period;
    odsListBANK_NAME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure fm01_PeriodlcbPeriodCloseUp(Sender: TObject);
  private
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm90_SumReports: Tfrm90_SumReports;

implementation

//uses dm005_MainData;

{$R *.DFM}
 class function Tfrm90_SumReports.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm90_SumReports;
end;

class function Tfrm90_SumReports.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm90_SumReports;
end;

class procedure Tfrm90_SumReports.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm90_SumReports) := AForm;
end;

procedure Tfrm90_SumReports.FormShow(Sender: TObject);
begin
  if odsList.Active then Exit;

  fm01_Period.Init;
  fm01_PeriodlcbPeriodCloseUp(Sender);

  inherited;
end;

procedure Tfrm90_SumReports.RefreshData(const KeyFields: string;
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

procedure Tfrm90_SumReports.fm01_PeriodlcbPeriodCloseUp(Sender: TObject);
var
  I :Integer;
  S :string;
  VName :string;
begin
  //изменение текущего просматриваемого периода

  oqChDate.SetVariable('T055_ID', fm01_Period.KeyValue);
  oqChDate.Execute;

  fm01_Period.odsPeriod.Locate(fm01_Period.lcbPeriod.KeyField, fm01_Period.KeyValue, []);
  for I := 12 downto 1 do
  begin
    Str(I, S);
    VName := 'MONTH' + S;
    xxxDBGrid.Columns[I].Title.Caption := oqChDate.GetVariable(VName);
  end;

  RefreshData('', Unassigned);
end;

end.
