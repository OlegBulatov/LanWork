unit z002_fm_hist_grd_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, z002_fm_filter_frame,
  fm031_FilterFrame;
type
  Tz002_fm_hist_grd = class(TfmGrid)
    odsListT055_ID: TFloatField;                                
    odsListT002_BANK_CODE: TStringField;
    odsListN_GR: TFloatField;
    odsListT033_ID: TFloatField;
    odsListT034_ID: TFloatField;
    odsListT025_CODE: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT006_NAME: TStringField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TStringField;
    odsListT001_COMMENT: TStringField;
    odsListT001_C10: TStringField;
    odsListT001_C11: TStringField;
    odsListT001_C12: TStringField;
    odsListT001_C16: TStringField;
    odsListT001_C17: TStringField;
    odsListT001_C18: TStringField;
    odsListT001_C19: TStringField;
    odsListT001_C20: TStringField;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_10: TFloatField;
    odsListT001_DATE_ON: TDateTimeField;
    odsListT001_DATE_OFF: TDateTimeField;
    odsListT001_CR_ID: TStringField;
    odsListSUM_CROSS: TFloatField;
    odsListPROC_CROSS: TFloatField;
    odsListT001_ID: TFloatField;
    odsListH001_NUM: TFloatField;
    odsListSTR_TYPE: TStringField;
    odsListSTR_HANDLER: TStringField;
    odsListH001_USER: TStringField;
    odsListH001_DATE: TDateTimeField;
    filters: Tz002_fm_filter;
    odsListT001_INV_TYPE: TIntegerField;
    odsListSTR_INV_TYPE: TStringField;
    odsListH001_TYPE: TFloatField;
    odsListH001_HANDLER: TFloatField;
    odsListBANK_NAME: TStringField;
    odsListT001_ROW_PREFIX: TIntegerField;
    odsListT001_ROW_PRFX: TStringField;
    odsListT001_ROW_NUM: TIntegerField;
       procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
        procedure InitFrames;
        procedure SetDateBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: TDateTime);
  protected
        function GetRowFontColor: TColor; override;
  public
        constructor Create(AOwner: TComponent); override;
        procedure RefreshData; override;
  end;

var
  z002_fm_hist_grd: Tz002_fm_hist_grd;

implementation
 uses dm005_MainData, dm000_ObjectsFactory,unt007_LinksList, unt001_Filter,untMessages, Matrix;
{$R *.DFM}
constructor Tz002_fm_hist_grd.Create(AOwner: TComponent);
begin
  inherited;
  InitFrames;
end;

procedure Tz002_fm_hist_grd.InitFrames;
var
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  Filters.InitFrame(Self);
  Screen.Cursor := OldCursor;

  ObjectsFactory.Links.LinkLookUp2Condition
(
    ctNumBetween,
    Filters.PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
);

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    Filters.BankFilter,
    Self,
    'T002_BANK_CODE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkCheckBoxCondition
    (
    ctStrEqual,
    Filters.TypeFilter,
    Self,
    'H001_Type',
    ltNoRefresh
    );
      ObjectsFactory.Links.LinkCheckBoxCondition
    (
    ctStrEqual,
    Filters.HandlerFilter,
    Self,
    'H001_Handler',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkCheckBoxCondition(
    ctStrEqual,
    Filters.SecTypeFilter,
    Self,
    'T027_ID',
    ltNoRefresh
    );

    ObjectsFactory.Links.LinkCheckBoxCondition(
    ctStrEqual,
    Filters.InvTypeFilter,
    Self,
    'T001_INV_TYPE',
    ltNoRefresh
    );
end;

procedure Tz002_fm_hist_grd.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.Field.FieldName = 'T001_N8')
  or (Column.Field.FieldName = 'T001_N9')
  or (Column.Field.FieldName = 'T001_10') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsInteger = 1] or
      DFCS_FLAT
      );
  end;
end;

function Tz002_fm_hist_grd.GetRowFontColor: TColor;
begin
   Result := inherited GetRowFontColor;
   if (odsList.FieldByName('H001_HANDLER').AsFloat = 0) then
     begin
     xxxDBGrid.Canvas.Brush.Color := $D6F0ED;// clLtGray;
     Result := inherited GetRowFontColor;
     end;
  if (odsList.FieldByName('H001_HANDLER').AsFloat = 1) then
     begin
     xxxDBGrid.Canvas.Brush.Color := $F0F0D6;//  clLtGray;
     Result := inherited GetRowFontColor;
     end;
  if (odsList.FieldByName('H001_HANDLER').AsFloat = 2) then
     begin
    // xxxDBGrid.Canvas.Brush.Color := $D6F0ED;// clLtGray;
     Result := inherited GetRowFontColor;
     end;
  // xxxDBGrid.Canvas.Brush.Color :=  clBlue;
  // xxxDBGrid.Canvas.Font := fsBold;
end;


procedure Tz002_fm_hist_grd.SetDateBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: TDateTime);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
  TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');
  //showmessage( ' ');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc23;
  VCondition.ListName := VColumn.FieldName;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueStart);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueStart);

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueEnd);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueEnd);
end;



procedure Tz002_fm_hist_grd.RefreshData ;
begin
//showmessage( ' ');

  xxxDBGrid.MainDataSet.Conditions.ClearFor('H001_DATE');
 if  Filters.cbDate.Checked then
 SetDateBetweenFilter('H001_DATE',Filters.Date1.DateTime, Filters.Date2.DateTime);



inherited;
end;

end.
