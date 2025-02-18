unit untDBGridExport;

interface

uses unt202_ExcelExport, unt203_Reports, xxxDBGrid, unt204_ReportBuilder, Classes, Db, Windows;

type
  TxxxDBGridExport = class(TComponentExport)
  private
    FDBGrid: TxxxDBGrid;
    procedure FormatTitle(const AExcl: TExclReport; const ATitle: TTitle);
    procedure FormatData(const AExcl: TExclReport; const AData: TData);
  protected
    procedure FillReport(const AComponent: TComponent); override;
  public
    constructor Create; override;
  end;

  procedure ExportToExcel(const ADBGrid: TxxxDBGrid);

implementation

uses dbgrids, StdCtrls, Excel2000, unt201_ExcelConst;

procedure ExportToExcel(const ADBGrid: TxxxDBGrid);
begin
  unt204_ReportBuilder.ExportToExcel(ADBGrid, TxxxDBGridExport);
end;

{ TDBGridExport }

constructor TxxxDBGridExport.Create;
begin
  inherited Create;
  ReportBuilder.OnFormatTitle := FormatTitle;
  ReportBuilder.OnFormatData := FormatData;
end;

procedure TxxxDBGridExport.FillReport(const AComponent: TComponent);
var
  VTable: TTablesItem;
  VLine: TLine;
  VLineItem: TLineItem;
  I: Integer;
  VColumn: TColumn;
begin
  FDBGrid := TxxxDBGrid(AComponent);

  // ������� ������ ������
  Report.TablesList.Clear;

  // ��������� ���� ������� � ������ ������
  VTable := Report.TablesList.Add;
  VTable.Data.DataSet := FDBGrid.DataSource.DataSet;
  VTable.Position.Top := 1;
  VTable.Position.Left := 1;

  // ��������� ������ � ��������� �������
  VLine := VTable.Title.Add.Line;
  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    VColumn := FDBGrid.Columns[I];
    if VColumn.Visible and (VColumn.Field.DataType in PRINT_DATA_TYPE) then
    begin
      VLineItem := VLine.Add;
      VLineItem.FieldName := VColumn.Field.FieldName;
      VLineItem.Text := FDBGrid.GetFullColumnName(VColumn);
      VLineItem.Alignment := VColumn.Alignment;
      VLineItem.LayOut := tlCenter;
    end;
  end;
end;

procedure TxxxDBGridExport.FormatData(const AExcl: TExclReport; const AData: TData);
var
  VColumn: TColumn;
  VRange: Excel2000.ExcelRange;
  Cell1, Cell2: Excel2000.ExcelRange;
  VRowS, VRowE, VCol: Integer;
  I, J: Integer;
  TM: TTextMetric;
  TW: Integer;
begin
  // ����������� ������
  AExcl.Worksheet.Columns.AutoFit;
  VRange := AExcl.Range[
    AData.Position.Top,
    AData.Position.Left,
    AData.Position.Bottom,
    AData.Position.Right
    ];
  VRange.Borders.LineStyle := unt201_ExcelConst.xlContinuous;
  VRange.WrapText := True;
  // ������ ������� �����
  VRowS := AData.Position.Top;
  VRowE := AData.Position.Bottom;
  // ������ ������ �������
  VCol := AData.Position.Left;
  J := 0;
  // ���� ��������� ��� �������, �� ����������� �������
  if AExcl.TemplateWork = ttNotTemplate then
  begin
    for I := 0 to FDBGrid.Columns.Count - 1 do
    begin
      // �������� ������� ������� � �����
      VColumn := FDBGrid.Columns[I];
      if VColumn.Visible and (VColumn.Field.DataType in PRINT_DATA_TYPE) then
      begin
        // ������ �������� ��������������
        Cell1 := AExcl.Cell[VRowS, VCol + J];
        Cell2 := AExcl.Cell[VRowE, VCol + J];
        VRange := AExcl.Worksheet.Get_Range(Cell1, Cell2);
        // ������ ��������������
        case VColumn.Alignment of
          taLeftJustify:  VRange.HorizontalAlignment := xlLeft;
          taRightJustify: VRange.HorizontalAlignment := xlRight;
          taCenter:       VRange.HorizontalAlignment := xlCenter;
        end;
        case VColumn.Field.DataType of
          ftString, ftMemo: VRange.NumberFormat := '@';
          ftCurrency, ftFloat, ftInteger: VRange.NumberFormat := VColumn.Field.EditMask;
        end;
        // �������� ���-�� ������ � ������
        GetTextMetrics(FDBGrid.Canvas.Handle, TM);
        TW := Round((VColumn.Width - TM.tmOverhang - 4)/(FDBGrid.Canvas.TextWidth('0') - TM.tmOverhang));
        // ������������� ������ �������
        VRange.EntireColumn.ColumnWidth := TW;
        // �������� ����� �������� � excel
        Inc(J);
      end;
    end;
  end;
end;

procedure TxxxDBGridExport.FormatTitle(const AExcl: TExclReport; const ATitle: TTitle);
var
  VRange: Excel2000.ExcelRange;
begin
  // ����������� ���������
  VRange := AExcl.Range[
    ATitle.Position.Top,
    ATitle.Position.Left,
    ATitle.Position.Bottom,
    ATitle.Position.Right
    ];
  VRange.Font.Bold := True;
  VRange.HorizontalAlignment := unt201_ExcelConst.xlCenter;
  VRange.VerticalAlignment := unt201_ExcelConst.xlCenter;
  VRange.Borders.LineStyle := unt201_ExcelConst.xlContinuous;
  VRange.WrapText := True;
end;

end.
