unit fm020_LookUp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleData, DBCtrls, StdCtrls, fm001_Composite, unt001_Filter,
  Buttons, RxLookup, Menus, ActnList,fm000_Parent;

type
  TPos = (tpFirst, tpLast);

  TfmLook_Up = class(TfmParent)
    lcbList: TRxDBLookupCombo;
    odsList: TOracleDataSet;
    dsList: TDataSource;
    CheckBox1: TCheckBox;
    lbCaption: TLabel;
    sbLookUp: TSpeedButton;
    al01: TActionList;
    pm01: TPopupMenu;
    actRefresh: TAction;
    N1: TMenuItem;
    procedure lbCaptionClick(Sender: TObject);
    procedure lcbListCloseUp(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    FPos: TPos;
    function GetKeyValue: Variant;
    function GetListValue: string;
    procedure SetKeyValue(const Value: Variant);
    function GetKeyValueFloat: Double;
    function GetIsEnabled: Boolean;
    function GetKeyFieldName: string;
    //
    function GetLableCaption: string;
    procedure SetLableCaption(const Value: string);
    function GetSqlText: string;
    procedure SetSqlText(const Value: string);
    function GetListFieldName: string;
    function GetKeyValueStr: string;
  protected
//    procedure SetFilters; override;
    //
    function GetDefPos: TPos; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    //
//    procedure GetParamsValues; override;
//    procedure SetParamsValues; override;
    //
    procedure InitValues; 
    //
    procedure RetrieveConditions(const AConditions: TConditions); 
    //
    property Pos: TPos read FPos write FPos;
    property IsEnabled: Boolean read GetIsEnabled;
    // имя ключего поля
    property KeyFieldName: string read GetKeyFieldName;
    // значение ключего поля - неизвестно
    property KeyValue: Variant read GetKeyValue write SetKeyValue;
    // значение ключего поля - число
    property KeyValueFloat: Double read GetKeyValueFloat;
    // значение ключего поля - строка
    property KeyValueStr: string read GetKeyValueStr;
    //
    property ListValue: string read GetListValue;
    property ListFieldName: string read GetListFieldName;
  published
    property xxxLableCaption: string read GetLableCaption write SetLableCaption;
    property xxxSqlText: string read GetSqlText write SetSqlText;
    //property OkClick : TNotifyEvent read GetOkClick write SetOkClick ;
    //property CancelClick : TNotifyEvent read GetCancelClick write SetCancelClick ;
  end;

var
  fmLook_Up: TfmLook_Up;

implementation

uses dm005_MainData, dm000_ObjectsFactory;

{$R *.DFM}

constructor TfmLook_Up.Create(AOwner: TComponent);
begin
  inherited;

  FPos := GetDefPos;  
end;

function TfmLook_Up.GetDefPos: TPos;
begin
  Result := tpFirst;
end;

function TfmLook_Up.GetIsEnabled: Boolean;
begin
  Result := CheckBox1.Checked;
end;

function TfmLook_Up.GetKeyFieldName: string;
begin
  Result := lcbList.LookupField;
end;

function TfmLook_Up.GetKeyValue: Variant;
begin
  //Result := odsList.FieldByName(KeyFieldName).AsString;
  Result := lcbList.KeyValue;
end;

function TfmLook_Up.GetKeyValueFloat: Double;
begin
  //Result := odsList.FieldByName(KeyFieldName).AsFloat;
  Result := lcbList.KeyValue;
end;

function TfmLook_Up.GetKeyValueStr: string;
begin
  Result := lcbList.KeyValue;
end;

function TfmLook_Up.GetLableCaption: string;
begin
  Result := lbCaption.Caption;
end;

function TfmLook_Up.GetListFieldName: string;
begin
  Result := 'LIST_EDIT';
end;

function TfmLook_Up.GetListValue: string;
begin
  Result := lcbList.DisplayValue;
end;


function TfmLook_Up.GetSqlText: string;
begin
  Result := odsList.SQL.Text;
end;

procedure TfmLook_Up.InitValues;
begin
  // закрываем DataSet
  odsList.Close;

  // добавляем локальные условия фильтра
//SetFilters;

  // получаем данные
  odsList.Open;

  // позиционирумеся на строку
  if FPos = tpLast then
  begin
    odsList.Last;
  end;

  KeyValue := odsList[KeyFieldName];
end;

procedure TfmLook_Up.lbCaptionClick(Sender: TObject);
begin
  CheckBox1.Checked := not CheckBox1.Checked;
  if Assigned(lcbList.OnChange) then
  begin
    lcbList.OnChange(lcbList);
  end;
end;

procedure TfmLook_Up.RetrieveConditions(
  const AConditions: TConditions);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // удаляем фильтры по полю из списка
  AConditions.ClearFor(KeyFieldName);

  // если флаг фильтровать не установлен то ничего не делаем
  if not IsEnabled then Exit;

  // добавляем новое условие
  VCondition := AConditions.Add;
  VCondition.DisplayName := '*****';
  VCondition.Condition := dc01;
  VCondition.ListName := KeyFieldName;

  // заполняем значения условия
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := KeyValueFloat ;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := KeyValueFloat;
end;

{
procedure TfmLookUp.SetFilters;
begin
  // запрашиваем параметры у связанных с DataSet'ом объектов
  ObjectsFactory.Links.SetDataSetVariables(odsList);
end;
}

procedure TfmLook_Up.SetKeyValue(const Value: Variant);
begin
  if Value = null then Exit;

  lcbList.KeyValue := Value;
end;

procedure TfmLook_Up.SetLableCaption(const Value: string);
begin
  lbCaption.Caption := Value;
end;

{
procedure TfmLookUp.SetParamsValues;
begin
  InitValues;

  if Param.Value <> 0 then
  begin
    lcbList.KeyValue := Param.Value;
  end;
end;
}

procedure TfmLook_Up.SetSqlText(const Value: string);
begin
  odsList.SQL.Text := Value;
end;

procedure TfmLook_Up.lcbListCloseUp(Sender: TObject);
begin
  if not CheckBox1.Checked then
  begin
    CheckBox1.Checked := True;
  end;

  if Assigned(lcbList.OnChange) then
  begin
    lcbList.OnChange(lcbList);
  end;
end;

procedure TfmLook_Up.CheckBox1Click(Sender: TObject);
begin
  if Assigned(lcbList.OnChange) then
  begin
    lcbList.OnChange(lcbList);
  end;
end;

procedure TfmLook_Up.actRefreshExecute(Sender: TObject);
begin
  InitValues;
end;

end.
