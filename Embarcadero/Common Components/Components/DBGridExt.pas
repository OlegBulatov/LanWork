unit DBGridExt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, DBGrids, Header, DsgnIntf;

type

  TDBGridExt = class;
  TFixedClickEvent = procedure (Sender: TObject; DataCol: integer; Column: TColumn) of object;

  TGridExDataLink = class(TDataLink)
  private
    FGrid: TDBGridExt;
    FMoved: boolean;
  protected
    procedure DataSetChanged; override;
    procedure DataSetScrolled(Distance: Integer); override;
    procedure EditingChanged; override;
  public
    constructor Create(Grid : TDBGridExt);
  end;

  THeaderProperty = class(TClassProperty)
  public
    function  GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    procedure SetValue(const Value: string); override;
  end;

  TDBGridExt = class(TCustomDBGrid)
  private
    FFixedCol: Integer;
    FRowHeight: Integer;
    FTitleHeight: Integer;
    FAutoRowHeight: Boolean;
    FIniFile: string;
    FMultiRows: Boolean;
    FCurrentRow: Boolean;
    FFlowCountRows: Integer;
    FModify: Boolean;
    FGridExDataLink: TGridExDataLink;
    FArrayRowHeights: array[0..100] of Integer;

    FHeaders: THeaders;
    FChildGrid: TDBGridExt;

    FOnMouseDown: TMouseEvent;
    FOnFixedClick: TFixedClickEvent;

    function  GetDefaultRowHeight: Integer;
    function  GetFixedCol: Integer;
    function  GetTitleRowHeight: Integer;
    procedure SetAutoRowHeight(Value: Boolean);
    procedure SetDefaultRowHeight(Value: Integer);
    procedure SetFixedCol(NumCol: Integer);
    procedure SetMultiColumns(Value: Boolean);
    procedure SetTitleRowHeight(Value: Integer);

    procedure SetFixedCols;
    procedure UpdateActive;
    procedure UpdateHeightRows;
    procedure UpdateRowCount;
  protected
    procedure CreateWnd; override;
    procedure ColumnMoved(FromIndex, ToIndex: Longint); override;
    procedure ColWidthsChanged; override;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    function  HighlightCell(DataCol, DataRow: Integer;
      const Value: string; AState: TGridDrawState): Boolean; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure LayoutChanged; override;
    procedure LinkActive(Value: Boolean); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure Paint; override;
    procedure Scroll(Distance: Integer); override;
    procedure WMHScroll(var Msg: TMessage); message WM_HSCROLL;
  public
    property Canvas;
    property SelectedRows;
    property CurrentRow: Boolean read FCurrentRow;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
// -------------------------------------
// -- copied from Borland's DBGrids.pas
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Columns stored False; //StoreColumns;
    property Constraints;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Visible;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell;  { obsolete }
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    //property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property OnTitleClick;
// -- end of copied --------------------
// -------------------------------------
    property FixedCol: Integer read GetFixedCol write SetFixedCol;
    property AutoRowHeight: Boolean read FAutoRowHeight write SetAutoRowHeight;
    property RowHeight: Integer read GetDefaultRowHeight write SetDefaultRowHeight;
    property TitleRowHeight: Integer read GetTitleRowHeight write SetTitleRowHeight;
    property MultiRows: Boolean read FMultiRows write SetMultiColumns;
    property IniFile: string read FIniFile write FIniFile;
    property ChildGrid: TDBGridExt read FChildGrid write FChildGrid;
    property Headers: THeaders read FHeaders write FHeaders;
    property ScrollBars;
    property OnMouseDown: TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnFixedClick: TFixedClickEvent read FOnFixedClick write FOnFixedClick;
  end;

  //TDBGrid = class(TDBGridExt);

procedure Register;

implementation

uses IniFiles, Math, HeaderSetup;

{ TFixGridDataLink }

constructor TGridExDataLink.Create(Grid : TDBGridExt);
begin
  inherited Create;
  FGrid:= Grid;
  FMoved:= false;
end;

procedure TGridExDataLink.DataSetChanged;
begin
  inherited DataSetChanged;
{  if ( FGrid.MultiRows) and not ( FMoved ) then begin
    FGrid.FModify := false;
  end;}
end;

procedure TGridExDataLink.EditingChanged;
begin
  inherited DataSetChanged;
  if FGrid.MultiRows then
     FGrid.FModify:= false;
end;

procedure TGridExDataLink.DataSetScrolled(Distance: Integer);
begin
  inherited DataSetScrolled(Distance);
end;

{ THeaderProperty }

procedure THeaderProperty.Edit;
var HeaderSetup: TfmSetupHeader;
    Grid: TDBGridExt;
begin
  Grid:= TDBGridExt(GetComponent(0));
  HeaderSetup:= TfmSetupHeader.CreateProperty(Application, Grid.FHeaders);
  try
    HeaderSetup.ShowModal;
    Grid.Refresh;
    SetValue('New');
  finally
    HeaderSetup.Free;
  end;
end;

function THeaderProperty.GetAttributes: TPropertyAttributes;
begin
  Result:= [paMultiSelect,paDialog, paAutoUpdate];
end;

procedure THeaderProperty.SetValue(const Value: string);
begin
  SetStrValue(Value);
end;

//-------------------

const
  IndicatorWidth = 11;
  BOTTOM_MARGIN = 0;

var DrawBitmap: TBitmap;
    UserCount: Integer;

procedure UsesBitmap;
begin
  if UserCount = 0 then
     DrawBitmap:= TBitmap.Create;
  Inc(UserCount);
end;

procedure ReleaseBitmap;
begin
  Dec(UserCount);
  if UserCount = 0 then
     DrawBitmap.Free;
end;

type
  TNameCount = class
    NameField: string;
    Count: Integer;
  end;

procedure InterValue(const Value: string; var Count, Width: Integer);
var i : Integer;
    str, str1: string;
begin
  i:= Pos(',', Value);
  str:= Value;
  str1:= Value;
  Delete(str, 1, i);
  Delete(str1, i, Length(Value)- i + 1);
  Count:= StrToInt(str1);
  Width:= StrToInt(str);
end;

function CalcWidthCell(ACanvas: TCanvas; ARect: TRect;
                       const Text: string; Alignment: TAlignment;
                       var NeedHeight: integer; OldHeight: integer): boolean;
const
  AlignFlags: array [TAlignment] of Integer =
     (DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX);
var
  R: TRect;
  K: Integer;
begin
  ARect.Left:= ARect.Left + 2;
  ARect.Right:= ARect.Right - 2;
  R:= ARect;
  R.Left:= R.Left + 2;
  R.Right:= R.Right - 2;

  DrawText(ACanvas.Handle, PChar(Text), Length(Text), R,
           AlignFlags[Alignment] + DT_WORDBREAK + DT_CALCRECT);
  NeedHeight:= ACanvas.TextHeight(Text);
  if (R.Right > ARect.Right) then begin
    K:= Round((R.Right - R.Left)/(ARect.Right - ARect.Left) + 0.5);
    NeedHeight := NeedHeight * K;
  end;
  Result := NeedHeight > OldHeight;
end;

procedure DrawTopRow(Canvas: TCanvas; ARect: TRect; Text: string);
var OldColor: TColor;
    R: TRect;
    OldMode: Integer;
begin
  OldColor:= Canvas.Pen.Color;
  R:= Rect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);
  OldMode:= SetBkMode(Canvas.Handle, TRANSPARENT);
  Canvas.Rectangle(R.Left,R.Top,R.Right,R.Bottom);
  Canvas.Pen.Color:= clWhite;
  Canvas.MoveTo(ARect.Left, ARect.Bottom);
  Canvas.LineTo(ARect.Left, ARect.Top);
  Canvas.LineTo(ARect.Right, ARect.Top);
  Canvas.Pen.Color:= clBlack;
  Canvas.MoveTo(ARect.Left, ARect.Bottom);
  Canvas.LineTo(ARect.Right, ARect.Bottom);

  DrawText(Canvas.Handle, PChar(Text), Length(Text), R, DT_CENTER + DT_VCENTER + DT_SINGLELINE);

  SetBkMode(Canvas.Handle, OldMode);
  Canvas.Pen.Color:= OldColor;
end;

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; MultiRows : boolean);
const
  AlignFlags : array [TAlignment] of Integer =
   (DT_LEFT  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_RIGHT  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_CENTER  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX);
var B, R: TRect;
    I: Cardinal;
    Align: integer;
begin
  Align:= DT_VCENTER;
  if not (MultiRows) then
    Align:= Align + DT_WORDBREAK;

  I:= ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin  // Use ExtTextOut for solid colors
    ACanvas.FillRect(ARect);
    with ARect do begin
      Left:= Left + DX;
      Right:= Right - DX;
    end;
    DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect, AlignFlags[Alignment] + Align);
  end
  else begin  // Use FillRect and Drawtext for dithered colors
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do begin // Use offscreen bitmap to eliminate flicker and brush origin tics in painting / scrolling.
        Width:= Max(Width, Right - Left);
        Height:= Max(Height, Bottom - Top);
        R:= Rect( DX, 0, Right - Left - DX, Bottom - Top - 1);
        B:= Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do begin
        Font:= ACanvas.Font;
        Font.Color := ACanvas.Font.Color;
        Brush:= ACanvas.Brush;
        Brush.Style:= bsSolid;
        FillRect(B);
        SetBkMode(Handle, TRANSPARENT);
        DrawText(Handle, PChar(Text), Length(Text), R, AlignFlags[Alignment] + Align);
      end;
      ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally
      DrawBitmap.Canvas.Unlock;
    end;
  end;
end;

procedure WriteTextTitle(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment);
const
  AlignFlags: array [TAlignment] of Integer =
   (DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
    DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX);
var B, R: TRect;
    I: Cardinal;
begin
  I:= ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin  // Use ExtTextOut for solid colors
    ACanvas.FillRect(ARect);
    R:= ARect;
    DrawText(ACanvas.Handle, PChar(Text), Length(Text), R,
             AlignFlags[Alignment] + DT_WORDBREAK + DT_CALCRECT);
    if (R.Right > ARect.Right) then
      DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect, AlignFlags[Alignment]) else
      DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect, AlignFlags[Alignment] + DT_WORDBREAK + DT_VCENTER);
  end
  else begin  // Use FillRect and Drawtext for dithered colors
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do  // Use offscreen bitmap to eliminate flicker and brush origin tics in painting / scrolling.
      begin
        Width:= Max(Width, Right - Left);
        Height:= Max(Height, Bottom - Top);
        R:= Rect(DX, DY, Right - Left - 1, Bottom - Top - 1);
        B:= Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do
      begin
        Font:= ACanvas.Font;
        Font.Color:= ACanvas.Font.Color;
        Brush:= ACanvas.Brush;
        Brush.Style := bsSolid;
        FillRect(B);
        SetBkMode(Handle, TRANSPARENT);
        DrawText(Handle, PChar(Text), Length(Text), R, AlignFlags[Alignment] +  DT_WORDBREAK);
      end;
      ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally
      DrawBitmap.Canvas.Unlock;
    end;
  end;
end;

{TDBGridExt}

constructor TDBGridExt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFixedCol:= 0;
  AutoRowHeight:= true;
  TitleRowHeight:= 17;
  RowHeight:= 17;
  UsesBitmap;
  FGridExDataLink:= TGridExDataLink.Create(Self);
  FModify:= true;
  FHeaders:= THeaders.Create;
end;

destructor TDBGridExt.Destroy;
var Ini : TIniFile;
    StrIdent, StrValue, StrSection: string;
    i: Integer;
begin
  if not (csDesigning in ComponentState) and (IniFile <> '') then begin
    Ini:= TIniFile.Create(IniFile);
    try
      for i:= 0 to Columns.Count - 1 do begin
        StrSection:= Owner.Name + Name;
        StrIdent:=  Name + '.' + Columns[I].FieldName;
        StrValue:= IntToStr(i) + ',' + IntToStr(Columns[i].Width);
        Ini.WriteString(StrSection,StrIdent,StrValue);
      end;
    finally
      Ini.Free;
    end;
  end;
  inherited Destroy;
  ReleaseBitmap;
  FGridExDataLink.Free;
//  FHeaders.Free;
end;

procedure TDBGridExt.ColumnMoved(FromIndex, ToIndex: Integer);
var i, Indicator: Integer;
    fromIndex1, toIndex1: Integer;
    w: Integer;
begin
  if (dgIndicator in Options) then Indicator := 1
  else Indicator := 0;
  FromIndex1:= FromIndex - Indicator;
  ToIndex1:= ToIndex - Indicator;

  for i:= 0 to Headers.Count - 1 do begin
    if ((ToIndex1 >= Headers[i].FFirstCol) and (ToIndex1 <= Headers[i].FLastCol)) and
       ((FromIndex1 < Headers[i].FFirstCol) or (FromIndex1 > Headers[i].FLastCol)) then begin
      w:= Columns[FromIndex1].Width;
      Columns[FromIndex1].Width:= Columns[ToIndex1].Width;
      Columns[ToIndex1].Width:= w;
      Exit;
    end;
    if ((ToIndex1 < Headers[i].FFirstCol) or (ToIndex1 > Headers[i].FLastCol)) and
       ((FromIndex1 >= Headers[i].FFirstCol) and (FromIndex1 <= Headers[i].FLastCol)) then begin
      Exit;
    end;
  end;
  inherited ColumnMoved(FromIndex, ToIndex);
  if Assigned(FChildGrid) then
    FChildGrid.ColumnMoved(FromIndex, ToIndex);
end;

procedure TDBGridExt.ColWidthsChanged;
var OldCol: Integer;
    i: Integer;
begin
  OldCol:= LeftCol;
  inherited ColWidthsChanged;
  if (OldCol < FFixedCol) then OldCol:= FFixedCol + 1;
  LeftCol:= OldCol;
  UpdateActive;
  UpdateRowCount;
  Invalidate;
  if Assigned(FChildGrid) then begin
    for i:= FChildGrid.FFixedCol to FChildGrid.ColCount - 1 do
      FChildGrid.ColWidths[I]:= ColWidths[I];
    FChildGrid.ColWidthsChanged;
  end;
end;

procedure TDBGridExt.CreateWnd;
var Ini: TIniFile;
    StrSection, StrIdent, StrValue :string;
    Count, Width, i, j :Integer;
    NameFieldCount: TList;
    nc: TNameCount;
begin
  inherited CreateWnd;

  if FMultiRows then //and not(csDesigning in ComponentState)
    UpdateHeightRows;

  if not (csDesigning in ComponentState) then begin
    FGridExDataLink.DataSource:= DataLink.DataSource;
    FGridExDataLink.FGrid:= Self;
    if DataLink.DataSource <> nil then FGridExDataLink.DataSource.FreeNotification(Self);
  end;

  SetFixedCols;
  //Восстанавливаем заначения из INI
  if not(csDesigning in ComponentState) and (IniFile <> '') then begin
    Ini:= TIniFile.Create(IniFile);
    try
      NameFieldCount:= TList.Create;
      try
        StrSection:= Owner.Name + Name;
        for i:= 0 to Columns.Count - 1 do begin
          StrIdent:= Name + '.' + Columns[I].FieldName;
          StrValue:= Ini.ReadString(StrSection, StrIdent, '-1,-1');
          InterValue(StrValue, Count, Width);
          if (Count > -1) then begin
            nc := TNameCount.Create;
            nc.NameField := Columns[I].FieldName;
            nc.Count := Count;
            NameFieldCount.Add(nc);
          end;
          if (Width > -1) then Columns[I].Width := Width;
        end;
        for I := 0 to NameFieldCount.Count - 1 do begin
          nc := NameFieldCount[I];
          for J := 0 to Columns.Count - 1 do begin
            if ( Columns[J].FieldName = nc.NameField ) then begin
              Columns[J].Index := nc.Count;
              Break;
            end;
          end;
        end;
      finally
        NameFieldCount.Clear;
        NameFieldCount.Free;
      end;
    finally
      Ini.Free;
    end;
  end;
  UpdateRowCount;
end;

procedure TDBGridExt.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var DrawColumn: TColumn;
    OldActive: Integer;
    Indicator: Integer;
    Title: Integer;
    Highlight: Boolean;
    Value: string;
    FrameOffs: Byte;
    R, r1: TRect;
    FirstCol, LastCol: Integer;
    Text: string;
    i: Integer;
begin
  FirstCol:= -1;
  LastCol:= -1;
  Text:= '';

  if (dgIndicator in Options) then Indicator:= 1
  else Indicator:= 0;
  if (dgTitles in Options) then Title:= 1
  else Title:= 0;

  if (ACol - Indicator >= 0) then begin
    if ((gdFixed in AState) and (ACol - Indicator >= 0) and (ARow - Title >= 0)) or
        (ACol - Indicator >= 0) then begin
      ACol:= ACol - Indicator;
      Dec(ARow,Title);
    end;

    if (gdFixed in AState) and
       ([dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines]) and
       (ARow < 0) then begin
      InflateRect(ARect, -1, -1);
      FrameOffs:= 1;
    end
    else
      FrameOffs:= 2;

    if Assigned(DataLink) and DataLink.Active and
      (ARow = DataLink.ActiveRecord) then
      FCurrentRow:= true
    else
      FCurrentRow:= false;

    DrawColumn:= Columns[ACol];
    with Canvas do begin
      Font:= DrawColumn.Font;
      Brush.Color:= DrawColumn.Color;

      if ARow < 0 then begin
        for i:= 0 to Headers.Count - 1 do begin
          if (ACol >= Headers[i].FFirstCol) and (ACol <= Headers[i].FLastCol) then begin
            ARect.Top:= Round(ARect.Bottom/2);
            FirstCol:= Headers[i].FFirstCol;
            LastCol:= Headers[i].FLastCol;
            Text:= Headers[i].FText;
          end;
        end;

        Brush.Color:= clWhite;
        R:= ARect;
        InflateRect(R, 1, 1);
        FillRect(R);
        Font:= DrawColumn.Title.Font;
        Brush.Color:= DrawColumn.Title.Color;
        WriteTextTitle(Canvas, ARect, FrameOffs, FrameOffs,
                       DrawColumn.Title.Caption, DrawColumn.Title.Alignment);
        Pen.Color:= clGray;
        MoveTo(ARect.Left, ARect.Bottom);
        LineTo(ARect.Right, ARect.Bottom);
        LineTo(ARect.Right, ARect.Top - 1);

        if ((csDesigning in ComponentState) and (ACol > FirstCol) and (ACol <= LastCol)) or
           ((ACol = FirstCol) or ((ACol = LeftCol - Indicator ) and (ACol > FirstCol) and (ACol <= LastCol))) then begin
          r1:= BoxRect(FirstCol + Indicator, 0, LastCol + Indicator, 0);
          r1.Bottom := Round(ARect.Bottom/2) - 2;
          DrawTopRow(Canvas, r1, Text);
        end;
      end
      else if (DataLink = nil) or not DataLink.Active then
        FillRect(ARect)
      else begin
        Value:= '';
        OldActive:= DataLink.ActiveRecord;
        try
          DataLink.ActiveRecord:= ARow;
          if Assigned(DrawColumn.Field) then
            Value:= DrawColumn.Field.DisplayText;
          Highlight:= HighlightCell(ACol, ARow, Value, AState);
          if Highlight then begin
            Brush.Color:= clHighlight;
            Font.Color:= clHighlightText;
          end;
          if DefaultDrawing then begin
            WriteText(Canvas, ARect, 2, 2, Value, DrawColumn.Alignment, FMultiRows);
          end;
          if Columns.State = csDefault then
            DrawDataCell(ARect, DrawColumn.Field, AState);
          DrawColumnCell(ARect, ACol, DrawColumn, AState);
        finally
          DataLink.ActiveRecord:= OldActive;
        end;
        if DefaultDrawing and (gdSelected in AState) and ((dgAlwaysShowSelection in Options) or Focused) and
           not (csDesigning in ComponentState) and not (dgRowSelect in Options) and
           (UpdateLock = 0) and (ValidParentForm(Self).ActiveControl = Self) then
          Windows.DrawFocusRect(Handle, ARect);
      end;
    end;
  end
  else
    inherited DrawCell(ACol, ARow, ARect, AState);
end;

function TDBGridExt.GetDefaultRowHeight: Integer;
begin
  Result:= DefaultRowHeight;
end;

function  TDBGridExt.GetFixedCol: Integer;
begin
  Result:= FFixedCol;
end;

function  TDBGridExt.GetTitleRowHeight: Integer;
begin
  if (dgTitles in Options) then Result:= RowHeights[0]
  else Result:= 0;
end;

function TDBGridExt.HighlightCell(DataCol, DataRow: Integer;
  const Value: string; AState: TGridDrawState): Boolean;
begin
  Result:= false;
  if (dgMultiSelect in Options) and Datalink.Active then
    Result:= inherited HighlightCell(DataCol, DataRow, Value, AState);
  if not Result then
    Result:= (gdSelected in AState)
      and ((dgAlwaysShowSelection in Options) or Focused)
        { updatelock eliminates flicker when tabbing between rows }
      and ((UpdateLock = 0) or (dgRowSelect in Options)) and
      FCurrentRow;
end;

procedure TDBGridExt.KeyDown(var Key: Word; Shift: TShiftState);
var Indicator: Integer;
begin
  Indicator:= 0;
  if (dgIndicator in Options) then
    Indicator := 1;

  case Key of
    VK_LEFT : if (Col > FFixedCol + Indicator) then
                inherited KeyDown(Key, Shift);
    VK_HOME : begin
                if (ssCtrl in Shift) and Assigned(DataLink) then
                  Datalink.DataSet.First;
                Col:= FFixedCol + Indicator;
              end;
    else
      inherited KeyDown(Key, Shift);
  end;

  if (ssCtrl in Shift) then begin
    case Key of
      VK_HOME, VK_END :
        if ( FMultiRows ) then begin
          UpdateHeightRows;
          UpdateRowCount;
        end;
    end;
  end;
end;

procedure TDBGridExt.LayoutChanged;
begin
  inherited LayoutChanged;
  if not FAutoRowHeight then begin
    DefaultRowHeight:= FRowHeight;
    if (dgTitles in Options) then
      RowHeights[0]:= FTitleHeight;
  end;
  SetFixedCols;
  if FMultiRows then
    UpdateHeightRows;
  UpdateRowCount;
end;

procedure TDBGridExt.LinkActive(Value: Boolean);
begin
  inherited LinkActive(Value);
  SetFixedCols;
  UpdateRowCount;
end;

procedure TDBGridExt.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Cell: TGridCoord;
    FTitle: Integer;
    Indicator: integer;
begin
  FTitle:= 0;
  if (dgTitles in Options) then Inc(FTitle);

  Indicator:= 0;
  if (dgIndicator in Options) then Indicator:= 1;

  Cell:= MouseCoord(X, Y);

  if (Cell.X >= FixedCols) then begin
    inherited MouseDown(Button, Shift, X, Y)
  end
  else if (not (csDesigning in ComponentState)) and
    (Cell.Y >= 0) and (Cell.X >= 0) then begin
    if Datalink.Active then
      with Cell do begin
        BeginUpdate;
        try
          HideEditor;
          if (Y >= FTitle) and (Y - Row <> 0) then
            Datalink.Dataset.MoveBy(Y - Row);
          if (dgMultiSelect in Options) and Datalink.Active then
            with SelectedRows do begin
              if ssCtrl in Shift then
                CurrentRowSelected:= not CurrentRowSelected
              else
              begin
                Clear;
                CurrentRowSelected:= True;
              end;
            end;
        finally
          EndUpdate;
        end;
        if Assigned(FOnFixedClick) then
          FOnFixedClick( self, Cell.X - Indicator, Columns[Cell.X - Indicator]);
      end;
  end;
  if (Cell.Y > FTitle - 1) then
    if Assigned(FOnMouseDown) then
      FOnMouseDown(self, Button, Shift, X, Y);
end;

procedure TDBGridExt.Paint;
var Title, i: Integer;
begin
  if Assigned(DataLink) and DataLink.Active then begin
    Title:= 0;
    if (dgTitles in Options) then Inc(Title);
    i:= DataLink.ActiveRecord + Title;
    if (i > RowCount - 1) then
      i:= RowCount - 1;
    Row:= i;
  end;
  if not (FModify) and (FMultiRows) then begin
    UpdateHeightRows;
    FModify:= true;
  end;
  inherited Paint;
end;

procedure TDBGridExt.Scroll(Distance: Integer);
begin
  inherited Scroll(Distance);
  if FMultiRows and (Distance <> 0) or not FModify then begin
    UpdateHeightRows;
    FModify:= true;
  end;
end;

procedure TDBGridExt.SetAutoRowHeight(Value: Boolean);
var K: integer;
begin
  FAutoRowHeight:= Value;
  if not FAutoRowHeight then begin
    DefaultRowHeight:= FRowHeight;
    if (dgTitles in Options) then
      RowHeights[0]:= FTitleHeight;
  end
  else begin
    Canvas.Handle:= GetDC(0);
    try
      K:= Canvas.TextHeight('Wg') + 3;
      if (dgRowLines in Options) then
        Inc(K, GridLineWidth);
      DefaultRowHeight:= K;
    finally
      ReleaseDC(0,Canvas.Handle);
      Canvas.Handle:= 0;
    end;
  end;
end;

procedure TDBGridExt.SetDefaultRowHeight(Value: Integer);
begin
  FRowHeight:= Value;
  if not FAutoRowHeight then begin
    DefaultRowHeight:= Value;
    if (dgTitles in Options)  then
      RowHeights[0]:= FTitleHeight;
  end;
end;

procedure TDBGridExt.SetFixedCol(NumCol: Integer);
begin
  FFixedCol:= NumCol;
  SetFixedCols;
end;

procedure TDBGridExt.SetFixedCols;
var Indicator: Integer;
    OldSel: Integer;
begin
  Indicator:= 0;
  if (dgIndicator in Options) then
    Indicator:= 1;

  if (FieldCount > FFixedCol) then begin
    OldSel:= SelectedIndex;
    inherited FixedCols:= FFixedCol + Indicator;

    FGridExDataLink.DataSource:= DataLink.DataSource;
    FGridExDataLink.FGrid:= Self;
    if DataLink.DataSource <> nil then
      FGridExDataLink.DataSource.FreeNotification(Self);

    if OldSel > FFixedCol then
      SelectedIndex:= OldSel;
  end;
end;

procedure TDBGridExt.SetMultiColumns(Value: Boolean);
begin
  FMultiRows:= Value;
  LayoutChanged;
end;

procedure TDBGridExt.SetTitleRowHeight(Value: Integer);
begin
  FTitleHeight:= Value;
  if (dgTitles in Options) and not FAutoRowHeight then
    RowHeights[0]:= Value;
end;

procedure TDBGridExt.UpdateActive;
var NewRow: Integer;
    Field: TField;
    FTitleOffset: Integer;
    FEditText: string;
begin
  FTitleOffset:= 0;
  if (dgTitles in Options) then FTitleOffset:= 1;

  if Datalink.Active and HandleAllocated and not (csLoading in ComponentState) then begin
    NewRow:= Datalink.ActiveRecord + FTitleOffset;
    if Row <> NewRow then begin
      if not (dgAlwaysShowEditor in Options) then HideEditor;
      MoveColRow(Col, NewRow, False, False);
      InvalidateEditor;
    end;
    FEditText:= GetEditText(Col, Row);
    Field:= SelectedField;
    if Assigned(Field) and (Field.Text <> FEditText) then InvalidateEditor;
  end;
end;

procedure TDBGridExt.UpdateHeightRows;
var ACol, ARow: Integer;
  Indicator, Title: Integer;
  DrawColumn: TColumn;
  OldActive: Integer;
  NeedHeight, OldHeight: integer;
  ARect: TRect;
  Value: string;
  IncHeight, IncRowCount, delta, tmp: Integer;
//  OldCountRec: integer;
begin
  if not Assigned(Columns) or  not DataLink.Active then Exit;
  if (dgIndicator in Options) then
    Indicator:= 1 else
    Indicator:= 0;
  if (dgTitles in Options) then begin
    Title:= 1;
    FArrayRowHeights[0]:= RowHeights[0];
  end
  else
    Title:= 0;

  ARect.Top:= 0;
  ARect.Left:= 0;
  for ARow:= Title to RowCount - 1 do
    RowHeights[ARow]:= DefaultRowHeight;
  UpdateRowCount;

  for ARow:= Title to RowCount - 1 do begin
    FArrayRowHeights[ARow]:= DefaultRowHeight;
    for ACol:= Indicator to ColCount - 1 do begin
      DrawColumn:= Columns[ACol - Indicator];
      with Canvas do begin
        Font:= DrawColumn.Font;
        Brush.Color := DrawColumn.Color;
        if not (DataLink = nil) and DataLink.Active then begin
          Value:= '';
          OldActive := DataLink.ActiveRecord;
          try
            DataLink.ActiveRecord:= ARow - title;
            if Assigned(DrawColumn.Field) then
              Value:= DrawColumn.Field.DisplayText;

            OldHeight:= FArrayRowHeights[ARow];
            ARect.Bottom:= OldHeight;
            ARect.Right:= ColWidths[ACol];
            if CalcWidthCell(Canvas, ARect, Value, DrawColumn.Alignment,NeedHeight, OldHeight) then
              FArrayRowHeights[ARow]:= NeedHeight;
          finally
            DataLink.ActiveRecord:= OldActive;
          end;
        end;
      end;
    end;
  end;

  IncRowCount:= 0;
  IncHeight:= 0;
  if (title > 0) then
    IncHeight:= FArrayRowHeights[0];

  if (DataLink.ActiveRecord > 0) then begin
    tmp:= DataLink.ActiveRecord;
    while (tmp > -1) and (IncHeight < ClientHeight - BOTTOM_MARGIN) do begin
      Inc(IncRowCount);
      IncHeight:= IncHeight + FArrayRowHeights[tmp + title];
      Dec(tmp);
    end;
    if (IncHeight > ClientHeight - BOTTOM_MARGIN) then begin
      Dec(IncRowCount);
      IncHeight:= ClientHeight - BOTTOM_MARGIN - 1;
    end;
  end;

  while IncHeight < ClientHeight - BOTTOM_MARGIN do begin
    Inc(IncRowCount);
    if FArrayRowHeights[IncRowCount] = 0 then
      FArrayRowHeights[IncRowCount]:= DefaultRowHeight;
    IncHeight:= IncHeight + FArrayRowHeights[IncRowCount];
  end;

  if (IncHeight >= ClientHeight - BOTTOM_MARGIN)  then Dec(IncRowCount);

  if DataLink.ActiveRecord > IncRowCount - 1  then
    delta:= DataLink.ActiveRecord - IncRowCount + 1 else
    delta:= 0;

  for ARow:= Title to RowCount - 1 - delta do begin
    RowHeights[ARow]:= FArrayRowHeights[ARow + delta];
  end;

  FFlowCountRows:= IncRowCount + title;
  UpdateRowCount;
end;

procedure TDBGridExt.UpdateRowCount;
var FTitleOffset: Integer;
    IncRowCount, IncHeight: Integer;
begin
  FTitleOffset:= 0;
  if (dgTitles in Options) then
    FTitleOffset:= 1;

  if RowCount <= FTitleOffset then RowCount:= FTitleOffset + 1;
  with DataLink do
    if not Active or (RecordCount = 0) or not HandleAllocated then
      RowCount:= FTitleOffset + 1
    else
    begin
      if FMultiRows then begin
         IncRowCount:= 0;
         IncHeight:= RowHeights[IncRowCount];
         while IncHeight < ClientHeight - BOTTOM_MARGIN do begin
           Inc(IncRowCount);
           IncHeight:= IncHeight + RowHeights[IncRowCount];
         end;
         if (IncRowCount > FFlowCountRows) and (FFlowCountRows <> 0)  then
           IncRowCount:= FFlowCountRows;
         RowCount:= IncRowCount;
      end
      else
        RowCount := 1000;

      DataLink.BufferCount:= VisibleRowCount;
      RowCount:= RecordCount + FTitleOffset;
    end;
end;

procedure TDBGridExt.WMHScroll(var Msg: TMessage);
// added to synchronize horizontal scrolling with child grid
begin
  inherited;
  if Assigned(FChildGrid) then
    PostMessage(FChildGrid.Handle, WM_HSCROLL, Msg.wParam, Msg.lParam);
end;

procedure Register;
begin
  RegisterComponents('R_Viewer', [TDBGridExt]);
  RegisterPropertyEditor(TypeInfo(THeaders),TDBGridExt,'Headers',THeaderProperty);
//  RegisterComponentEditor(TDBGridExt, TAboutEditor);
end;

end.
