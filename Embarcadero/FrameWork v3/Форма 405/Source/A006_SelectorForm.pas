unit A006_SelectorForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, System.Actions;
//  Messages, SysUtils, Graphics, Dialogs,

type
  TA006_Selector = class(Tfrm04_List)
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure odsListAfterOpen(DataSet: TDataSet);
  private
    FT161_ID: Double;
    //
    procedure PrepareSQL;
    procedure SetT161_ID(const Value: Double);
    function GetValues: string;
  public
    procedure FillStrings(AList: TStrings);
    //
    property Values: string read GetValues;
    //
    property T161_ID: Double read FT161_ID write SetT161_ID;
  end;

var
  A006_Selector: TA006_Selector;

implementation

//uses untMessages;

{$R *.DFM}

{ TA006_Selector }

procedure TA006_Selector.PrepareSQL;
begin
  // получаем текст SQL
  oqAdd.SetVariable('I_T161_ID', FT161_ID);
  oqAdd.Execute;

  // подготавливаем SQL для получения значений
  odsList.Close;
  xxxDBGrid.AdvSettings.Enabled := False;
  xxxDBGrid.MainDataSet.Conditions.Clear;
  odsList.SQL.Text := oqAdd.GetVariable('RETVAL');
  xxxDBGrid.AdvSettings.Enabled := True;
  odsList.Open;
  odsList.Fields[0].DisplayLabel := 'Поле для выбора';
  odsList.Fields[1].DisplayLabel := 'Значение';
  odsList.Fields[2].DisplayLabel := 'Описание';


  inherited FormCreate(Self);
  fmSeach.KeyFieldName := xxxDBGrid.Columns[1].FieldName;
  fm31_Filter.KeyFieldName := xxxDBGrid.Columns[1].FieldName;
end;

procedure TA006_Selector.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index = 0 then
  begin
    xxxDBGrid.SelectedRows.CurrentRowSelected :=
      not xxxDBGrid.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TA006_Selector.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  if Column.Index = 0 then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[xxxDBGrid.SelectedRows.CurrentRowSelected] or
      DFCS_FLAT
      );
  end;
end;

procedure TA006_Selector.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TA006_Selector.SetT161_ID(const Value: Double);
begin
  FT161_ID := Value;

  PrepareSQL;
end;

function TA006_Selector.GetValues: string;
var
  I: Integer;
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  // собираем условие
  VDataSet := xxxDBGrid.DataSource.DataSet;
  VDataSet.DisableControls;
  try
    VSavePlace := VDataSet.GetBookmark;
    try
      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        VDataSet.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
        if Result <> '' then
        begin
          Result := Result + ', ';
        end;
        Result := Result + '''' + VDataSet.FieldByName('FIELD_VALUE').AsString + '''';
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure TA006_Selector.FillStrings(AList: TStrings);
var
  VSavePlace: TBookmark;
begin
  AList.Clear;

  // собираем условие
  odsList.DisableControls;
  try
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.Eof do
      begin
        AList.Add(odsList.FieldByName('FIELD_VALUE').AsString);
        odsList.Next;
      end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure TA006_Selector.odsListAfterOpen(DataSet: TDataSet);
begin
  if odsList.FieldByName('LOOKUP_VALUE').AsString = '***' then
  begin
    xxxDBGrid.Columns[1].Width := 450;
    xxxDBGrid.Columns[2].Visible := False;
    xxxDBGrid.Columns[2].Width := 0;
  end else
  begin
    xxxDBGrid.Columns[1].Width := 50;
    xxxDBGrid.Columns[2].Visible := True;
    xxxDBGrid.Columns[2].Width := 400;
  end;
  (*
  begin
    odsList.Fields[1].DisplayWidth := 450;
    odsList.Fields[2].Visible := False;
    odsList.Fields[2].DisplayWidth := 0;
  end else
  begin
    odsList.Fields[1].DisplayWidth := 50;
    odsList.Fields[2].Visible := True;
    odsList.Fields[2].DisplayWidth := 400;
  end;
  *)
end;

end.
