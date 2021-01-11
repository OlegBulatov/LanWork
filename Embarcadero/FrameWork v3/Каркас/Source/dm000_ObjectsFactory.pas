unit dm000_ObjectsFactory;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleData, unt004_ObjectsList, ActnList,
  unt005_FramesList, fm000_Parent, fm004_ListFrame, unt007_LinksList;

type
  //----------------------------------------------------------------------------
  // Тип:         Абстрактный класс
  //
  // Назначение:  Отвечает за создание и хранение DBObject
  //
  // Реализация:  В наследниках необходимо
  //                  1.  Создать соответствующее свойство
  //                      для каждого DBObject.ListView
  //----------------------------------------------------------------------------

  TObjectsFactory = class;

  TObjectsFactoryClass = class of TObjectsFactory;

  TObjectsFactory = class(TDataModule)
  private
  protected
    FModels: TDBObjectList;
    //
    FFrames: TFrameObjectList;
    //
    FLinks: TLinkObjectList;
    //
  public
    constructor Create(AOwner: TComponent); override;
    //
    function DbObjectByName(AClassName: string): TfmList;
    function DbObjectByClass(AClass: TfmListClass): TfmList;
    //
    function FrameByName(AClassName: string): TfmParent;
    function FrameByClass(AClass: TfmParentClass): TfmParent;
    //
    procedure RegisterFrame(AFrame: TfmParent);
    //
    property Links: TLinkObjectList read FLinks;
  end;

var
  ObjectsFactory: TObjectsFactory;

implementation

{$R *.DFM}

constructor TObjectsFactory.Create(AOwner: TComponent);
begin
  inherited;

  // регистрируем классы

  // Список создаваемых БД объектов
  FModels := TDBObjectList.Create(Self);

  // Список создаваемых фрэймов-конструкторов
  FFrames := TFrameObjectList.Create(Self);

  // Список связей
  FLinks := TLinkObjectList.Create(Self);
end;

(*
function TObjectsFactory.BuildDbObject(AClass: TfmListClass): TfmList;
var
  I: Integer;
  VDBObject: TDBObject;
begin
  Result := nil;

  // ищем есть ли такой в модели
  for I := 0 to FModels.Count - 1 do
  begin
    if FModels.Items[I].ListView is AClass then
    begin
      Result := FModels.Items[I].ListView;
      Break;
    end;
  end;

  // если не нашли то создаем
  if not Assigned(Result) then
  begin
    VDBObject := FModels.Add;
    VDBObject.ListView := AClass.Create(nil);
    Result := VDBObject.ListView;
  end;
end;
*)

function TObjectsFactory.FrameByName(AClassName: string): TfmParent;
var
  VClass: TPersistentClass;
begin
  // получаем класс
  VClass := GetClass(AClassName);

  // создаем экземпляр класса
  Result := FrameByClass(TfmParentClass(VClass));
end;

function TObjectsFactory.FrameByClass(AClass: TfmParentClass): TfmParent;
var
  I: Integer;
begin
  Result := nil;

  // ищем есть ли такой в модели
  for I := 0 to FFrames.Count - 1 do
  begin
    if FFrames.Items[I].Frame is AClass then
    begin
      Result := FFrames.Items[I].Frame;
      Break;
    end;
  end;

  // если не нашли то создаем
  if not Assigned(Result) then
  begin
    Result := FFrames.Add(AClass).Frame;
  end;
end;

function TObjectsFactory.DbObjectByClass(AClass: TfmListClass): TfmList;
begin
  Result :=  TfmList(FrameByClass(AClass));
end;

function TObjectsFactory.DbObjectByName(AClassName: string): TfmList;
begin
  Result :=  TfmList(FrameByName(AClassName));
end;

procedure TObjectsFactory.RegisterFrame(AFrame: TfmParent);
begin
  RegisterClass(TPersistentClass(AFrame.ClassType));
  FFrames.AddFrame(AFrame);
end;

end.
