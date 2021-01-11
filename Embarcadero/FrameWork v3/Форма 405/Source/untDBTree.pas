{******************************************************************************
   Название:       untDBTree
   Назначение:	   классы для работы с TreeView

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко		   1. Создание модуля
*******************************************************************************}

unit untDBTree;

interface

uses comctrls, controls, db, classes, frm00_ParentForm;

type

  TDBTreeNodeData = class(TComponent)
  private
    FID: Double;
    FCode: string;
    FForm: TWinControl;
    FOperation: string;
    FImageIndex: Integer;
  public
    property ID: Double read FID write FID;
    property Code: string read FCode write FCode;
    property Operation: string read FOperation write FOperation;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
    property Form: TWinControl read FForm write FForm;
  end;

  TDBTree = class(TComponent)
  private
    FTreeView: TTreeView;
    FDataSet: TDataSet;
    FIDName: string;
    FParentIDName: string;
    FTextName: string;
    FClassName: string;
    FOperationName: string;
    FImageIndex: string;
    function AddDBTreeItem(AID, AParentID: Double; AImageIndex: Integer; const AText: string; AOperation: string): TTreeNode;
    function CreateNodeData(AID: Double; AImageIndex: Integer; AOperation: string): TDBTreeNodeData;
    function FieldByName(const FieldName: string): TField;
    function GetDBTreeNode(Index: Double): TTreeNode;
    function GetTreeNodeData(Index: Integer): TDBTreeNodeData;
    procedure DropTree;
  public
    constructor Create(const ADBTree: TTreeView); reintroduce;
    procedure FillTree;
    property ImageIndex: string read FImageIndex write FImageIndex;
    property IDName: string read FIDName write FIDName;
    property ParentIDName: string read FParentIDName write FParentIDName;
    property TextName: string read FTextName write FTextName;
    property Name: string read FClassName write FClassName;
    property Operation: string read FOperationName write FOperationName;
    property DataSet: TDataSet read FDataSet write FDataSet;
    property DBTreeNode[Index: Double]: TTreeNode read GetDBTreeNode;
    property TreeNodeData[Index: Integer]: TDBTreeNodeData read GetTreeNodeData;
  end;

  TDBTreeManager = class(TComponent)
    class function FillTree(const ADBTree: TTreeView; const ADataSet: TDataSet;
      AIDName, AParentIDName, ATextName, AClassName, AOperationName, AImageIndex: string): TDBTree;
  end;

implementation

{ TDBTree }

function TDBTree.AddDBTreeItem(AID, AParentID: Double; AImageIndex: Integer;
  const AText: string; AOperation: string): TTreeNode;
var
  VNode: TTreeNode;
  VNodeData: TDBTreeNodeData;
begin
  VNode:= DBTreeNode[AParentID];
  VNodeData := CreateNodeData(AID, AImageIndex, AOperation);
  if not Assigned(VNode) then AParentId := 0;
  if AParentId = 0 then
  begin
     VNode := FTreeView.Items.GetFirstNode;
     VNode := FTreeView.Items.AddObject(VNode, AText, VNodeData);
  end else
  begin
     VNode:= FTreeView.Items.AddChildObject(VNode, AText, VNodeData);
  end;
  VNode.ImageIndex := AImageIndex;
  VNode.SelectedIndex := AImageIndex;
  Result := VNode;
end;

constructor TDBTree.Create(const ADBTree: TTreeView);
begin
  inherited Create(ADBTree);
  FTreeView := ADBTree;
end;

function TDBTree.CreateNodeData(AID: Double; AImageIndex: Integer; AOperation: string): TDBTreeNodeData;
begin
  Result := TDBTreeNodeData.Create(FTreeView);
  Result.ID := AID;
  Result.Code := FieldByName(FClassName).AsString;
  Result.Operation := AOperation;
  Result.ImageIndex := AImageIndex;
end;

procedure TDBTree.DropTree;
var
  I: Integer;
  VNodeData: TDBTreeNodeData;
begin
  for I := 0 to FTreeView.Items.Count - 1 do
  begin
     VNodeData := TreeNodeData[I];
     if Assigned(VNodeData) then VNodeData.Free;
  end;
  FTreeView.Items.Clear;
end;

function TDBTree.FieldByName(const FieldName: string): TField;
begin
  Result := FDataSet.FieldByName(FieldName);
end;

procedure TDBTree.FillTree;
begin
  DropTree;
  with DataSet do
  begin
    if not Active then Open;
    First;
    while not Eof do
    begin
      AddDBTreeItem(
        FieldByName(IDName).AsFloat,
        FieldByName(ParentIDName).AsFloat,
        FieldByName(ImageIndex).AsInteger,
        FieldByName(TextName).AsString,
        FieldByName(Operation).AsString);
      Next;
    end;
  end;
end;

function TDBTree.GetDBTreeNode(Index: Double): TTreeNode;
var
  I: Integer;
  VNode: TTreeNode;
begin
  VNode := nil;
  for I := 0 to FTreeView.Items.Count - 1 do
  begin
    if TreeNodeData[I].ID = Index then
    begin
      VNode := FTreeView.Items.Item[I];
      Break;
    end;
  end;
  Result := VNode;
end;

function TDBTree.GetTreeNodeData(Index: Integer): TDBTreeNodeData;
begin
  Result := FTreeView.Items.Item[Index].Data;
end;

{ TDBTreeManager }

class function TDBTreeManager.FillTree(const ADBTree: TTreeView;
  const ADataSet: TDataSet; AIDName, AParentIDName,
  ATextName, AClassName, AOperationName, AImageIndex: string): TDBTree;
begin
  Result := TDBTree.Create(ADBTree);
  Result.DataSet := ADataSet;
  Result.IDName := AIDName;
  Result.ParentIDName := AParentIDName;
  Result.TextName := ATextName;
  Result.Name := AClassName;
  Result.Operation := AOperationName;
  Result.ImageIndex := AImageIndex;
  Result.FillTree;
end;

end.
