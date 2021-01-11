unit P004_CountCodesFrame;

interface

uses
  fm04_LookUpExtFrame, Db, OracleData, Controls, xxxDbLookupCheckCombo,
  Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TP004_CountCodes = class(Tfm04_LookUpExt)
    odsListT216_CODE: TStringField;
    odsListT216_DESC: TStringField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  P004_CountCodes: TP004_CountCodes;

implementation

{$R *.DFM}

{ TP004_CountCodes }

procedure TP004_CountCodes.GetParamsValues;
begin
  Param.AsStrArray := KeyValuesStr;
end;

procedure TP004_CountCodes.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  SetKeyValuesStr(['FNOMINEE','FAUTHOLDER']);
end;

end.
