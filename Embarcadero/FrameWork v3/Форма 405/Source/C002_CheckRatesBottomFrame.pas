unit C002_CheckRatesBottomFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, Variants,
  System.Actions, Vcl.Forms, fm031_FilterFrame;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TC002_CheckRatesBottom = class(TfmGrid)
    odsListT027_ID: TFloatField;
    odsListSEC_TYPE: TStringField;
    odsListT001_OP_ID: TFloatField;
    odsListOP_CODE: TFloatField;
    odsListT002_BANK_CODE: TStringField;
    odsListISSUER: TStringField;
    odsListREZID: TStringField;
    odsListNREZID: TStringField;
    odsListPAY_DIR: TIntegerField;
    odsListOP_COUNT: TFloatField;
    odsListOP_SUM: TFloatField;
    odsListT001_PRICE: TFloatField;
    odsListT001_RATE: TFloatField;
    odsListPRICE_DIFF: TFloatField;
    odsListOP_DATE: TDateTimeField;
    odsListT001_N9: TFloatField;
    odsListT001_ID: TFloatField;
    oqSaveGroup: TOracleQuery;
    ToolButton1: TToolButton;
    actGroup: TAction;
    odsListIS_CHECKED: TFloatField;
    actUngroup: TAction;
    ToolButton2: TToolButton;
    oqDeleteGroup: TOracleQuery;
    odsListPAY_GROUP_ID: TFloatField;
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actGroupUpdate(Sender: TObject);
    procedure actGroupExecute(Sender: TObject);
    procedure actUngroupUpdate(Sender: TObject);
    procedure actUngroupExecute(Sender: TObject);
  private
    procedure CellClick(Column: TColumn);
  protected
    function GetKeyFieldName: string; override;
    //
    procedure DoCheck(CheckColumnName: string); override;
    procedure DoUnCheck(CheckColumnName: string); override;
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  C002_CheckRatesBottom: TC002_CheckRatesBottom;

implementation

//dm006_PictersData;

{$R *.DFM}

{ TC002_CheckRatesBottom }

procedure TC002_CheckRatesBottom.InitFrame(Sender: TObject);
var
  VColumnDef: TColumnDef;
begin
  inherited;
  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[2]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddFloat(26, 0);
  VColumnDef.Images.AddFloat(49, 1);
//  VColumnDef.OnCellClick := CellClick;

  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[1]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddFloat(57, 0);
  VColumnDef.Images.AddFloat(58, 1);
  VColumnDef.OnCellClick := CellClick;
end;

procedure TC002_CheckRatesBottom.xxxDBGridCellClick(Column: TColumn);
begin
  if Assigned(Column.Field) then
    begin
    if (Column.Field.FieldName = 'IS_CHECKED') then
      xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing]
    else
      xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    end;

  inherited;
end;

procedure TC002_CheckRatesBottom.CellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'IS_CHECKED') and (not Column.Field.IsNull) then
    begin
    if Column.Field.AsFloat = 1 then
      begin
      // снимаем галочку
      DoUnCheck(Column.Field.FieldName);
      end
    else
      begin
      // ставим галочку
      DoCheck(Column.Field.FieldName);
      end;

//    SaveCheck;
    end;
end;

procedure TC002_CheckRatesBottom.DoCheck(CheckColumnName: string);
begin
  // ставим галочку
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsFloat := 1;
  odsList.Post;
end;

procedure TC002_CheckRatesBottom.DoUnCheck(CheckColumnName: string);
begin
  // снимаем галочку
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsFloat := 0;
  odsList.Post;
end;

procedure TC002_CheckRatesBottom.actGroupUpdate(Sender: TObject);
begin
  actGroup.Enabled := not odsList.IsEmpty and (odsListIS_CHECKED.AsFloat = 1); 
end;

procedure TC002_CheckRatesBottom.actGroupExecute(Sender: TObject);
var
  vCursor: TCursor;
//  vT001_ID: Double;
  vIds: Variant;
  vGroup_ID: Double;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;
  odsList.DisableControls;
//  vT001_ID := odsListT001_ID.AsFloat;

  vIds := VarArrayCreate([0, 0], varVariant);
  odsList.First;
  while  not odsList.Eof do
    begin
    if odsListIS_CHECKED.AsFloat = 1 then
      begin
      vIds[VarArrayHighBound(vIds, 1)] := odsListT001_ID.AsFloat;
      VarArrayRedim(vIds, VarArrayHighBound(vIds, 1)+1);
      end;

    odsList.Next;
    end;

  VarArrayRedim(vIds, VarArrayHighBound(vIds, 1)-1);

  vGroup_ID := 0;
  if VarArrayHighBound(vIds, 1) > 0 then
    begin
    oqSaveGroup.SetVariable('T001_IDs', vIds);
    oqSaveGroup.Execute;
    vGroup_ID := oqSaveGroup.GetVariable('GROUP_ID');
    end;

  odsList.First;
  while  not odsList.Eof do
    begin
    if odsListIS_CHECKED.AsFloat = 1 then
      begin
      odsList.Edit;
      if vGroup_ID <> 0 then
        odsList.FieldByName('PAY_GROUP_ID').AsFloat := vGroup_ID;
      // Снимаем галочку
      odsList.FieldByName('IS_CHECKED').AsFloat := 0;
      odsList.Post;
      end;

    odsList.Next;
    end;

  RefreshDataAfterChange;
//  odsList.Locate('T001_ID', vT001_ID, [loCaseInsensitive]);

  odsList.EnableControls;
  Screen.Cursor := vCursor;
end;

procedure TC002_CheckRatesBottom.actUngroupUpdate(Sender: TObject);
begin
  actUngroup.Enabled := not odsList.IsEmpty and (odsListPAY_GROUP_ID.AsString <> '');
end;

procedure TC002_CheckRatesBottom.actUngroupExecute(Sender: TObject);
begin
  oqDeleteGroup.SetVariable('GROUP_ID', odsListPAY_GROUP_ID.AsFloat);
  oqDeleteGroup.Execute;

  RefreshDataAfterChange;
end;

function TC002_CheckRatesBottom.GetKeyFieldName: string;
begin
  Result := 'T001_ID';
end;

end.
