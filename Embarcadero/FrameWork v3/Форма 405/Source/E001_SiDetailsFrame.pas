unit E001_SiDetailsFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;

type
  TE001_SiDetailsGrid = class(TfmGrid)
    odsListM010_INT_DATE: TDateTimeField;
    odsListM010_INT_END_DATE: TDateTimeField;
    odsListM030_BUY_NAME: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListM030_PRC: TFloatField;
    odsListM050_TYPE_DESC: TStringField;
    odsListM031_NAME: TStringField;
    odsListM030_COMMENT: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListM030_COUNT: TFloatField;
    odsListM030_ENTER_DESC: TStringField;
  private
    { Private declarations }
  public
    FOnDate:  TDateTime;
    procedure RefreshData; override;
  end;

var
  E001_SiDetailsGrid: TE001_SiDetailsGrid;

implementation

uses unt001_Filter;

{$R *.DFM}

{ TE001_SiDetailsGrid }

procedure TE001_SiDetailsGrid.RefreshData;
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  xxxDBGrid.MainDataSet.Conditions.Clear;

  // добавляем условие
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := 'Дата с';
  VCondition.Condition := dc28;
  VCondition.ListName := 'M010_INT_DATE';
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := FOnDate;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := FOnDate;

  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := 'Дата по';
  VCondition.Condition := dc27;
  VCondition.ListName := 'M010_INT_END_DATE';
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := FOnDate;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := FOnDate;

  inherited;
end;

end.
