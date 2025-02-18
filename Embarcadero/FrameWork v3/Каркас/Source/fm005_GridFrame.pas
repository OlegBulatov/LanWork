{******************************************************************************}
{  fmSeach
{  ����� ������ � TCustomDBGrid'e
{
{  �����
{  �������� �.�.  ���� 2003 �.
{
{  TSearchMaster - ������� ������
{
{  TfmSeachFrame - ����� �������� �������� ���������� �������
{
{******************************************************************************}

unit fm005_GridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm004_ListFrame, Db, Oracle, OracleData, ActnList, Menus,
  fm000_Parent, ComCtrls, ToolWin, Grids, DBGrids, xxxDBGrid, StdCtrls,
  fm003_FilterFrame, ExtCtrls, unt205_Params, DBCtrls, Mask, unt001_Filter,
  fm031_FilterFrame, System.Actions;

// � �������� ������� �������� ����, �������� � ����������� �� ��������, ���������� �����

type
  TColumnImage = class(TCollectionItem)
  private
    FImageIndex: Integer;
    FImage: TBitmap;
    FDataValue: TValue;
    procedure SetDataValue(AValue: TValue);
  protected
//    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    //
    procedure SetImage(AIndex: integer);
    property ImageIndex: Integer read FImageIndex;
    property Image: TBitmap read FImage;
    property DataValue: TValue read FDataValue write SetDataValue;
  end;

  TColumnImages = class(TCollection)
  private
    FOwner: TPersistent;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TColumnImage;
    procedure SetItem(Index: Integer; const Value: TColumnImage);
  public
    constructor Create(Owner: TPersistent);
    //
//    function Add: TColumnImage; overload;
    function AddStr(AImageIndex: integer; ADataValue: string): TColumnImage; overload;
    function AddFloat(AImageIndex: integer; ADataValue: Double): TColumnImage; overload;
    function AddDate(AImageIndex: integer; ADataValue: TDateTime): TColumnImage; overload;
    property Items[Index: Integer]: TColumnImage read GetItem write SetItem; default;
  end;

  TColumnDef = class(TCollectionItem)
  private
    FColumn: TColumn;
    FFieldName: string;
    FOnCellClick: TDBGridClickEvent;
    FImages: TColumnImages;

    procedure SetFieldName(const Value: string);
    function GetImage(Index: Integer): TColumnImage;
    procedure SetImage(Index: Integer; const Value: TColumnImage);
  protected
//    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    //
    function GetColumnImage(AField: TField): TBitmap;
    function GetColumnImageIndex(AField: TField): Integer;

    property FieldName: string read FFieldName write SetFieldName;
    property OnCellClick: TDBGridClickEvent read FOnCellClick write FOnCellClick;
    property ColumnImages[Index: Integer]: TColumnImage read GetImage write SetImage;
    property Images: TColumnImages read FImages;
  end;

  TColumnDefs = class(TCollection)
  private
    FOwner: TPersistent;
    FSelectionColumn: TColumnDef;

    function GetSelectionColumn: TColumnDef;
    procedure SetSelectionColumn(const Value: TColumnDef);
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TColumnDef;
    procedure SetItem(Index: Integer; const Value: TColumnDef);

  public
    constructor Create(Owner: TPersistent);
    //
    function IndexOf(const AColumn: TColumn): integer;
    function ColumnDef(AColumn: TColumn): TColumnDef;

    function Add(const AColumn: TColumn): TColumnDef;
    function AddSelectionColumn(const AColumn: TColumn): TColumnDef;
    //
    property Items[Index: Integer]: TColumnDef read GetItem write SetItem; default;
    property SelectionColumn: TColumnDef read GetSelectionColumn write SetSelectionColumn;
  end;



  //----------------------------------------------------------------------------
  // ���:         ����������� �����
  // ����������:  �������� �� ����������� ���������� � ���� DBGrid.
  //              ������ ���� ������� ������� ��� �������� ����,
  //              ������������ ������ � ���� �������
  // ����������:  � ����������� ����������
  //                  1.  ��������� ������ ��������
  //                  2.  ������� ��� ������� ������� ��� ����
  //                  3.  �������� �������� ������� � gbFilter
  //----------------------------------------------------------------------------
  TfmGrid = class(TfmList)
    xxxDBGrid: TxxxDBGrid;
    pmFilter: TPopupMenu;
    N010: TMenuItem;
    N011: TMenuItem;
    N14: TMenuItem;
    N13: TMenuItem;
    fm031_Filter1: Tfm031_Filter;
    ToolButtonNewExcel: TToolButton;
    pmExcel: TPopupMenu;
    miExcelMode0: TMenuItem;
    miExcelMode1: TMenuItem;
    actExcelMode0: TAction;
    actExcelMode1: TAction;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure xxxDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actExcelExecute(Sender: TObject);
    procedure actShowSimpleFilterExecute(Sender: TObject);
    procedure actFilterBySelectExecute(Sender: TObject);
    procedure actRemoveAllSettingsExecute(Sender: TObject);
    procedure actExcelMode0Execute(Sender: TObject);
    procedure actExcelMode1Execute(Sender: TObject);
  private
    FColumnDefs: TColumnDefs;
//    FShowSelectedRows: Boolean;
  protected
    procedure DoSelectOneRow; override;
    procedure DoUnSelectOneRow; override;
    //
    //
    function GetRowFontColor: TColor; override;
    //
//    procedure SetColumnDefs; virtual;

    function  CheckRule(Column: TColumn): Boolean; virtual;
    procedure DoCheck(CheckColumnName: String); virtual;
    procedure DoUnCheck(CheckColumnName: String); virtual;
    //
//    procedure DoExportToExcel; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    procedure InitFrame(Sender: TObject); override;
    //
    property ColumnDefs: TColumnDefs read FColumnDefs;
  end;

var
  fmGrid: TfmGrid;

implementation

uses dm006_PictersData, unt204_ReportBuilder,z_ReportStruct, dm005_MainData, untMessages;

{$R *.DFM}

constructor TfmGrid.Create(AOwner: TComponent);
begin
  inherited;
  // ������ ����� �� ��� � ���
  VDataSet.OnIndexChanged := xxxDBGrid.DoOnIndexChanged;
  VDataSet.OnConditionChanged := xxxDBGrid.DoOnConditionChanged;
  VDataSet.Indexes.Assign(xxxDBGrid.MainDataSet.Indexes);
  xxxDBGrid.MainDataSet := VDataSet;
  xxxDBGrid.Enabled := True;

  Searcher.fmSearch1.RegisterColumns(xxxDBGrid);

  // ������ �����
//***  DataList.CalcResult := cbRes.Checked;

  // ������ Check-�������
  FColumnDefs := TColumnDefs.Create(Self);
//  SetColumnDefs;
end;

destructor TfmGrid.Destroy;
begin
  FreeAndNil(FColumnDefs);
  inherited;
end;

{
procedure TfmGrid.SetColumnDefs;
begin
//
end;
}

procedure TfmGrid.DoCheck(CheckColumnName: String);
begin
//
end;

function TfmGrid.CheckRule(Column: TColumn): Boolean;
begin
  Result := True;
end;

procedure TfmGrid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
  vColDef: TColumnDef;
  vBitmap: TBitmap;
  VImageIndex: Integer;
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := GetSelectedRowFontColor;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := GetSelectedRowFontColor;
        end;
      end
    else
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := GetRowFontColor;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := GetRowFontColor;
        end;
      end;
    end;

  vColDef := FColumnDefs.ColumnDef(Column);
  if vColDef <> nil then
  begin
    vBitmap := vColDef.GetColumnImage(Column.Field);
    VImageIndex := vColDef.GetColumnImageIndex(Column.Field);
    if Assigned(vBitmap) then
    begin
      // �������
      xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
      xxxDBGrid.Canvas.FillRect(Rect);
      // ������ bitmap
      VRect.Left := Rect.Left + (Rect.Right - Rect.Left - vBitmap.Width) div 2 + (Rect.Right - Rect.Left - vBitmap.Width) mod 2;
      VRect.Top := Rect.Top + (Rect.Bottom - Rect.Top - vBitmap.Height) div 2 + (Rect.Bottom - Rect.Top - vBitmap.Height) mod 2;
      dmPicters.ilCommonPictures.Draw(xxxDBGrid.Canvas, VRect.Left, VRect.Top, VImageIndex);
      {
      vBitmap.TransparentMode := tmAuto;
      //vBitmap.Transparent := True;
      //vBitmap.TransParentColor := vBitmap.Canvas.Pixels[1,1];
      xxxDBGrid.Canvas.Draw(VRect.Left, VRect.Top, vBitmap);
      }
    end;
  end else
  begin
    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  //////////////////////////////////////////////////////////////////////////////
  // �������� �������, ���� ����

{
  if Assigned(FCheckColumns.FindParam(Column.Field.FieldName)) then
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
      VState[CheckRule(Column)] or
      DFCS_FLAT
    );
    end;
}
end;

procedure TfmGrid.xxxDBGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) and (mbLeft = Button) then
  begin
    // ����������� ���������
    with xxxDBGrid.SelectedRows do
    begin
      CurrentRowSelected := not CurrentRowSelected;
    end;
  end else
  begin
    xxxDBGrid.SelectedRows.Clear;
  end;
end;

procedure TfmGrid.xxxDBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 45 then
  begin
    // ����������� ���������
    with xxxDBGrid.SelectedRows do
    begin
      CurrentRowSelected := not CurrentRowSelected;
    end;
    xxxDBGrid.DataSource.DataSet.Next;
  end;
end;

(*
procedure Tfm005_Grid.FilterBySelect(Sender: TObject);
begin
  xxxDBGrid.FilterBySelect;
end;
*)

function TfmGrid.GetRowFontColor: TColor;
begin
  Result := xxxDBGrid.Font.Color;
end;

(*
procedure Tfm005_Grid.SelectAllRows(Sender: TObject);
var
  VSavePlace: TBookmark;
begin
(*
  odsList.DisableControls;
  try
    // �������� ��� ������
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.Eof do
      begin
        xxxDBGrid.SelectedRows.CurrentRowSelected := True;
        odsList.Next;
        Application.ProcessMessages;
      end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
*
end;
*)
procedure TfmGrid.InitFrame(Sender: TObject);
//var
//  i: Integer;
//  VAction: TAction;
begin
  inherited;
(*
  // �� �������� ���� ��������� � ��������� (�������� �.�.)
  xxxDBGrid.MainDataSet.DataSet := xxxDBGrid.DataSource.DataSet;

  if dm01_Main.UseMatrix then
  begin
    for i:= 0 to ActionList.ActionCount-1 do
    begin
      action:= TAction(ActionList.Actions[i]);
      action.Enabled:= EnableAction(action);
    end;
  end;
  *)

  (*
  // ��������� ������
  fmSeach.BorderIcons := [sfSelect, sfSelectHint, sfStartSearch, sfClose];
  fmSeach.DBGrid := xxxDBGrid;
  fmSeach.KeyFieldName := xxxDBGrid.Columns[0].FieldName;
  fmSeach.CalbackMenuItem := mi05;
  fmSeach.CalbackToolButton := tbSearch;
  *)

  // ��������� �������

//  fm031_Filter1.DBGrid := xxxDBGrid;

  {for i := 0 to xxxDBGrid.Columns.Count - 1 do
    begin
      // � ������ ����� ���� ������ ������������ ���� � �����
      if xxxDBGrid.Columns[i].Visible then
        begin
          fm031_Filter1.KeyFieldName := xxxDBGrid.Columns[i].FieldName;
          break;
        end;
    end;  }

  //fm031_Filter1.OnFilter := RefreshData;

  //fmSeach.CalbackMenuItem := mi04;
  //fmSeach.CalbackToolButton := tbSearch;
end;

(*
procedure Tfm005_Grid.DoExportToExcel;
begin
  ExportToExcel(xxxDBGrid);
end;
*)


(*
procedure Tfm005_Grid.LinkControls(Value: TDataSource);
begin
  xxxDBGrid.DataSource :=  Value;
end;
*)

procedure TfmGrid.xxxDBGridCellClick(Column: TColumn);
var
  vColDef: TColumnDef;
begin
  vColDef := FColumnDefs.ColumnDef(Column);
  if vColDef <> nil then
  begin
    if Assigned(vColDef.OnCellClick) then
    begin
      vColDef.OnCellClick(Column);
    end;
  end;
{
  if FColumnDefs.IndexOf(Column) <> -1 then
    begin
    if CheckRule(Column) then
      begin
      // ������� �������
      DoUnCheck(Column.Field.FieldName);
      end
    else
      begin
      // ������ �������
      DoCheck(Column.Field.FieldName);
      end;
    end;
}
end;

procedure TfmGrid.actExcelExecute(Sender: TObject);
begin
  unt204_ReportBuilder.ExportToExcel(xxxDBGrid);

  (*
  !!!
  if dm01_Main.UseMatrix then
  begin
    WriteLogOnExcel;
  end;
  *)
end;

procedure TfmGrid.DoSelectOneRow;
begin
  if FColumnDefs.Count > 0 then
  begin
    DoCheck(FColumnDefs.SelectionColumn.FieldName);
  end;
end;

procedure TfmGrid.DoUnSelectOneRow;
begin
  if FColumnDefs.Count > 0 then
  begin
    DoUnCheck(FColumnDefs.SelectionColumn.FieldName);
  end;
end;

procedure TfmGrid.DoUnCheck(CheckColumnName: String);
begin
  //
end;

{ TColumnImage }

constructor TColumnImage.Create(Collection: TCollection);
begin
  inherited;
  FDataValue := TValue.Create(Self);
end;

destructor TColumnImage.Destroy;
begin
  if Assigned(FImage) then FImage.Free;
  FDataValue.Free;
  inherited;
end;

procedure TColumnImage.SetDataValue(AValue: TValue);
begin
  FDataValue := AValue;
end;

procedure TColumnImage.SetImage(AIndex: integer);
begin
  if Assigned(FImage) then FImage.Free;
  FImageIndex := AIndex;
  FImage := TBitmap.Create;
  dmPicters.ilCommonPictures.GetBitmap(AIndex, FImage);
end;

{ TColumnImages }

constructor TColumnImages.Create(Owner: TPersistent);
begin
 inherited Create(TColumnImage);
 FOwner := Owner;
end;

function TColumnImages.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

//function TColumnImages.Add: TColumnImage;
//begin
//  Result := TColumnImage(inherited Add);
//end;

function TColumnImages.AddStr(AImageIndex: integer;
  ADataValue: string): TColumnImage;
begin
  Result := TColumnImage(inherited Add);
  Result.SetImage(AImageIndex);
  Result.FDataValue.ValueType := vtString;
  Result.FDataValue.Value := ADataValue;
end;

function TColumnImages.AddFloat(AImageIndex: integer;
  ADataValue: Double): TColumnImage;
begin
  Result := TColumnImage(inherited Add);
  Result.SetImage(AImageIndex);
  Result.FDataValue.ValueType := vtNumber;
  Result.FDataValue.AsFloat := ADataValue;
end;

function TColumnImages.AddDate(AImageIndex: integer;
  ADataValue: TDateTime): TColumnImage;
begin
  Result := TColumnImage(inherited Add);
  Result.SetImage(AImageIndex);
  Result.FDataValue.ValueType := vtDate;
  Result.FDataValue.AsDateTime := ADataValue;
end;

function TColumnImages.GetItem(Index: Integer): TColumnImage;
begin
  Result := TColumnImage(inherited Items[Index]);
end;

procedure TColumnImages.SetItem(Index: Integer; const Value: TColumnImage);
begin
  Items[Index].Assign(Value);
end;

{ TColumnDef }

constructor TColumnDef.Create(Collection: TCollection);
begin
  inherited;
  FImages := TColumnImages.Create(Self);
end;

destructor TColumnDef.Destroy;
begin
  FImages.Free;
  inherited;
end;

function TColumnDef.GetImage(Index: Integer): TColumnImage;
begin
  Result := FImages[Index];
end;

function TColumnDef.GetColumnImage(AField: TField): TBitmap;
var
  i: integer;
begin
  Result := nil;
  if not AField.IsNull then // ����� ���� ���-�� !!! �������� FDataValue ���� ����� ���� NULL
    for i := 0 to FImages.Count-1 do
      begin
      case FImages[i].FDataValue.ValueType of
        vtString:
          if AField.AsString = FImages[i].FDataValue.Value then
            begin
            Result := FImages[i].FImage;
            Break;
            end;
        vtNumber:
          if AField.AsFloat = FImages[i].FDataValue.AsFloat then
            begin
            Result := FImages[i].FImage;
            Break;
            end;
        vtDate:
          if AField.AsDateTime = FImages[i].FDataValue.AsDateTime then
            begin
            Result := FImages[i].FImage;
            Break;
            end;
        end;
      end;
end;

procedure TColumnDef.SetFieldName(const Value: string);
begin
  FFieldName := Value;
end;

procedure TColumnDef.SetImage(Index: Integer; const Value: TColumnImage);
begin

end;

function TColumnDef.GetColumnImageIndex(AField: TField): Integer;
var
  i: integer;
begin
  Result := -1;
  if not AField.IsNull then
  begin
    // ����� ���� ���-�� !!! �������� FDataValue ���� ����� ���� NULL
    for i := 0 to FImages.Count-1 do
    begin
      case FImages[i].FDataValue.ValueType of
        vtString:
          if AField.AsString = FImages[i].FDataValue.Value then
            begin
            Result := FImages[i].FImageIndex;
            Break;
            end;
        vtNumber:
          if AField.AsFloat = FImages[i].FDataValue.AsFloat then
            begin
            Result := FImages[i].FImageIndex;
            Break;
            end;
        vtDate:
          if AField.AsDateTime = FImages[i].FDataValue.AsDateTime then
            begin
            Result := FImages[i].FImageIndex;
            Break;
            end;
        end;
    end;
  end;
end;

{ TColumnDefs }

constructor TColumnDefs.Create(Owner: TPersistent);
begin
  inherited Create(TColumnDef);
  FOwner := Owner;
end;

function TColumnDefs.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TColumnDefs.Add(const AColumn: TColumn): TColumnDef;
var
  i: integer;
begin
  // ��������� ���������� AColumn. ���� ��� - ����� Exception
  try
    for i := 0 to TDbGrid(AColumn.Grid).Columns.Count-1 do
      begin
      if TDbGrid(AColumn.Grid).Columns[i] = AColumn then
        break;
      end;
  except
    TAppMessages.Error('������� �����������');
  end;

  i := IndexOf(AColumn);
  if i = -1 then
    begin
    Result := TColumnDef(inherited Add);
    Result.FColumn := AColumn;
    Result.FFieldName := AColumn.FieldName;
    end
  else
    Result := Items[i];
end;

function TColumnDefs.ColumnDef(AColumn: TColumn): TColumnDef;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to Count-1 do
    begin
    if Items[i].FColumn = AColumn then
      begin
      Result := Items[i];
      Break;
      end;
    end;
end;

function TColumnDefs.GetItem(Index: Integer): TColumnDef;
begin
  Result := TColumnDef(inherited Items[Index]);
end;

procedure TColumnDefs.SetItem(Index: Integer; const Value: TColumnDef);
begin
  Items[Index].Assign(Value);
end;

function TColumnDefs.IndexOf(const AColumn: TColumn): integer;
var
  i: integer;
begin
  Result := -1;
  for i := 0 to Count-1 do
    begin
    if Items[i].FColumn = AColumn then
      begin
      Result := i;
      break;
      end;
    end;
end;

function TColumnDefs.GetSelectionColumn: TColumnDef;
begin
  Result := FSelectionColumn;
end;

procedure TColumnDefs.SetSelectionColumn(const Value: TColumnDef);
begin
  if FSelectionColumn <> Value then
    begin
//    Value.FCheckColumn := True;
    Value.FImages.Clear;
    Value.FImages.AddFloat(51, 0);
    Value.FImages.AddFloat(52, 1);
    FSelectionColumn := Value;
    end;
end;

function TColumnDefs.AddSelectionColumn(const AColumn: TColumn): TColumnDef;
begin
  Result := Add(AColumn);
  SetSelectionColumn(Result);
end;

procedure TfmGrid.actShowSimpleFilterExecute(Sender: TObject);
begin
  // ��������� ���������� ����� ���������� ������ ������� fm031_Filter1
  // ��� ������������� property DBGrid � ������� ������������� ����������
  // ����� SetDBGrid, ��� ��������� ��������� ���� ����� �����
  // ��������� �������, ���� ��� �����

//  if fm031_Filter1.ppmSearchFrame.Items.Count < 1 then
//  ����� ������ - � ���������������� ������� ��������� ��� �� ������!!!

  // �������������� ������ ��� �������� ������� (�� ������...)
  if (not fm031_Filter1.Visible) and (fm031_Filter1.DBGrid <> xxxDBGrid) then
    begin
      fm031_Filter1.DBGrid := xxxDBGrid;
      fm031_Filter1.OnFilter := RefreshData;
    end;

  // ������/�������� ������� ������
  fm031_Filter1.ShowOrHide;

  if fm031_Filter1.Visible then
    tbFilter.Hint := 'C����� ���� �������� �������...'
  else
    tbFilter.Hint := '�������� ���� �������� �������...'

end;

procedure TfmGrid.actFilterBySelectExecute(Sender: TObject);
begin
  // ���������� ������ �� ����������� ��������
  xxxDBGrid.FilterBySelect;
end;

procedure TfmGrid.actRemoveAllSettingsExecute(Sender: TObject);
begin
  // ������� ��� ������� �� ������� ����
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  // ��������� ������
  RefreshData;
end;

procedure TfmGrid.actExcelMode0Execute(Sender: TObject);
begin
  z_ReportStruct.SetExcelMode(0);
  z_ReportStruct.ExportToExcel(xxxDBGrid);
end;

procedure TfmGrid.actExcelMode1Execute(Sender: TObject);
begin
  z_ReportStruct.SetExcelMode(1);
  z_ReportStruct.ExportToExcel(xxxDBGrid);
end;
end.


