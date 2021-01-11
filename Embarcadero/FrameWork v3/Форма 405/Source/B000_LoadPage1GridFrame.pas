unit B000_LoadPage1GridFrame;

interface

uses
  fm005_GridFrame, Db, StdCtrls, RXCtrls, Oracle, Menus, OracleData,
  Classes, ActnList, Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, Windows, B000_PeriodFilterFrame, Forms, fm031_FilterFrame;
//  Messages, Graphics, Dialogs,

type
  TB000_LoadPage1Grid = class(TfmGrid)
    Panel1: TPanel;
    cbLoadN: TCheckBox;
    lCountN: TRxLabel;
    cbLoadR: TCheckBox;
    lCountR: TRxLabel;
    oqCount: TOracleQuery;
    odsListF711_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListBANK_CODE: TStringField;
    odsListBANK_NAME: TStringField;
    odsListGCI_DATE: TDateTimeField;
    odsListDPB_DATE: TDateTimeField;
    odsListREPORT_TYPE: TStringField;
    odsListREPORT_TYPE_NAME: TStringField;
    odsListIS_CHECKED: TStringField;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actCheckAll: TAction;
    actUncheckAll: TAction;
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
    PeriodFilter: TB000_PeriodFilter;
    procedure InitFrame(Sender: TObject); override;
    procedure RefreshCounters;
    procedure SetCounters;
  end;

var
  B000_LoadPage1Grid: TB000_LoadPage1Grid;

implementation

uses
  SysUtils;

{$R *.DFM}

{ TB000_LoadPage1Grid }

function TB000_LoadPage1Grid.GetKeyFieldName: string;
begin
  Result := 'F711_ID';
end;

procedure TB000_LoadPage1Grid.InitFrame(Sender: TObject);
begin
  inherited;
  cbLoadN.Checked := TRUE;
  cbLoadR.Checked := TRUE;
end;

procedure TB000_LoadPage1Grid.cbLoadNClick(Sender: TObject);
begin
  xxxDBGrid.Repaint;
  RefreshCounters;
end;

procedure TB000_LoadPage1Grid.cbLoadRClick(Sender: TObject);
begin
  xxxDBGrid.Repaint;
  RefreshCounters;
end;

procedure TB000_LoadPage1Grid.RefreshCounters;
begin
  oqCount.SetVariable('T055_ID_S', PeriodFilter.KeyValueFloat);
  oqCount.SetVariable('T055_ID_E', PeriodFilter.KeyValue2Float);
  oqCount.Execute;
  SetCounters;
end;

procedure TB000_LoadPage1Grid.SetCounters;
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

procedure TB000_LoadPage1Grid.xxxDBGridDrawColumnCell(Sender: TObject;
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

procedure TB000_LoadPage1Grid.xxxDBGridCellClick(Column: TColumn);
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

procedure TB000_LoadPage1Grid.SetCheck;
begin
  // ставим/снимаем признак загружать отчет
  oqUpdate.SetVariable('F711_ID', odsListF711_ID.AsFloat);
  oqUpdate.Execute;
  RefreshCounters;
end;

procedure TB000_LoadPage1Grid.actCheckAllUpdate(Sender: TObject);
begin
  actCheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TB000_LoadPage1Grid.actCheckAllExecute(Sender: TObject);
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

procedure TB000_LoadPage1Grid.actUncheckAllUpdate(Sender: TObject);
begin
  actUncheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TB000_LoadPage1Grid.actUncheckAllExecute(Sender: TObject);
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
