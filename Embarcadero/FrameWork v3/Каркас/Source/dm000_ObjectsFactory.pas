unit dm000_ObjectsFactory;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleData, unt004_ObjectsList, ActnList,
  unt005_FramesList, fm000_Parent, fm004_ListFrame, unt007_LinksList;

type
  //----------------------------------------------------------------------------
  // ���:         ����������� �����
  //
  // ����������:  �������� �� �������� � �������� DBObject
  //
  // ����������:  � ����������� ����������
  //                  1.  ������� ��������������� ��������
  //                      ��� ������� DBObject.ListView
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

  // ������������ ������

  // ������ ����������� �� ��������
  FModels := TDBObjectList.Create(Self);

  // ������ ����������� �������-�������������
  FFrames := TFrameObjectList.Create(Self);

  // ������ ������
  FLinks := TLinkObjectList.Create(Self);
end;

(*
function TObjectsFactory.BuildDbObject(AClass: TfmListClass): TfmList;
var
  I: Integer;
  VDBObject: TDBObject;
begin
  Result := nil;

  // ���� ���� �� ����� � ������
  for I := 0 to FModels.Count - 1 do
  begin
    if FModels.Items[I].ListView is AClass then
    begin
      Result := FModels.Items[I].ListView;
      Break;
    end;
  end;

  // ���� �� ����� �� �������
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
  // �������� �����
  VClass := GetClass(AClassName);

  // ������� ��������� ������
  Result := FrameByClass(TfmParentClass(VClass));
end;

function TObjectsFactory.FrameByClass(AClass: TfmParentClass): TfmParent;
var
  I: Integer;
begin
  Result := nil;

  // ���� ���� �� ����� � ������
  for I := 0 to FFrames.Count - 1 do
  begin
    if FFrames.Items[I].Frame is AClass then
    begin
      Result := FFrames.Items[I].Frame;
      Break;
    end;
  end;

  // ���� �� ����� �� �������
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
