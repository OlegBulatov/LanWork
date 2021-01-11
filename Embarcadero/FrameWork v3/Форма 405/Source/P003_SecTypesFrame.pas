unit P003_SecTypesFrame;

interface

uses
  fm04_LookUpExtFrame, Db, OracleData, Controls, xxxDbLookupCheckCombo,
  Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TP003_SecTypes = class(Tfm04_LookUpExt)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  P003_SecTypes: TP003_SecTypes;

implementation

{$R *.DFM}

{ TP003_SecTypes }

procedure TP003_SecTypes.GetParamsValues;
begin
  Param.AsFloatArray := KeyValues;
end;

procedure TP003_SecTypes.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
///  SetKeyValues([1]);
  SetKeyValuesAll;
end;

end.
