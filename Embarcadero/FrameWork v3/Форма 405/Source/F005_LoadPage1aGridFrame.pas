unit F005_LoadPage1aGridFrame;

interface

uses
  fm005_GridFrame, Db, StdCtrls, RXCtrls, Oracle, Menus, OracleData,
  Classes, ActnList, Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, Windows, F005_LoadPeriodFilterFrame, Forms, fm031_FilterFrame;

type
  TF005_LoadPage1aGrid = class(TfmGrid)
    Panel1: TPanel;
    cbLoadN: TCheckBox;
    lCountN: TRxLabel;
    cbLoadR: TCheckBox;
    lCountR: TRxLabel;
    oqCount: TOracleQuery;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListGCI_DATE: TDateTimeField;
    odsListDPB_DATE: TDateTimeField;
    odsListREPORT_TYPE: TStringField;
    odsListREPORT_TYPE_NAME: TStringField;
    odsListIS_CHECKED: TStringField;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actCheckAll: TAction;
    actUncheckAll: TAction;
    odsListREPORTER_INN: TStringField;
    odsListREPORTER_SHORT_NAME: TStringField;
    odsListPACKAGE_ID: TStringField;
    odsListF415_ID: TFloatField;
    procedure cbLoadNClick(Sender: TObject);
    procedure cbLoadRClick(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actCheckAllUpdate(Sender: TObject);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actUncheckAllUpdate(Sender: TObject);
    procedure actUncheckAllExecute(Sender: TObject);
  private
  protected
    function GetKeyFieldName: string; override;
    procedure SetCheck;
  public
    PeriodFilter: TF005_LoadPeriodFilter;
    procedure InitFrame(Sender: TObject); override;
    procedure RefreshCounters;
    procedure SetCounters;
  end;

var
  F005_LoadPage1aGrid: TF005_LoadPage1aGrid;

implementation

uses
  SysUtils;

{$R *.DFM}

{ TF005_LoadPage1aGrid }

function TF005_LoadPage1aGrid.GetKeyFieldName: string;
begin
  Result := 'F415_ID';
end;

procedure TF005_LoadPage1aGrid.InitFrame(Sender: TObject);
begin
  inherited;
  cbLoadN.Checked := TRUE;
  cbLoadR.Checked := TRUE;
end;

procedure TF005_LoadPage1aGrid.cbLoadNClick(Sender: TObject);
begin
  xxxDBGrid.Repaint;
  RefreshCounters;
end;

procedure TF005_LoadPage1aGrid.cbLoadRClick(Sender: TObject);
begin
  xxxDBGrid.Repaint;
  RefreshCounters;
end;

procedure TF005_LoadPage1aGrid.RefreshCounters;
begin
  oqCount.SetVariable('T055_ID_S', PeriodFilter.KeyValueFloat);
  oqCount.SetVariable('T055_ID_E', PeriodFilter.KeyValue2Float);
  oqCount.Execute;
  SetCounters;
end;

procedure TF005_LoadPage1aGrid.SetCounters;
var
  N_All: Integer;
  R_All: Integer;
  N_InPeriod: Integer;
  R_SelectedInPeriod: Integer;
begin
  N_All := oqCount.GetVariable('N_ALL');
  R_All := oqCount.GetVariable('R_ALL');
  N_InPeriod := oqCount.GetVariable('N');
  R_SelectedInPeriod := oqCount.GetVariable('S');

  lCountN.Caption := IntToStr(N_InPeriod)+' из '+IntToStr(N_All) ;
  lCountR.Caption := IntToStr(R_SelectedInPeriod)+' из '+IntToStr(R_All);
end;

procedure TF005_LoadPage1aGrid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VRect: TRect;
  VStyle: Cardinal;
begin
//  inherited; - убираем возможность выделения (цветом) нескольких строк!!!

  if Assigned(Column.Field) then
    if Column.FieldName = 'IS_CHECKED' then
      begin
      VRect := Rect;
      VRect.Top := VRect.Top + 1;
      VRect.Bottom := VRect.Bottom - 1;

      vStyle := DFCS_FLAT or DFCS_BUTTONCHECK;

      if ((odsListREPORT_TYPE.AsString = 'N') and not cbLoadN.Checked) or       // новый
	 ((odsListREPORT_TYPE.AsString = 'R') and not cbLoadR.Checked) then     // или не выбранный заменяющий
	vStyle := vStyle or DFCS_INACTIVE;

      if ((odsListREPORT_TYPE.AsString = 'N') and cbLoadN.Checked) or           // новый и загружать новые
	 ((odsListREPORT_TYPE.AsString = 'R') and cbLoadR.Checked and (Column.Field.AsString = 'Y')) then
	vStyle := VStyle or DFCS_CHECKED;

      xxxDBGrid.Canvas.FillRect(Rect);
      DrawFrameControl(
	xxxDBGrid.Canvas.Handle,
	VRect,
	DFC_BUTTON,
	vStyle
      );
    end;
end;

procedure TF005_LoadPage1aGrid.xxxDBGridCellClick(Column: TColumn);
var
  DoEdit: boolean;
begin
  DoEdit := FALSE;
  if (Column.Field.FieldName = 'IS_CHECKED') then
    begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];

    if (odsListREPORT_TYPE.Value = 'L') or
       ((odsListREPORT_TYPE.Value = 'R') and cbLoadR.Checked )then
      DoEdit := True;
    end
  else
    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];

  if DoEdit then
    begin
    DataSet.Edit;
    if Column.Field.AsString = 'N' then
      Column.Field.AsString := 'Y'
    else
      Column.Field.AsString := 'N';
    DataSet.Post;
    SetCheck;
    end;
end;

procedure TF005_LoadPage1aGrid.SetCheck;
begin
  // ставим/снимаем признак загружать отчет
  oqUpdate.SetVariable('PACKAGE_ID', odsListPACKAGE_ID.AsString);
  oqUpdate.Execute;
  RefreshCounters;
end;

procedure TF005_LoadPage1aGrid.actCheckAllUpdate(Sender: TObject);
begin
  actCheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TF005_LoadPage1aGrid.actCheckAllExecute(Sender: TObject);
var
  OldCursor: TCursor;
begin
  SavePosition;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  oqAdd.SetVariable('T055_ID_S', PeriodFilter.KeyValueFloat);
  oqAdd.SetVariable('T055_ID_E', PeriodFilter.KeyValue2Float);
  oqAdd.Execute;
  RefreshAllRecords;
  Screen.Cursor := OldCursor;
  RestorePosition;
end;

procedure TF005_LoadPage1aGrid.actUncheckAllUpdate(Sender: TObject);
begin
  actUncheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TF005_LoadPage1aGrid.actUncheckAllExecute(Sender: TObject);
var
  OldCursor: TCursor;
begin
  SavePosition;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  oqDelete.SetVariable('T055_ID_S', PeriodFilter.KeyValueFloat);
  oqDelete.SetVariable('T055_ID_E', PeriodFilter.KeyValue2Float);
  oqDelete.Execute;
  RefreshAllRecords;
  Screen.Cursor := OldCursor;
  RestorePosition;
end;

end.
