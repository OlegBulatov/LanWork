unit F001_DataFrame;

interface

uses
  fm005_GridFrame, Graphics, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;
//  Windows, Messages, SysUtils, Forms, Dialogs,

type
  TF001_Data = class(TfmGrid)
    odsListT204_ID: TFloatField;
    odsListT202_ID: TFloatField;
    odsListT204_ROW_NUM: TStringField;
    odsListT204_NAME: TStringField;
    odsListT204_INN: TStringField;
    odsListT204_COUNTRY: TStringField;
    odsListT204_REGN: TStringField;
    odsListT203_CODE: TStringField;
    odsListT204_CURRENCY: TStringField;
    odsListT204_NOMINAL: TStringField;
    odsListT204_COUNT_01: TStringField;
    odsListT204_COUNT_02: TStringField;
    odsListT204_COUNT_03: TStringField;
    odsListT204_COUNT_04: TStringField;
    odsListT030_ID: TFloatField;
    odsListT203_ROW_NUM: TFloatField;
    odsListT203_NOMINAL: TFloatField;
    odsListT203_COUNT_01: TFloatField;
    odsListT203_COUNT_02: TFloatField;
    odsListT203_COUNT_03: TFloatField;
    odsListT203_COUNT_04: TFloatField;
    odsListT203_ERROR: TStringField;
  private
    procedure SetT202_ID(const Value: Double);
  protected
    function GetRowFontColor: TColor; override;
  public
    property T202_ID: Double write SetT202_ID;
  end;

var
  F001_Data: TF001_Data;

implementation

{$R *.DFM}

{ TF001_Data }

function TF001_Data.GetRowFontColor: TColor;
begin
  if not odsListT203_ERROR.IsNull then
  begin
    // есть ошибки
    Result := clRed;
  end else
  begin
    // операци€ прив€зана к выбранному объ€влению
    Result := inherited GetRowFontColor;
  end;
end;

procedure TF001_Data.SetT202_ID(const Value: Double);
begin
  odsList.SetVariable('T202_ID', Value);
end;

end.
