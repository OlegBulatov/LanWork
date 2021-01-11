unit fm37_DateTreeFrame;

interface

uses
  fm02_PrmParentFrame, Db, OracleData, Controls, ComCtrls, Classes,
  StdCtrls, untDBTree;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm37_DateTree = class(Tfm02_PrmParent)
    TreeView: TTreeView;
    odsTree: TOracleDataSet;
    Label1: TLabel;
    odsTreeT055_ID: TFloatField;
    odsTreeT055_PARENT_ID: TFloatField;
    odsTreeT055_START_DATE: TDateTimeField;
    odsTreeT055_END_DATE: TDateTimeField;
    odsTreeT055_TYPE: TStringField;
    odsTreeT055_IMAGE_INDEX: TFloatField;
    odsTreeT055_SHORT_NAME: TStringField;
    procedure TreeViewClick(Sender: TObject);
  private
    { Private declarations }
    FDBTree: TDBTree;
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm37_DateTree: Tfm37_DateTree;

implementation

uses dm005_MainData, untParams, dm02_PictersData;

{$R *.DFM}

procedure Tfm37_DateTree.GetParamsValues;
var
  I: Integer;
  J: Integer;
  VArray: TFloatArray;
begin
// в качестве параметров будут даты окончания периодов (в виде числа)
  VArray := Param.AsFloatArray;
  J := 0;
  SetLength(VArray, 0);
  for I := odsTree.RecordCount - 1 downto 0 do
  begin
    if TreeView.Items[I].ImageIndex = 24 then
    begin
      J := J + 1;
      SetLength(VArray, J);
      VArray[J - 1] := FDBTree.TreeNodeData[I].ID;
    end;
  end;
  Param.AsFloatArray := VArray;

end;

procedure Tfm37_DateTree.SetParamsValues;
var
  I: Integer;
begin
    // рисуем дерево
  FDBTree := TDBTreeManager.FillTree(
     TreeView,
     odsTree,
     'T055_ID',
     'T055_PARENT_ID',
     'T055_SHORT_NAME',
     'T055_START_DATE',
     'T055_TYPE',
     'T055_IMAGE_INDEX');

  if TreeView.Items.Count > 1 then
  begin
    I := 0;
    repeat
      I := I + 1;
      TreeView.Items[TreeView.Items.Count - I].Selected := True;
      TreeView.Items[TreeView.Items.Count - I].ImageIndex := 24;
      TreeView.Items[TreeView.Items.Count - I].SelectedIndex := 24;
    until TreeView.Items[TreeView.Items.Count - I].Level = 0;

    repeat
      I := I + 1;
      if FDBTree.TreeNodeData[TreeView.Items.Count - I].Operation <> 'M' then
      begin
        TreeView.Items[TreeView.Items.Count - I].Selected := True;
        TreeView.Items[TreeView.Items.Count - I].ImageIndex := 24;
        TreeView.Items[TreeView.Items.Count - I].SelectedIndex := 24;
      end;
    until TreeView.Items[TreeView.Items.Count - I].Level = 0;
  end;

end;

procedure Tfm37_DateTree.TreeViewClick(Sender: TObject);
begin
  if TreeView.Selected.ImageIndex = 24 then
    TreeView.Selected.ImageIndex := 25
  else
    TreeView.Selected.ImageIndex := 24;
  TreeView.Selected.SelectedIndex := TreeView.Selected.ImageIndex;
end;

end.
