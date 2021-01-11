unit frm11_SelectionListsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, fm008_DBObjectFrame, fm027_DoubleListF,
  fm037_SelectListsFrame, ExtCtrls, StdCtrls, OracleData, DbGrids,
  fm004_ListFrame, fm005_GridFrame;

type
  Tfrm11_SelectionLists = class(TForm)
    Panel1: TPanel;
    BtnOk: TButton;
    Button2: TButton;
    Lists: Tfm037_SelectLists;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListssbToRightClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListssbAllToRightClick(Sender: TObject);
    procedure ListssbAllToLeftClick(Sender: TObject);
    procedure ListssbToLeftClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    FSelected: TStringList;
    procedure PrepareSQL(AGrid: TfmGrid);
    procedure AdjustColumns(AGrid: TfmGrid);
    procedure CellClick(Column: TColumn);
  public
  end;

var
  frm11_SelectionLists: Tfrm11_SelectionLists;

implementation

uses
  xxxDbLookupCheckCombo;

{$R *.DFM}

procedure Tfrm11_SelectionLists.FormCreate(Sender: TObject);
var
  vStyles: integer;
begin
  inherited;

  FSelected := TStringList.Create;

  if Lists.fmGridLeft.xxxDbGrid.BorderStyle = bsNone then
    begin
    vStyles := GetWindowLong(Lists.fmGridLeft.xxxDbGrid.Handle, GWL_EXSTYLE);
    SetWindowLong(Lists.fmGridLeft.xxxDbGrid.Handle, GWL_EXSTYLE, vStyles or WS_EX_STATICEDGE);
    end;

  if Lists.fmGridRight.xxxDbGrid.BorderStyle = bsNone then
    begin
    vStyles := GetWindowLong(Lists.fmGridRight.xxxDbGrid.Handle, GWL_EXSTYLE);
    SetWindowLong(Lists.fmGridRight.xxxDbGrid.Handle, GWL_EXSTYLE, vStyles or WS_EX_STATICEDGE);
    end;
end;

procedure Tfrm11_SelectionLists.FormDestroy(Sender: TObject);
begin
  FSelected.Free;
end;

procedure Tfrm11_SelectionLists.FormShow(Sender: TObject);
var
  i: integer;
begin
  if Owner is TxxxDbLookupCheckCombo then
    begin
    with Self.Owner as TxxxDbLookupCheckCombo do
      begin
      FSelected.Clear;
      for i := 0 to KeyValuesStr.Count-1 do
        begin
        FSelected.Add(KeyValuesStr[i]);
        end;
      Lists.fmGridLeft.odsList.Session := TOracleDataSet(LookupSource.DataSet).Session;
      Lists.fmGridLeft.odsList.Close;
      PrepareSQL(Lists.fmGridLeft);
      Lists.fmGridLeft.odsList.Open;
      AdjustColumns(Lists.fmGridLeft);

      Lists.fmGridRight.odsList.Session := TOracleDataSet(LookupSource.DataSet).Session;
      Lists.fmGridRight.odsList.Close;
      PrepareSQL(Lists.fmGridRight);
      Lists.fmGridRight.odsList.Open;
      AdjustColumns(Lists.fmGridRight);
      end;

    FormResize(Self); // Нужно, т.к при повторном открытии ширина грида меняется почему-то
    end;
end;

procedure Tfrm11_SelectionLists.FormResize(Sender: TObject);
var
  i: integer;
  w: integer;
begin
  w := GetSystemMetrics(SM_CYVSCROLL);
  with Lists.fmGridLeft.xxxDbGrid do
    begin
    if dgIndicator in Options then
      w := w + IndicatorWidth + 1;
    for i := 0 to Columns.Count-2 do
      begin
      if Columns[i].Visible then
        w := w + Columns[i].Width;
      end;
    Columns[Columns.Count-1].Width := Width - w - 2;
    if BorderStyle = bsSingle then
      Columns[Columns.Count-1].Width := Columns[Columns.Count-1].Width - 2;
    if dgColLines in Options then
      Columns[Columns.Count-1].Width := Columns[Columns.Count-1].Width - (Columns.Count-1);
    end;

  w := GetSystemMetrics(SM_CYVSCROLL);
  with Lists.fmGridRight.xxxDbGrid do
    begin
    if dgIndicator in Options then
      w := w + IndicatorWidth + 1;
    for i := 0 to Columns.Count-2 do
      begin
      if Columns[i].Visible then
        w := w + Columns[i].Width;
      end;
    Columns[Columns.Count-1].Width := Width - w - 2;
    if BorderStyle = bsSingle then
      Columns[Columns.Count-1].Width := Columns[Columns.Count-1].Width - 2;
    if dgColLines in Options then
      Columns[Columns.Count-1].Width := Columns[Columns.Count-1].Width - (Columns.Count-1);
    end;
end;

procedure Tfrm11_SelectionLists.PrepareSQL(AGrid: TfmGrid);
var
  vSelected: string;
  i: integer;
  aSQL: string;
begin
  vSelected := '';
  for i := 0 to FSelected.Count-1 do
    begin
    if i > 0 then
      vSelected := vSelected + ', ';
    vSelected := VSelected+''''+FSelected[i]+'''';
    end;

  with Owner as TxxxDbLookupCheckCombo do
    begin
    aSQL := TOracleDataSet(LookupSource.DataSet).SQL.Text;
    aSQL := 'SELECT 0 ACHECK,'#$0D#$0A+
            '       '+LookupField+' AKEYFIELD,'#$0D#$0A+
            '       '+StringReplace(LookupDisplay,';',',',[])+' '#$0D#$0A+
            'FROM ( '+TOracleDataSet(LookupSource.DataSet).SQL.Text+' '#$0D#$0A+
            '     ) '#$0D#$0A;
    if vSelected <> '' then
      begin
      if AGrid.odsList = Lists.fmGridLeft.odsList then
        aSQL := aSQL + 'WHERE TO_CHAR('+LookupField+') NOT IN ('+vSelected+') '#$0D#$0A
      else
        aSQL := aSQL + 'WHERE TO_CHAR('+LookupField+') IN ('+vSelected+') '#$0D#$0A;
      end
    else
      if AGrid.odsList = Lists.fmGridRight.odsList then
        aSQL := aSQL + 'WHERE TO_CHAR('+LookupField+') NOT IN ('''') '#$0D#$0A;


    aSQL := aSQL + ' ORDER BY '+Copy(LookupDisplay,1,Pos(';',LookupDisplay)-1);

    AGrid.odsList.SQL.Text := aSQL;
    AGrid.VDataSet.OldSQL.Text := aSQL;

    // Копируем переменные (вместе с установленными значениями)
    AGrid.odsList.Variables.Assign(TOracleDataSet(LookupSource.DataSet).Variables);
    end;
end;

procedure Tfrm11_SelectionLists.AdjustColumns(AGrid: TfmGrid);
var
  i: integer;
  Column: TColumn;
  vColumnDef: TColumnDef;
begin
  // Копируем DisplayLabel-ы полей
  with Owner as TxxxDbLookupCheckCombo do
    begin
    for i := 0 to TOracleDataSet(LookupSource.DataSet).Fields.Count-1 do
      begin
      // Если поле в списке LookupDisplay
      if Pos(TOracleDataSet(LookupSource.DataSet).Fields[i].FieldName, LookupDisplay) > 0 then
        AGrid.xxxDbGrid.DataSource.DataSet.FieldByName(TOracleDataSet(LookupSource.DataSet).Fields[i].FieldName).DisplayLabel :=
          TOracleDataSet(LookupSource.DataSet).Fields[i].DisplayLabel;
      end;
    end;

  AGrid.xxxDbGrid.Columns.Clear;
  AGrid.ColumnDefs.Clear;
  for i := 0 to AGrid.xxxDbGrid.DataSource.DataSet.Fields.Count-1 do
    begin
    if AGrid.xxxDbGrid.DataSource.DataSet.Fields[i].FieldName <> 'AKEYFIELD' then
      begin
      Column := AGrid.xxxDbGrid.Columns.Add;
      Column.Field := AGrid.xxxDbGrid.DataSource.DataSet.Fields[i];
      if AGrid.DataSource.DataSet.Fields[i].FieldName = 'ACHECK' then
        begin
        Column.Title.Caption := '';
        Column.Width := 21;
        vColumnDef := AGrid.ColumnDefs.AddSelectionColumn(Column);
        vColumnDef.Images.Clear;
        vColumnDef.Images.AddFloat(51, 0);
        vColumnDef.Images.AddFloat(52, 1);
        vColumnDef.OnCellClick := CellClick;
        end
      else
        begin
        if (AGrid.DataSource.DataSet.Fields[i].DisplayLabel = AGrid.xxxDbGrid.DataSource.DataSet.Fields[i].FieldName) then
          Column.Title.Caption := ' ( ' + IntToStr(i-1) + ' )'
        else
          Column.Title.Caption := ' '+ AGrid.DataSource.DataSet.Fields[i].DisplayLabel;
        Column.Width := Column.Width + 4;
        end;
      end;
    end;

   AGrid.Searcher.fmSearch1.RegisterColumns(AGrid.xxxDBGrid); 
end;

procedure Tfrm11_SelectionLists.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ActiveControl := Lists.fmGridLeft.xxxDbGrid;
end;

procedure Tfrm11_SelectionLists.CellClick(
  Column: TColumn);
begin
  if (Column.Field.FieldName = 'ACHECK') and not Column.Field.IsNull then
    begin
    Column.Grid.DataSource.DataSet.Edit;
    if Column.Field.AsFloat = 0 then
      begin
      Column.Field.AsFloat := 1;
      end
    else
      begin
      Column.Field.AsFloat := 0;
      end;
    Column.Grid.DataSource.DataSet.Post;
    end;
end;

procedure Tfrm11_SelectionLists.ListssbToRightClick(Sender: TObject);
begin
  Lists.fmGridLeft.odsList.DisableControls;

  Lists.fmGridLeft.odsList.Prior;
  Lists.fmGridLeft.odsList.First;
  while not Lists.fmGridLeft.odsList.Eof do
    begin
    if Lists.fmGridLeft.odsList.FieldByName('ACHECK').AsFloat <> 0 then
//      FSelected.Add(Lists.fmGridLeft.odsList.FieldByName(TxxxDBLookupCheckCombo(Owner).LookupField).AsString);
      FSelected.Add(Lists.fmGridLeft.odsList.FieldByName('AKEYFIELD').AsString);
    Lists.fmGridLeft.odsList.Next;
    end;
  PrepareSQL(Lists.fmGridLeft);
  Lists.fmGridLeft.odsList.Close;
  Lists.fmGridLeft.odsList.Open;
  PrepareSQL(Lists.fmGridRight);
  Lists.fmGridRight.odsList.Close;
  Lists.fmGridRight.odsList.Open;

  Lists.fmGridLeft.odsList.EnableControls;
  // Для отрисовки вертикального скролла в правой таблице
//  Width := Width - 2;
//  Width := Width + 2;
end;

procedure Tfrm11_SelectionLists.ListssbAllToRightClick(Sender: TObject);
begin
  Lists.fmGridLeft.odsList.DisableControls;
  Lists.fmGridLeft.odsList.First;

  while not Lists.fmGridLeft.odsList.Eof do
    begin
//    FSelected.Add(Lists.fmGridLeft.odsList.FieldByName(TxxxDBLookupCheckCombo(Owner).LookupField).AsString);
    FSelected.Add(Lists.fmGridLeft.odsList.FieldByName('AKEYFIELD').AsString);
    Lists.fmGridLeft.odsList.Next;
    end;
  PrepareSQL(Lists.fmGridLeft);
  Lists.fmGridLeft.odsList.Close;
  Lists.fmGridLeft.odsList.Open;
  PrepareSQL(Lists.fmGridRight);
  Lists.fmGridRight.odsList.Close;
  Lists.fmGridRight.odsList.Open;

  Lists.fmGridLeft.odsList.EnableControls;
  // Для отрисовки вертикального скролла
//  Width := Width - 2;
//  Width := Width + 2;

end;

procedure Tfrm11_SelectionLists.ListssbAllToLeftClick(Sender: TObject);
begin
  Lists.fmGridRight.odsList.DisableControls;

  Lists.fmGridRight.odsList.Prior;
  Lists.fmGridRight.odsList.First;
  while not Lists.fmGridRight.odsList.Eof do
    begin
//    FSelected.Delete(FSelected.IndexOf(Lists.fmGridRight.odsList.FieldByName(TxxxDBLookupCheckCombo(Owner).LookupField).AsString));
    FSelected.Delete(FSelected.IndexOf(Lists.fmGridRight.odsList.FieldByName('AKEYFIELD').AsString));
    Lists.fmGridRight.odsList.Next;
    end;

  PrepareSQL(Lists.fmGridRight);
  Lists.fmGridRight.odsList.Close;
  Lists.fmGridRight.odsList.Open;
  PrepareSQL(Lists.fmGridLeft);
  Lists.fmGridLeft.odsList.Close;
  Lists.fmGridLeft.odsList.Open;

  Lists.fmGridRight.odsList.EnableControls;
  // Для отрисовки вертикального скролла
//  Width := Width - 2;
//  Width := Width + 2;
end;

procedure Tfrm11_SelectionLists.ListssbToLeftClick(Sender: TObject);
begin
  Lists.fmGridRight.odsList.DisableControls;

  Lists.fmGridRight.odsList.Prior;
  Lists.fmGridRight.odsList.First;
  while not Lists.fmGridRight.odsList.Eof do
    begin
    if Lists.fmGridRight.odsList.FieldByName('ACHECK').AsFloat <> 0 then
//      FSelected.Delete(FSelected.IndexOf(Lists.fmGridRight.odsList.FieldByName(TxxxDBLookupCheckCombo(Owner).LookupField).AsString));
      FSelected.Delete(FSelected.IndexOf(Lists.fmGridRight.odsList.FieldByName('AKEYFIELD').AsString));
    Lists.fmGridRight.odsList.Next;
    end;

  PrepareSQL(Lists.fmGridRight);
  Lists.fmGridRight.odsList.Close;
  Lists.fmGridRight.odsList.Open;
  PrepareSQL(Lists.fmGridLeft);
  Lists.fmGridLeft.odsList.Close;
  Lists.fmGridLeft.odsList.Open;

  Lists.fmGridRight.odsList.EnableControls;
  // Для отрисовки вертикального скролла
//  Width := Width - 2;
//  Width := Width + 2;
end;

procedure Tfrm11_SelectionLists.BtnOkClick(Sender: TObject);
begin
  with Owner as TxxxDbLookupCheckCombo do
    begin
    KeyValuesStr := FSelected;
    end;
end;

end.
