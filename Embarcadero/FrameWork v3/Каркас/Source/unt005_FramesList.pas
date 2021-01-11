unit unt005_FramesList;

interface

uses Classes, forms, fm000_Parent;

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
  TFrameObject = class(TCollectionItem)
  private
    FFrame: TfmParent;
    //
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    destructor Destroy; override;
  published
    property Frame: TfmParent read FFrame write FFrame;
  end;

  TFrameObjectClass = class of TFrameObject;

  TFrameObjectList = class(TCollection)
  private
    FOwner: TDataModule;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TFrameObject;
    procedure SetItem(Index: Integer; const Value: TFrameObject);
  public
    constructor Create(Owner: TDataModule);
    function Add(AClass: TfmParentClass): TFrameObject;
    function AddFrame(AFrame: TfmParent): TFrameObject;
    property Items[Index: Integer]: TFrameObject read GetItem write SetItem; default;
  end;

implementation

uses Sysutils;

{ TFrameObject }

procedure TFrameObject.AssignTo(Dest: TPersistent);
begin
  if Dest is TFrameObject then
  begin
    with TFrameObject(Dest) do
    begin
      FFrame := Self.FFrame;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

destructor TFrameObject.Destroy;
begin
  // убиваем объекты
  FFrame.Free;

  inherited;
end;

{ TFrameObjectList }

function TFrameObjectList.Add(AClass: TfmParentClass): TFrameObject;
begin
  Result := TFrameObject(inherited Add);
  Result.FFrame := AClass.Create(nil);
end;

function TFrameObjectList.AddFrame(AFrame: TfmParent): TFrameObject;
begin
  Result := TFrameObject(inherited Add);
  Result.FFrame := AFrame;
end;

constructor TFrameObjectList.Create(Owner: TDataModule);
begin
  inherited Create(TFrameObject);
  FOwner := Owner;
end;

function TFrameObjectList.GetItem(Index: Integer): TFrameObject;
begin
  Result := TFrameObject(inherited Items[Index]);
end;

function TFrameObjectList.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TFrameObjectList.SetItem(Index: Integer; const Value: TFrameObject);
begin
  Items[Index].Assign(Value);
end;

end.
