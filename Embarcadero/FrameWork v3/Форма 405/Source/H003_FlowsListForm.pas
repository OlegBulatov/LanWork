unit H003_FlowsListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  TH003_FlowsList = class(Tfrm04_List)
    odsListT040_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT040_PAY_DATE: TDateTimeField;
    odsListT040_COUPON_RATE: TFloatField;
    odsListT040_COUPON_SUM: TFloatField;
    odsListT040_MATURITY: TFloatField;
    odsListT040_COMMENT_RUS: TStringField;
    odsListT040_COMMENT_ENG: TStringField;
    odsListT040_LOAD_DATE: TDateTimeField;
    odsListT040_FILE_NAME: TStringField;
    odsListT040_LOADER: TStringField;
    odsListT040_DELETED: TIntegerField;
    odsListT040_EMISSION_ID: TFloatField;
  private
    FT030_ID: Double;
    procedure SetT030_ID(const Value: Double);
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;

    property T030_ID: Double read FT030_ID write SetT030_ID;
  end;

var
  H003_FlowsList: TH003_FlowsList;

implementation

{$R *.DFM}

{ TH003_FlowsList }

procedure TH003_FlowsList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;

  // Ставим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T030_ID');
  SetNumbFilter('T030_ID', FT030_ID);

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure TH003_FlowsList.SetT030_ID(const Value: Double);
begin
  if FT030_ID = Value then Exit
  else
    FT030_ID := Value;

//  RefreshData('', Unassigned);
end;

end.
