unit fm33_711BlueEmissFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes,
  StdCtrls, xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm33_711BlueEmiss = class(Tfm04_LookUp)
    Label2: TLabel;
    lcSecType: TDBLookupComboBox;
    lcIssuers: TDBLookupComboBox;
    Label3: TLabel;
    odsIssuers: TOracleDataSet;
    odsIssuersT028_ID: TFloatField;
    odsIssuersT028_SHOT_NAME: TStringField;
    dsIssuers: TDataSource;
    odsSecType: TOracleDataSet;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    odsSecTypeT028_ID: TFloatField;
    dsSecType: TDataSource;
    procedure lcIssuersCloseUp(Sender: TObject);
    procedure lcSecTypeCloseUp(Sender: TObject);
    procedure lcIssuersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcSecTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure RefreshIssures;
    procedure RefreshSecType;
    procedure RefreshSecRegn;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm33_711BlueEmiss: Tfm33_711BlueEmiss;

implementation

{$R *.DFM}

{ Tfm33_711BlueEmiss }

procedure Tfm33_711BlueEmiss.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm33_711BlueEmiss.RefreshIssures;
begin
  odsIssuers.Close;
  odsIssuers.Open;
  lcIssuers.KeyValue := odsIssuers.FieldByName(lcIssuers.KeyField).AsFloat;

  RefreshSecType;
end;

procedure Tfm33_711BlueEmiss.RefreshSecRegn;
begin
  odsList.Close;
  odsList.SetVariable('T027_ID', odsSecType.FieldByName('T027_ID').AsFloat);
  odsList.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsList.Open;
  Lookup01.KeyValue := odsList.FieldByName('T030_id').AsFloat;
end;

procedure Tfm33_711BlueEmiss.RefreshSecType;
begin
  odsSecType.Close;
  odsSecType.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsSecType.Open;
  odsSecType.First;
  lcSecType.KeyValue := odsSecType.FieldByName(lcSecType.KeyField).AsFloat;

  RefreshSecRegn;
end;

procedure Tfm33_711BlueEmiss.SetParamsValues;
begin
  RefreshIssures;
end;

procedure Tfm33_711BlueEmiss.lcIssuersCloseUp(Sender: TObject);
begin
  RefreshSecType;
end;

procedure Tfm33_711BlueEmiss.lcSecTypeCloseUp(Sender: TObject);
begin
  RefreshSecRegn;
end;

procedure Tfm33_711BlueEmiss.lcIssuersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcIssuersCloseUp(nil);
  end;
end;

procedure Tfm33_711BlueEmiss.lcSecTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcSecTypeCloseUp(nil);
  end;
end;

end.
