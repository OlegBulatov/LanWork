{******************************************************************************}
{  fmSeach
{  Поиск данных в TCustomDBGrid'e
{
{  Ланит
{  Долженко А.С.  июль 2003 г.
{
{  TSearchMaster - алгорим поиска
{
{  TfmSeachFrame - фрейм содержит элементы управления поиском
{
{******************************************************************************}

unit fm006_TreeFrame;

interface

uses
  Windows, unt001_Filter, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm004_ListFrame, Db, Oracle, OracleData, ActnList, Menus,
  ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, 
  fm003_FilterFrame, fm000_Parent, ExtCtrls;

const
  DEF_LABLE = '***';

  // Константы зависят от индексов в fmTree.StateImages
  // dmPicters.ilTreeState
  cRadioUnChecked = 2;
  cRadioChecked = 3;
  cUnChecked = 7;
  cChecked = 6;

type
  // стандартный класс
  // если нужно просто рисовать дерево
  TNodeData = class(TComponent)
  private
    FID: Double;
    FParentID: Double;
    //FDBObject: TDBObject;
    FActivated: Boolean;
    FImageIndex: Integer;
    FSelectedIndex: Integer;
  public
    property ID: Double read FID write FID;
    property ParentID: Double read FParentID write FParentID;
    //
    property ImageIndex: Integer read FImageIndex write FImageIndex;
    property SelectedIndex: Integer read FSelectedIndex write FSelectedIndex;
    //
    property Activated: Boolean read FActivated write FActivated;
    //property DBObject: TDBObject read FDBObject write FDBObject;
  end;

  TNamedValue = class(TValue)
  private
    FName: string;
  public
    property Name: string read FName write FName;
  end;

  TDataValue = class(TCollectionItem)
  private
    FValue: TNamedValue;
  protected
    //procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    //
    property Value: TNamedValue read FValue;
  end;

  TValues = class(TCollection)
  private
    FOwner: TPersistent;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TNamedValue;
  public
    constructor Create(Owner: TPersistent);
    //
    function AddStr(const AName: string; const ADataValue: string): TDataValue;
    function AddFloat(const AName: string; const ADataValue: Double): TDataValue;
    function AddDate(const AName: string; const ADataValue: TDateTime): TDataValue;
    //
    function ValueByName(const AName: string): TValue;
    //
    property Items[Index: Integer]: TNamedValue read GetItem; default;
  end;

  // расширенный класс
  // если нужно кроме стандартных полей еще что-то хранить
  TNodeDataAdv = class(TNodeData)
  private
    FValues: TValues;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    function AddStr(const AName: string; const ADataValue: string): TDataValue;
    function AddFloat(const AName: string; const ADataValue: Double): TDataValue;
    function AddDate(const AName: string; const ADataValue: TDateTime): TDataValue;
    //
    function AddField(const AField: TField): TDataValue;
    //
    function ValueByName(const AName: string): TValue;
    //
    property Values: TValues read FValues;
  end;

  //----------------------------------------------------------------------------
  // Тип:         Абстрактный класс
  //
  // Назначение:  Отвечает за отображение информации в виде дерева
  //
  // Реализация:  В наследниках необходимо
  //                  1.  Положить на Frame конкретный TControl
  //                      например TTreeView, TGrid, TCheckList и т.п.
  //----------------------------------------------------------------------------
  TfmTree = class(TfmList)
    paTreeParent: TPanel;
    tvList: TTreeView;
    procedure tvListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure tvListClick(Sender: TObject);
  private
    // рекурсивно ставим отметки на CheckBox узла или нет
    FRecursiveCheckBoxClick: Boolean;
//    FReload: Boolean;
//    FOnFilterRecord: TOnFilterEvent;
    //
    //function IsDefNode(ANode: TTreeNode): Boolean;
    //
    //***function GetDataList: TTreeDataList;
    function GetSelectedID: Double;
    function GetSelectedPID: Double;
    //******************************* TTreeDataList
    function GetTreeNode(AID: Double): TTreeNode;
  protected
    // создание и заполнение узла данными
    function AddDBTreeItem(ANode: TTreeNode): TTreeNode; virtual;
    procedure RepaintTreeView(ANode: TTreeNode); virtual;
    function CreateNodeData: TNodeData; virtual;
    // отображаем изменения на клиенте
    procedure DoAfterInsertRow; override;
    procedure DoAfterUpdateRow; override;
    procedure DoAfterDeleteRow; override;
    // управление CheckBox'ами
    procedure SetNodeState(ANode: TTreeNode; const AState: Integer; const ARecursive: Boolean);
    procedure DoOnCheckBoxClick(ANode: TTreeNode);
    procedure DoOnRadioItemClick(ANode: TTreeNode);
    procedure DoChangeNodeState(ANode: TTreeNode);
    //
    procedure Expand(const ALevel: Integer);
    //
    procedure FormatNode(ANode: TTreeNode); virtual;
    //
    procedure RefreshAllRecords; override;
    //
    procedure SetDefValues; override;
  public
    //
    property ID: Double read GetSelectedID;
    property ParentID: Double read GetSelectedPID;
    //
    property RecursiveCheckBoxClick: Boolean read FRecursiveCheckBoxClick write FRecursiveCheckBoxClick;
  end;

var
  fmTree: TfmTree;

implementation

uses dm006_PictersData, fm002_EditFrame;

{$R *.DFM}

procedure TfmTree.tvListExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
(*
  // получаем список элементов выбранного узла если надо
  if Assigned(Node) and
     Assigned(Node.Data) and
     (not TNodeData(Node.Data).Activated = False) then
  begin
    DataList.RetriveNode(Node);
  end;
*)  
end;

(*
procedure TfmTree.LoadAllTree;
begin
  // отрисовываем всё дерево
  DataList.RetriveAllTree;
  RepainTreeView(nil);

  // отображаем всё
  tvList.FullExpand;
  tvList.Items[0].Selected := True;
  tvList.Selected
end;
*)

(*
function TfmTree.IsDefNode(ANode: TTreeNode): Boolean;
begin
  Result := ANode.Text = DEF_LABLE;
end;
*)

function TfmTree.GetSelectedID: Double;
begin
  // синхронизируем Tree и odsList
  if Assigned(tvList.Selected) and
     Assigned(tvList.Selected.Data) then
  begin
    Result := TNodeData(tvList.Selected.Data).ID;
  end else
  begin
    Result := - 1;
  end;
end;

function TfmTree.GetSelectedPID: Double;
begin
  // синхронизируем Tree и odsList
  if Assigned(tvList.Selected) and
     Assigned(tvList.Selected.Data) then
  begin
    Result := TNodeData(tvList.Selected.Data).ParentID;
  end else
  begin
    Result := - 1;
  end;
end;

procedure TfmTree.RefreshAllRecords;
begin
  // берем значения из базы
  inherited;

  //
  RepaintTreeView(nil);
end;

procedure TfmTree.RepaintTreeView(ANode: TTreeNode);
var
  VCursor: TCursor;
  VOnChange: TTVChangedEvent;
begin
  //
  VCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // бокируем отрисовку
    tvList.Items.BeginUpdate;
    try
      // временно блокируем Event OnChange
      VOnChange := tvList.OnChange;
      tvList.OnChange := nil;
      try
        // если нет стартового Node то обновляем всё
        if not Assigned(ANode) then
        begin
          tvList.Items.Clear;
        end;
        (*else
        if TNodeData(ANode.Data).Activated and (not FReload) then
        begin
         Exit;
        end  else
        begin
        ANode.DeleteChildren;
        end;
        *)

        // добавляем элементы в дерево
        while not odsList.Eof do
        begin
          // добавляем элемент
          AddDBTreeItem(ANode);
          odsList.Next;
        end;
        //tvList.Selected
      finally
        tvList.OnChange := VOnChange;
      end;
    finally
      tvList.Items.EndUpdate;
    end;
  finally
    Screen.Cursor := VCursor;
  end;
  (*
  FTreeView.FullExpand;
  FTreeView.Items[0].Selected := True;
  *)
end;

function TfmTree.AddDBTreeItem(ANode: TTreeNode): TTreeNode;
var
  VNodeData: TNodeData;
begin
  // Добавляем только видимые элементы
  if odsList.FieldByName('VISIBLE').AsString <> 'T' then
  begin
    Result := nil
  end else
  begin
    // проверяем предка
    if Assigned(ANode) then
    begin
      if Assigned(ANode.Data) and (TNodeData(ANode.Data).ID <> odsList.FieldByName('PARENT_ID').AsFloat) then
      begin
        ANode := nil;
      end;
    end;

    // ищем предка если надо
    if not Assigned(ANode) then
    begin
      ANode := GetTreeNode(odsList.FieldByName('PARENT_ID').AsFloat);
    end;

    // создаем и заполняем значениями
    VNodeData := CreateNodeData;

    // стандартные поля
    VNodeData.ID := odsList.FieldByName('ID').AsFloat;
    VNodeData.ParentID := odsList.FieldByName('PARENT_ID').AsFloat;
    VNodeData.ImageIndex := odsList.FieldByName('IMAGE_INDEX').AsInteger;
    VNodeData.SelectedIndex := odsList.FieldByName('SELECT_INDEX').AsInteger;

    VNodeData.Activated := False;

    Result := tvList.Items.AddChildObject(ANode, odsList.FieldByName('DISPLAY_NAME').AsString, VNodeData);
    Result.ImageIndex := odsList.FieldByName('IMAGE_INDEX').AsInteger;
    Result.SelectedIndex := odsList.FieldByName('IMAGE_INDEX').AsInteger;

    // Добавим фиктивную (пустую) дочернюю ветвь только для того,
    // чтобы был отрисован [+] на ветке и ее можно было бы раскрыть
    //FTreeView.Items.AddChildObject(Result , DEF_LABLE , nil);

    // ставим признак что считали наследников
    if Assigned(ANode) then
    begin
      TNodeData(ANode.Data).Activated := True;
    end;

    // форматируем узел
    FormatNode(Result);
  end;
end;

function TfmTree.GetTreeNode(AID: Double): TTreeNode;
var
  I: Integer;
  VNode: TTreeNode;
begin
  VNode := nil;
  for I := 0 to tvList.Items.Count - 1 do
  begin
    VNode := tvList.Items.Item[I];
    if Assigned(VNode.Data) and (TNodeData(VNode.Data).ID = AID) then
    begin
      // нашли
      Break;
    end else
    begin
      // не то
      VNode := nil;    
    end;
  end;
  Result := VNode;
end;

procedure TfmTree.FormatNode(ANode: TTreeNode);
begin
  //
end;

procedure TfmTree.DoChangeNodeState(ANode: TTreeNode);
begin
  // проверка
  if not Assigned(ANode) then Exit;

  // определяем CheckBox это или нет
  if ANode.StateIndex in [cUnChecked,cChecked] then
  begin
    DoOnCheckBoxClick(ANode);
  end else
  if ANode.StateIndex in [cRadioUnChecked,cRadioChecked] then
  begin
    DoOnRadioItemClick(ANode);
  end;
end;

procedure TfmTree.SetNodeState(ANode: TTreeNode; const AState: Integer;
  const ARecursive: Boolean);
var
  I: Integer;
begin
  // проверка
  if not Assigned(ANode) then Exit;

  // ставим метку самому узлу
  ANode.StateIndex := AState;

  // если не рекурсивно то выход
  if not ARecursive then Exit;

  // пробегаемся по детям
  for I := 0 to ANode.Count - 1 do
  begin
    SetNodeState(ANode.Item[I], AState, ARecursive);
  end;
end;

procedure TfmTree.DoOnCheckBoxClick(ANode: TTreeNode);
var
  VState: Integer;
begin
  VState := ANode.StateIndex;

  // Определяем новое состояние
  if ANode.StateIndex = cUnChecked then
  begin
    VState := cChecked;
  end else
  if ANode.StateIndex = cChecked then
  begin
    VState := cUnChecked;
  end;

  // Меняем состояние для узал и если надо для его потомков
  SetNodeState(ANode, VState, FRecursiveCheckBoxClick);
end;

procedure TfmTree.DoOnRadioItemClick(ANode: TTreeNode);
var
  VTemp: TTreeNode;
begin
  // определяем первый узел группы
  VTemp := ANode.Parent;
  if not Assigned(VTemp) then
  begin
    VTemp := TTreeView(ANode.TreeView).Items.getFirstNode
  end else
  begin
    VTemp := VTemp.getFirstChild;
  end;

  // снимем всей группе признак выбрано
  while Assigned(VTemp) do
  begin
    if (VTemp.StateIndex in [cRadioUnChecked,cRadioChecked]) then
    begin
      VTemp.StateIndex := cRadioUnChecked;
    end;
    VTemp := VTemp.getNextSibling;
  end;

  // ставим нашему узлу признак выбрано
  ANode.StateIndex := cRadioChecked;
end;

procedure TfmTree.tvListClick(Sender: TObject);
var
  P: TPoint;
begin
  // опеределяем кликнули ли на колонке состояния узла
  GetCursorPos(P);
  P := tvList.ScreenToClient(P);
  if (htOnStateIcon in tvList.GetHitTestInfoAt(P.X,P.Y)) then
  begin
    DoChangeNodeState(tvList.Selected);
  end;
end;

procedure TfmTree.Expand(const ALevel: Integer);
var
  I: Integer;
  VNode: TTreeNode;
begin
  tvList.Items.BeginUpdate;
  try
    //tvList.FullCollapse;

    // меняем состояние у папок Delphi
    for I := 0 to tvList.Items.Count - 1 do
    begin
      VNode := tvList.Items[I];
      // по хорошему надо определять по типу узла но лень
      if VNode.Level <= ALevel - 1 then
      begin
        VNode.Expand(False);
      end;
    end;

  finally
    tvList.Items.EndUpdate;
  end;
end;

function TfmTree.CreateNodeData: TNodeData;
begin
  // создаем хранилище данных узлела
  // в наследниках можем создавать с другим классом
  // и заполнять нужные поля поля
  Result := TNodeData.Create(tvList);
end;

{ TNodeDataAdv }

function TNodeDataAdv.AddDate(const AName: string;
  const ADataValue: TDateTime): TDataValue;
begin
  Result := FValues.AddDate(AName, ADataValue);
end;

function TNodeDataAdv.AddField(const AField: TField): TDataValue;
begin
  Result := nil;

  if not Assigned(AField) then Exit;

  // копируем значение поля
  if AField.DataType = ftFloat then
  begin
    Result := FValues.AddFloat(AField.FieldName, AField.AsFloat);
    Result.Value.DisplayFormat := TNumericField(AField).DisplayFormat;
  end else
  if AField.DataType = ftDateTime then
  begin
    Result := FValues.AddDate(AField.FieldName, AField.AsDateTime);
    Result.Value.DisplayFormat := TDateTimeField(AField).DisplayFormat;
  end else
  begin
    Result := FValues.AddStr(AField.FieldName, AField.AsString);
    Result.Value.DisplayFormat := '';
  end;
end;

function TNodeDataAdv.AddFloat(const AName: string;
  const ADataValue: Double): TDataValue;
begin
  Result := FValues.AddFloat(AName, ADataValue);
end;

function TNodeDataAdv.AddStr(const AName, ADataValue: string): TDataValue;
begin
  Result := FValues.AddStr(AName, ADataValue);
end;

constructor TNodeDataAdv.Create(AOwner: TComponent);
begin
  inherited;

  FValues := TValues.Create(Self);
end;

destructor TNodeDataAdv.Destroy;
begin
  FreeAndNil(FValues);

  inherited;
end;

function TNodeDataAdv.ValueByName(const AName: string): TValue;
begin
  Result := FValues.ValueByName(AName);
end;

{ TValues }

function TValues.AddDate(const AName: string; const ADataValue: TDateTime): TDataValue;
begin
  Result := TDataValue(inherited Add);
  Result.FValue.Name := AName;
  Result.FValue.ValueType := vtDate;
  Result.FValue.AsDateTime := ADataValue;
end;

function TValues.AddFloat(const AName: string; const ADataValue: Double): TDataValue;
begin
  Result := TDataValue(inherited Add);
  Result.FValue.Name := AName;
  Result.FValue.ValueType := vtNumber;
  Result.FValue.AsFloat := ADataValue;
end;

function TValues.AddStr(const AName: string; const ADataValue: string): TDataValue;
begin
  Result := TDataValue(inherited Add);
  Result.FValue.Name := AName;
  Result.FValue.ValueType := vtString;
  Result.FValue.Value := ADataValue;
end;

constructor TValues.Create(Owner: TPersistent);
begin
 inherited Create(TDataValue);
 FOwner := Owner;
end;

function TValues.GetItem(Index: Integer): TNamedValue;
begin
  Result := TDataValue(inherited Items[Index]).Value;
end;

function TValues.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TValues.ValueByName(const AName: string): TValue;
var
  I: Integer;
begin
  // ищем название по имен
  Result := nil;
  for I := 0 to Count - 1 do
  begin
    if Items[I].Name = AName then
    begin
      Result := Items[I];
    end;
  end;
end;

{ TDataValue }

constructor TDataValue.Create(Collection: TCollection);
begin
  inherited Create(Collection);

  FValue := TNamedValue.Create(Self);
end;

destructor TDataValue.Destroy;
begin
  FreeAndNil(FValue);

  inherited;
end;

procedure TfmTree.DoAfterDeleteRow;
begin
  // удаляем текущий элемент
  tvList.Selected.Delete;
end;

procedure TfmTree.DoAfterInsertRow;
var
  VNode: TTreeNode;
begin
  // добавляем узел
  VNode := AddDBTreeItem(tvList.Selected);

  if Assigned(VNode) then
  begin
    VNode.Selected := True;
  end;
end;

procedure TfmTree.DoAfterUpdateRow;
begin
  if not Assigned(tvList.Selected) then Exit;

  // пока переписываем только название
  tvList.Selected.Text := DataSet.FieldByName('DISPLAY_NAME').AsString;
  tvList.Selected.ImageIndex := odsList.FieldByName('IMAGE_INDEX').AsInteger;
  tvList.Selected.SelectedIndex := odsList.FieldByName('IMAGE_INDEX').AsInteger;
end;

procedure TfmTree.SetDefValues;
begin
  // при вставке проставляем ID предка (PARENT_ID)
  if (ID <> -1) and (EditType = etInsert) then
  begin
    odsList.FieldByName('PARENT_ID').AsFloat := ID;
  end;
end;

end.
