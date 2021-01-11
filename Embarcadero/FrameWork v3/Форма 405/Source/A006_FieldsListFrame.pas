unit A006_FieldsListFrame;

interface

uses
  Forms, Classes, ActnList, Menus, Db, OracleData, Controls, ComCtrls,
  ToolWin;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ExtCtrls, dm005_MainData

type
  TNodeData = class(TObject)
  public
    FT161_ID: Double;
    FT162_ID: Double;
    FT162_DISPLAY_NAME: string;
  end;

  TOnFieldSelect  = procedure(const AT161_ID: Double) of object;

  TOnFieldFilter  = procedure(const AT161_ID: Double; const AT161_DISPLAY_NAME: string) of object;

  TA006_FieldsList = class(TFrame)
    tvMenu: TTreeView;
    odsMenu: TOracleDataSet;
    odsMenuT162_ID: TFloatField;
    odsMenuDISPLAY_NAME: TStringField;
    odsMenuT161_ID: TFloatField;
    ToolBar2: TToolBar;
    ToolBar1: TToolBar;
    pmTree: TPopupMenu;
    ActionList: TActionList;
    actFullExpand: TAction;
    actFullCollapse: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actSelectField: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actSelectField1: TMenuItem;
    actFilter: TAction;
    ToolButton3: TToolButton;
    N4: TMenuItem;
    ToolBar3: TToolBar;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    odsMenuT161_AGGREGATE: TStringField;
    ToolButton5: TToolButton;
    actRefresh: TAction;
    ToolButton6: TToolButton;
    procedure actFullExpandExecute(Sender: TObject);
    procedure actFullCollapseExecute(Sender: TObject);
    procedure actSelectFieldExecute(Sender: TObject);
    procedure tvMenuDblClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    FOnFieldSelect: TOnFieldSelect;
    FOnFieldFilter: TOnFieldFilter;
    //
    procedure SelectField(const AT161_ID: Double);
  public
    procedure BuildTree;
    //
    property OnFieldSelect: TOnFieldSelect read FOnFieldSelect write FOnFieldSelect;
    property OnFieldFilter: TOnFieldFilter read FOnFieldFilter write FOnFieldFilter;
  end;

implementation

//uses dm02_PictersData;

{$R *.DFM}

{ TA006_FieldsList }

procedure TA006_FieldsList.BuildTree;
var
  VNodeData: TNodeData;
  VNode, VParentNode: TTreeNode;
begin
  // очищаем
  tvMenu.Items.Clear;

  // заполн€ем
  odsMenu.Close;
  odsMenu.Open;
  odsMenu.First;
  
  VParentNode :=  nil;
  while not odsMenu.Eof do
  begin
    // объект дл€ каждого узла
    VNodeData := TNodeData.Create;
    VNodeData.FT162_ID := odsMenuT162_ID.AsFloat;
    VNodeData.FT161_ID := odsMenuT161_ID.AsFloat;

    // провер€ем что рисуем папку или поле
    if VNodeData.FT161_ID = 0 then
    begin
      // папка меню
      VParentNode := tvMenu.Items.AddObject(nil, odsMenuDISPLAY_NAME.AsString, VNodeData);
      VParentNode.ImageIndex := 37;
      VParentNode.SelectedIndex := 37;
    end else
    begin
      // поле с возможностью выбора
      VNode := tvMenu.Items.AddChildObject(VParentNode, odsMenuDISPLAY_NAME.AsString, VNodeData);
      if odsMenuT161_AGGREGATE.AsString = 'Y' then
      begin
        VNode.ImageIndex := 44;
        VNode.SelectedIndex := 44;
      end else
      begin
        VNode.ImageIndex := 40;
        VNode.SelectedIndex := 40;
      end;
    end;
    odsMenu.Next;
  end;
end;

procedure TA006_FieldsList.actFullExpandExecute(Sender: TObject);
begin
  tvMenu.FullExpand;

  // выбираем первый элемент
  if tvMenu.Items.Count > 1 then
  begin
    //tvMenu.Items[0].Selected := True;
    tvMenu.Items[1].Selected := True;
    tvMenu.Items[0].Selected := True;
  end;
end;

procedure TA006_FieldsList.actFullCollapseExecute(Sender: TObject);
begin
  tvMenu.FullCollapse;
end;

procedure TA006_FieldsList.actSelectFieldExecute(Sender: TObject);
var
  VNode: TTreeNode;
  VNodeData: TNodeData;
begin
  // проверка
  VNode := tvMenu.Selected;
  if not Assigned(VNode) then Exit;
  VNodeData := TNodeData(VNode.Data);


  // выбираем пол€
  if VNodeData.FT161_ID <> 0 then
  begin
    // выбираем одно поле
    SelectField(VNodeData.FT161_ID);
  end;
  (*
  // выбираем пол€
  if VNodeData.FT161_ID = 0 then
  begin
    // если это папка то добавл€ем все пол€
    for I := 0 to VNode.Count - 1 do
    begin
      VNodeData := TNodeData(VNode[I].Data);
      SelectField(VNodeData.FT161_ID);
    end;
  end else
  begin
    // выбираем одно поле
    SelectField(VNodeData.FT161_ID);
  end;
  *)
end;

procedure TA006_FieldsList.tvMenuDblClick(Sender: TObject);
begin
  actSelectFieldExecute(Sender);
end;

procedure TA006_FieldsList.SelectField(const AT161_ID: Double);
begin
  // делаем какую-либо стронюю обработку
  if Assigned(OnFieldSelect) then
  begin
   OnFieldSelect(AT161_ID);
  end;
end;

procedure TA006_FieldsList.actFilterExecute(Sender: TObject);
var
  VNode: TTreeNode;
  VNodeData: TNodeData;
begin
  // проверка
  VNode := tvMenu.Selected;
  if not Assigned(VNode) then Exit;
  VNodeData := TNodeData(VNode.Data);

  // выбираем пол€
  if VNodeData.FT161_ID = 0 then Exit;

  // делаем какую-либо стронюю обработку
  if Assigned(FOnFieldSelect) then
  begin
    FOnFieldFilter(VNodeData.FT161_ID, VNode.Text);
  end;
end;

procedure TA006_FieldsList.actRefreshExecute(Sender: TObject);
begin
  // перерисовываем дерево
  BuildTree;
end;

end.
