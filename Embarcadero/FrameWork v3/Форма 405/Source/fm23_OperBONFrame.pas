unit fm23_OperBONFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm23_OperBON = class(Tfm04_LookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm23_OperBON: Tfm23_OperBON;

implementation

{$R *.DFM}

{ Tfm23_OperBON }

procedure Tfm23_OperBON.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm23_OperBON.SetParamsValues;
begin
	odsList.Open;
	if Param.AsFloat = 0  then
  	Lookup01.KeyValue := 8      // по умолчанию BON4
  else
  	Lookup01.KeyValue := Param.AsFloat;
end;

end.
