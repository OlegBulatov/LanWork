unit unt004_ObjectsList;

interface

uses Classes, forms, fm004_ListFrame;

type
  //----------------------------------------------------------------------------
  // Тип:         Абстрактный класс
  //
  // Назначение:  Отвечает за создание и хранение DBObject
  //
  // Реализация:  В наследниках необходимо переопределить
  //                  1.  GetModelClass
  //                  2.  GetActionsClass
  //                  3.  GetListViewClass
  //----------------------------------------------------------------------------
  TDBObject = class(TCollectionItem)
  private
    FID: Double;
    FName: string;
    FDesc: string;
    FListView: TfmList;
    //
    procedure SetDesc(const Value: string);
    procedure SetID(const Value: Double);
    procedure SetName(const Value: string);
    //
  protected
    procedure AssignTo(Dest: TPersistent); override;
    //
    //function GetListViewClass: TfmListClass; virtual;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
  published
    property ID: Double read FID write SetID;
    property Name: string read FName write SetName;
    property Desc: string read FDesc write SetDesc;
    //
    property ListView: TfmList read FListView write FListView;
  end;

  TDBObjectClass = class of TDBObject;

  TDBObjectList = class(TCollection)
  private
    FOwner: TDataModule;
  protected
    function GetAttrCount: Integer; override;
    function GetAttr(Index: Integer): string; override;
    function GetItemAttr(Index, ItemIndex: Integer): string; override;
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TDBObject;
    procedure SetItem(Index: Integer; const Value: TDBObject);
  public
    constructor Create(Owner: TDataModule);
    function Add: TDBObject;
    //function ControllerByID(AID: Double): TDataList;
    //function ControllerByName(AItemName: string): TDataList;
    property Items[Index: Integer]: TDBObject read GetItem write SetItem; default;
  end;

implementation

uses Sysutils;

{ TDBObject }

(*
function TDBObject.GetListViewClass: TfmListClass;
begin
  Result := nil;
end;
*)

procedure TDBObject.AssignTo(Dest: TPersistent);
begin
  if Dest is TDBObject then
  begin
    with TDBObject(Dest) do
    begin
      FID := Self.FID;
      FName := Self.FName;
      FDesc := Self.FDesc;
      FListView := Self.FListView;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

constructor TDBObject.Create(Collection: TCollection);
begin
  inherited;

  //FListView := GetListViewClass.Create(nil);

  (*
  // создаем Model
  FDataList := GetModelClass.Create(nil);

  // создаем Actions, если надо
  if GetActionsClass <> nil then
  begin
    FActions := GetActionsClass.Create(nil);
    FActions.DataList := FDataList;
  end;

  // создаем ListView
  if GetListViewClass <> nil then
  begin
    FListView := GetListViewClass.Create(nil);
    LinkListView;
  end;
  *)
end;

destructor TDBObject.Destroy;
begin
  // убиваем объекты
  //FListView.Free;

  (*
  if Assigned(FActions) then
  begin
    FActions.Free;
  end;
  FDataList.Free;
  *)

  inherited;
end;

procedure TDBObject.SetDesc(const Value: string);
begin
  FDesc := Value;
end;

procedure TDBObject.SetID(const Value: Double);
begin
  FID := Value;
end;

procedure TDBObject.SetName(const Value: string);
begin
  FName := Value;
end;

{ TDBObjectList }

function TDBObjectList.Add: TDBObject;
begin
  Result := TDBObject(inherited Add);
  //Result := AClass.Create(Self);
end;

constructor TDBObjectList.Create(Owner: TDataModule);
begin
  inherited Create(TDBObject);
  FOwner := Owner;
end;

function TDBObjectList.GetAttr(Index: Integer): string;
begin
  case Index of
    0: Result := 'ID';
    1: Result := 'Name';
    2: Result := 'Desc';
    3: Result := 'QueryObject';
  else
    Result := '';
  end;
end;

function TDBObjectList.GetAttrCount: Integer;
begin
  Result := 4;
end;

function TDBObjectList.GetItem(Index: Integer): TDBObject;
begin
  Result := TDBObject(inherited Items[Index]);
end;

function TDBObjectList.GetItemAttr(Index, ItemIndex: Integer): string;
begin
  case Index of
    0: Result := FloatToStr(Items[ItemIndex].ID);
    1: Result := Items[ItemIndex].Name;
    2: Result := Items[ItemIndex].Desc;
    //3: Result := Items[ItemIndex].QueryObject;
  else
    Result := '';
  end;
end;

function TDBObjectList.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

{
function TDBObjectList.ControllerByID(AID: Double): TDataList;
var
	I: Integer;
  VControllerItem: TDBObject;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
  	VControllerItem := GetItem(i);
    if VControllerItem.ID = AID then
    begin
    	Result := VControllerItem.Model;
      Exit;
    end;
  end;
end;

function TDBObjectList.ControllerByName(
  AItemName: string): TDataList;
var
	I: Integer;
  VControllerItem: TDBObject;
begin
  Result := nil;
  for I := 0 to Count - 1 do
  begin
  	VControllerItem := GetItem(I);
    if VControllerItem.Name = AItemName then
    begin
    	Result := VControllerItem.Model;
      Exit;
    end;
  end;
end;
}

procedure TDBObjectList.SetItem(Index: Integer; const Value: TDBObject);
begin
  Items[Index].Assign(Value);
end;

end.
