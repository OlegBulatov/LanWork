unit fm04_LookUpExtFrame;

interface

uses
  fm02_PrmParentFrame, Db, OracleData, Controls, xxxDbLookupCheckCombo,
  Classes, StdCtrls, untParams;

type
  Tfm04_LookUpExt = class(Tfm02_PrmParent)
    Label1: TLabel;
    odsList: TOracleDataSet;
    dsList: TDataSource;
    lcb: TxxxDBLookupCheckCombo;
  private
    function GetKeyValues: TFloatArray;
    function GetKeyValuesStr: TStrArray;
    { Private declarations }
  public
    procedure SetKeyValuesAll;
    procedure SetKeyValues(Values: array of Double);
    procedure SetKeyValuesStr(Values: array of string);

    property KeyValues: TFloatArray read GetKeyValues;
    property KeyValuesStr: TStrArray read GetKeyValuesStr;
  end;

var
  fm04_LookUpExt: Tfm04_LookUpExt;

implementation

uses
  SysUtils;

{$R *.DFM}

{ Tfm04_LookUpExt }

function Tfm04_LookUpExt.GetKeyValues: TFloatArray;
var
  i: integer;
begin
  SetLength(Result, 0);
  if lcb.KeyValuesStr.Count > 0 then
    try
      for i := 0 to lcb.KeyValuesStr.Count-1 do
        if lcb.KeyValuesStr[i] <> '' then
          begin
          SetLength(Result, Length(Result)+1);
          Result[High(Result)] := StrToFloat(lcb.KeyValuesStr[i]);
          end;
    except
      on E: EConvertError do
        begin
        SetLength(Result, 0);
        raise;
        end;
    end;
end;

function Tfm04_LookUpExt.GetKeyValuesStr: TStrArray;
var
  i: integer;
begin
  SetLength(Result, 0);
  if lcb.KeyValuesStr.Count > 0 then
    for i := 0 to lcb.KeyValuesStr.Count-1 do
      if lcb.KeyValuesStr[i] <> '' then
        begin
        SetLength(Result, Length(Result)+1);
        Result[High(Result)] := lcb.KeyValuesStr[i];
        end;
end;

procedure Tfm04_LookUpExt.SetKeyValues(Values: array of Double);
var
  Tmp:  TStringList;
  i:    integer;
begin
  Tmp := TStringList.Create;
  for i := Low(Values) to High(Values) do
    Tmp.Add(FloatToStr(Values[i]));

  lcb.KeyValuesStr := Tmp;
  Tmp.Free;
end;

procedure Tfm04_LookUpExt.SetKeyValuesStr(Values: array of string);
var
  Tmp:  TStringList;
  i:    integer;
begin
  Tmp := TStringList.Create;
  for i := Low(Values) to High(Values) do
    Tmp.Add(Values[i]);

  lcb.KeyValuesStr := Tmp;
  Tmp.Free;
end;

procedure Tfm04_LookUpExt.SetKeyValuesAll;
begin
  lcb.SetKeyValuesAll;
end;

end.
