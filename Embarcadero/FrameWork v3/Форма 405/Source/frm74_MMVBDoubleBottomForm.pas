unit frm74_MMVBDoubleBottomForm;

interface

uses
  frm45_DoubleListBottomForm, Db, OracleData, ActnList, StdCtrls, ExtCtrls,
  DbCtrls, frm00_ParentForm, Oracle, Menus, Classes, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, Variants, System.Actions;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//   Oracle, Db, OracleData, Menus,
//  , fmSeach, ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
//  , fm31_FilterFrame;

type
  Tfrm74_MMVBDoubleBottom = class(Tfrm45_DoubleListBottom)
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_CODE: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    Panel2: TPanel;
    lcSecType: TDBLookupComboBox;
    lcIssuers: TDBLookupComboBox;
    chbIssuer: TCheckBox;
    chbSecType: TCheckBox;
    Button1: TButton;
    actApplayFilter: TAction;
    odsIssuers: TOracleDataSet;
    odsIssuersT028_ID: TFloatField;
    odsIssuersT028_SHOT_NAME: TStringField;
    dsIssuers: TDataSource;
    odsSecType: TOracleDataSet;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    odsSecTypeT028_ID: TFloatField;
    dsSecType: TDataSource;
    procedure actApplayFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lcIssuersCloseUp(Sender: TObject);
  private
    //
    procedure RefreshIssures;
    procedure RefreshSecType;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm74_MMVBDoubleBottom: Tfrm74_MMVBDoubleBottom;

implementation

uses
  frm04_ListForm;

{$R *.DFM}

{ Tfrm75_RTSDoubleBottom }

class function Tfrm74_MMVBDoubleBottom.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBDoubleBottom;
end;

class function Tfrm74_MMVBDoubleBottom.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBDoubleBottom;
end;

class procedure Tfrm74_MMVBDoubleBottom.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBDoubleBottom) := AForm;
end;

procedure Tfrm74_MMVBDoubleBottom.RefreshAfterListChange;
begin
  RefreshData('T030_ID', Linker.BottomID);
end;

procedure Tfrm74_MMVBDoubleBottom.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable(':FLAG_01', Integer(chbIssuer.Checked));
  DataSet.SetVariable(':FLAG_02', Integer(chbSecType.Checked));
  DataSet.SetVariable('T028_ID', lcIssuers.KeyValue);
  DataSet.SetVariable('T027_ID', lcSecType.KeyValue);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm74_MMVBDoubleBottom.actApplayFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm74_MMVBDoubleBottom.RefreshIssures;
begin
  odsIssuers.Close;
  odsIssuers.Open;
  odsIssuers.lAST;
  lcIssuers.KeyValue := odsIssuers.FieldByName(lcIssuers.KeyField).AsFloat;

  RefreshSecType;
end;

procedure Tfrm74_MMVBDoubleBottom.RefreshSecType;
begin
  odsSecType.Close;
  odsSecType.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsSecType.Open;
  odsSecType.First;
  lcSecType.KeyValue := odsSecType.FieldByName(lcSecType.KeyField).AsFloat;
end;

procedure Tfrm74_MMVBDoubleBottom.FormShow(Sender: TObject);
begin
  if not odsIssuers.Active then
  begin
    RefreshIssures;
  end;
  
  inherited;
end;

procedure Tfrm74_MMVBDoubleBottom.lcIssuersCloseUp(Sender: TObject);
begin
  RefreshSecType;
end;

end.
