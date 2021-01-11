
unit DBFix;

interface

uses Windows, SysUtils, Messages, Classes, Controls, Forms, StdCtrls,
  Graphics, Grids, DBCtrls, Db, Menus, DBGrids, inifiles, DSGNINTF,
  Header, about;


type
  TFixedClickEvent = procedure (Sender : TObject;
       DataCol : integer; Column : TColumn) of object;

  TFixGrid = class;

  TFixGridDataLink = class(TDataLink)
  private
    FGrid : TFixGrid;
    FMoved : boolean;
  protected
    procedure DataSetChanged; override;
    procedure DataSetScrolled(Distance: Integer); override;
    procedure EditingChanged; override;
  public
    constructor Create(grid : TFixGrid);
  end;

  THeaderProperty = class(TClassProperty)
  public
    function GetAttributes : TPropertyAttributes ; override;
    procedure Edit;override;
    procedure SetValue(const Value: string);override;
  end;


{TFixGrid} //*****************************************************

  TFixGrid = class(TCustomDBGrid)
  private
    FFixedCol : Integer;
    FTitleHeight : Integer;
    FRowHeight : Integer;
    FAutoRowHight : boolean;
    FIniFile : string;
    FCurrentRow : boolean;
    FMultiRows : boolean;
    FFlowCountRows : integer;
    FModify : boolean;

    FHeaders : THeaders;

    FArrayRowHeights : array[0..100] of integer;

    FOnMouseDown : TMouseEvent;
    FOnFixedClick : TFixedClickEvent;
    FFixGridDataLink : TFixGridDataLink;

    procedure SetFixedCol( NumCol : Integer);
    function GetFixedCol : Integer;

    procedure SetAutoRowHeight( Value : Boolean);
    procedure UpdateRowCount;
    procedure SetTitleRowHeight( Value : Integer);
    function GetTitleRowHeight : Integer;
    procedure SetDefaultRowHeight( Value : Integer);
    function GetDefaultRowHeight : Integer;

    procedure SetMultiColumns( Value : boolean);

    procedure SetFixedCols;
    procedure UpdateActive;
    procedure UpdateHeightRows;

  protected

    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;

    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
                        X, Y: Integer);override;

    procedure ColWidthsChanged; override;
    procedure LinkActive(Value: Boolean);override;

    procedure LayoutChanged;override;
    procedure CreateWnd;override;
    function HighlightCell(DataCol, DataRow: Integer;
      const Value: string; AState: TGridDrawState): Boolean;override;

    procedure Paint; override;
    procedure Scroll(Distance: Integer);override;

    procedure ColumnMoved(FromIndex, ToIndex: Longint);override;

  public
    property Canvas;
    property SelectedRows;
    property CurrentRow : boolean read FCurrentRow;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  published

    property FixedCol : Integer read GetFixedCol write SetFixedCol;
    property AutoRowHeight : Boolean read FAutoRowHight write SetAutoRowHeight;
    property RowHeight : Integer read GetDefaultRowHeight write SetDefaultRowHeight;
    property TitleRowHeight : Integer read GetTitleRowHeight write SetTitleRowHeight;
    property IniFile : string read FIniFile write FIniFile;
    property MultiRows : boolean read FMultiRows write SetMultiColumns;

    property Headers : THeaders read FHeaders write FHeaders;

    property Align;
    property BorderStyle;
    property Color;
    property Columns stored False; //StoreColumns;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
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
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnStartDrag;
    property OnTitleClick;
    property OnMouseDown : TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnFixedClick : TFixedClickEvent read FOnFixedClick write FOnFixedClick;
  end;

const
  IndicatorWidth = 11;
  BOTTOM_MARGIN = 15;

procedure Register;


implementation

uses DBConsts, Dialogs, HeaderSetup;

var
  DrawBitmap: TBitmap;
  UserCount: Integer;

{ TFixGridDataLink }

procedure TFixGridDataLink.DataSetChanged;
begin
  inherited DataSetChanged;
{  if ( FGrid.MultiRows) and not ( FMoved ) then begin
    FGrid.FModify := false;
  end;}
end;

procedure TFixGridDataLink.EditingChanged;
begin
  inherited DataSetChanged;
  if ( FGrid.MultiRows) then begin
    FGrid.FModify := false;
  end;
end;

procedure TFixGridDataLink.DataSetScrolled(Distance: Integer);
begin
  inherited DataSetScrolled(Distance);
end;

constructor TFixGridDataLink.Create(grid : TFixGrid);
begin
  inherited Create;
  FGrid := grid;
  FMoved := false;
end;

{ THeaderProperty }

procedure THeaderProperty.Edit;
var
  headerSetup : TfmSetupHeader;
  grid : TFixGrid;
begin
  grid := TFixGrid( GetComponent(0));

  headerSetup := TfmSetupHeader.CreateProperty(Application, grid.FHeaders );
  try
    headerSetup.ShowModal;
    grid.Refresh;
    SetValue('New');
  finally
    headerSetup.Free;
  end;
end;

function THeaderProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect,paDialog, paAutoUpdate];
end;

procedure THeaderProperty.SetValue(const Value: string);
begin
  SetStrValue(Value);
end;


//**************************************************************************

procedure UsesBitmap;
begin
  if UserCount = 0 then
    DrawBitmap := TBitmap.Create;
  Inc(UserCount);
end;

procedure ReleaseBitmap;
begin
  Dec(UserCount);
  if UserCount = 0 then DrawBitmap.Free;
end;

function Max(X, Y: Integer): Integer;
begin
  Result := Y;
  if X > Y then Result := X;
end;

function CalcWidthCell(ACanvas: TCanvas; ARect: TRect;
        const Text: string; Alignment: TAlignment;
        var NeedHeight : integer; OldHeight : integer ) : boolean;
const
  AlignFlags : array [TAlignment] of Integer =
    ( DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX );
var
  R : TRect;
  K : integer;
begin
  ARect.Left := ARect.Left + 2;
  ARect.Right := ARect.Right - 2;
  R := ARect;
  R.Left := R.Left + 2;
  R.Right := R.Right - 2;

  DrawText(ACanvas.Handle, PChar(Text), Length(Text), R,
             AlignFlags[Alignment] + DT_WORDBREAK + DT_CALCRECT);
  NeedHeight := ACanvas.TextHeight(Text);
  if ( R.Right > ARect.Right ) then begin
    K := Round((R.Right - R.Left)/(ARect.Right - ARect.Left) + 0.5);
    NeedHeight := NeedHeight * K;
  end;
  Result := NeedHeight > OldHeight;
end;

procedure DrawTopRow( Canvas : TCanvas; ARect : TRect; Text : string );
var
//  Bottom : Integer;
  OldColor : TColor;
  R : TRect;
  OldMode : Integer;
begin
  OldColor := Canvas.Pen.Color;

//  Bottom := Round( ARect.Bottom/2);

  r := Rect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);

  OldMode := SetBkMode(Canvas.Handle, TRANSPARENT);
  Canvas.Rectangle( r.Left, r.Top, r.Right, r.Bottom);

  Canvas.Pen.Color := clWhite;
  Canvas.MoveTo(ARect.Left, ARect.Bottom );
  Canvas.LineTo(ARect.Left, ARect.Top );
  Canvas.LineTo(ARect.Right, ARect.Top);

  Canvas.Pen.Color := clBlack;
  Canvas.MoveTo( ARect.Left, ARect.Bottom );
  Canvas.LineTo( ARect.Right, ARect.Bottom );

  DrawText(Canvas.Handle, PChar(Text), Length(Text), r,
     DT_CENTER + DT_VCENTER + DT_SINGLELINE);

  SetBkMode(Canvas.Handle, OldMode);
  Canvas.Pen.Color := OldColor;
end;

procedure WriteTextTitle(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment);
const
  AlignFlags : array [TAlignment] of Integer =
    ( DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX );
var
  B, R: TRect;
  I : Cardinal;
begin
  I := ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin                       { Use ExtTextOut for solid colors }
    ACanvas.FillRect(ARect);

    R := ARect;
    DrawText(ACanvas.Handle, PChar(Text), Length(Text), R,
             AlignFlags[Alignment] + DT_WORDBREAK + DT_CALCRECT);
    if ( R.Right > ARect.Right ) then
      DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect,
             AlignFlags[Alignment] )
    else
      DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect,
             AlignFlags[Alignment] + DT_WORDBREAK + DT_VCENTER);
  end
  else begin                  { Use FillRect and Drawtext for dithered colors }
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do { Use offscreen bitmap to eliminate flicker and }
      begin                     { brush origin tics in painting / scrolling.    }
        Width := Max(Width, Right - Left);
        Height := Max(Height, Bottom - Top);
        R := Rect(DX, DY, Right - Left - 1, Bottom - Top - 1);
        B := Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do
      begin
        Font := ACanvas.Font;
        Font.Color := ACanvas.Font.Color;
        Brush := ACanvas.Brush;
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

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; MultiRows : boolean);
const
  AlignFlags : array [TAlignment] of Integer =
    ( DT_LEFT  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX );
var
  B, R: TRect;
  I: Cardinal;
  Align : integer;
begin
  Align := DT_VCENTER;
  if not ( MultiRows ) then
    Align := Align + DT_WORDBREAK;

  I := ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin                       { Use ExtTextOut for solid colors }
    ACanvas.FillRect(ARect);
    with ARect do begin
      Left := Left + DX;
      Right := Right - DX;
    end;
    DrawText(ACanvas.Handle, PChar(Text), Length(Text), ARect,
             AlignFlags[Alignment] + Align);
  end
  else begin                  { Use FillRect and Drawtext for dithered colors }
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do { Use offscreen bitmap to eliminate flicker and }
      begin                     { brush origin tics in painting / scrolling.    }
        Width := Max(Width, Right - Left);
        Height := Max(Height, Bottom - Top);
        R := Rect( DX, 0, Right - Left - DX, Bottom - Top - 1);
        B := Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do
      begin
        Font := ACanvas.Font;
        Font.Color := ACanvas.Font.Color;
        Brush := ACanvas.Brush;
        Brush.Style := bsSolid;
        FillRect(B);
        SetBkMode(Handle, TRANSPARENT);
        DrawText(Handle, PChar(Text), Length(Text), R,
            AlignFlags[Alignment] + Align );
      end;
      ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally
      DrawBitmap.Canvas.Unlock;
    end;
  end;
end;

procedure KillMessage(Wnd: HWnd; Msg: Integer);
// Delete the requested message from the queue, but throw back
// any WM_QUIT msgs that PeekMessage may also return
var
  M: TMsg;
begin
  M.Message := 0;
  if PeekMessage(M, Wnd, Msg, Msg, pm_Remove) and (M.Message = WM_QUIT) then
    PostQuitMessage(M.wparam);
end;

//*********************************************************************************//

procedure TFixGrid.KeyDown(var Key: Word; Shift: TShiftState);
var
  Indicator : Integer;
begin
 Indicator := 0;
 if ( dgIndicator in Options ) then
   Indicator := 1;

  case Key of
    VK_LEFT :  if (Col > FFixedCol + Indicator) then
                 inherited KeyDown( Key, Shift);
    VK_HOME : begin
                if ( ssCtrl in Shift ) and Assigned(DataLink) then
                  Datalink.DataSet.First;
                Col := FFixedCol + Indicator;
              end;
  else
    inherited KeyDown( Key, Shift);
  end;

  if ssCtrl in Shift then begin
    case Key of
      VK_HOME, VK_END :
               if ( FMultiRows ) then begin
                 UpdateHeightRows;
                 UpdateRowCount;
               end;
    end;
  end;

end;

procedure TFixGrid.DrawCell(ACol, ARow: Longint; ARect: TRect;
                            AState: TGridDrawState);
var
  DrawColumn : TColumn;
  OldActive: Integer;
  Indicator: Integer;
  Title : Integer;
  Highlight: Boolean;
  Value: string;
  FrameOffs: Byte;
  R, r1 : TRect;
  firstCol, LastCol : Integer;
  text : string;
  i : Integer;
begin
  firstCol := -1;
  lastCol := -1;
  text := '';

  if ( dgIndicator in Options) then
    Indicator := 1
  else
    Indicator := 0;
  if ( dgTitles in Options) then
    Title := 1
  else
    Title := 0;

  if (ACol - Indicator >= 0) then begin

    if (( gdFixed in AState ) and (ACol - Indicator >= 0)
       and (ARow - Title >= 0)) or ((ACol - Indicator >= 0))
       then begin
      ACol := ACol - Indicator;
      Dec(ARow,Title);
    end;

    if (gdFixed in AState) and ([dgRowLines, dgColLines] * Options =
      [dgRowLines, dgColLines]) and (ARow < 0) then
    begin
      InflateRect(ARect, -1, -1);
      FrameOffs := 1;
    end
    else
      FrameOffs := 2;

    if Assigned(DataLink) and DataLink.Active and
      (ARow = DataLink.ActiveRecord) then begin
      FCurrentRow := true;
    end
    else
      FCurrentRow := false;


    DrawColumn := Columns[ACol];
    with Canvas do begin
      Font := DrawColumn.Font;
      Brush.Color := DrawColumn.Color;

      if ARow < 0 then begin
        for i := 0 to Headers.Count - 1 do begin
          if ( ACol >= Headers[i].FFirstCol ) and
            ( ACol <= Headers[i].FLastCol ) then begin
            ARect.Top := Round(ARect.Bottom/2);
            firstCol := Headers[i].FFirstCol;
            lastCol := Headers[i].FLastCol;
            text := Headers[i].FText;
          end;
        end;

        Brush.Color := clWhite;
        R := ARect;
        InflateRect(R, 1, 1);
        FillRect(R);
        Font := DrawColumn.Title.Font;
        Brush.Color := DrawColumn.Title.Color;
        WriteTextTitle(Canvas, ARect, FrameOffs, FrameOffs,
                       DrawColumn.Title.Caption, DrawColumn.Title.Alignment);
        Pen.Color := clGray;
        MoveTo(ARect.Left , ARect.Bottom );
        LineTo(ARect.Right , ARect.Bottom );
        LineTo(ARect.Right , ARect.Top - 1 );

        if ((csDesigning in ComponentState) and
            ( ACol > FirstCol ) and (ACol <= LastCol)) or
           (( ACol = FirstCol ) or
           (( ACol = LeftCol - Indicator  ) and
           ( ACol > FirstCol ) and (ACol <= LastCol)))  then begin
          r1 := BoxRect(FirstCol + Indicator, 0, LastCol + Indicator, 0);
          r1.Bottom := Round(ARect.Bottom/2) - 2;
          DrawTopRow( Canvas, r1, Text );
        end;
      end
      else if (DataLink = nil) or not DataLink.Active then
        FillRect(ARect)
      else begin
        Value := '';
        OldActive := DataLink.ActiveRecord;
        try
          DataLink.ActiveRecord := ARow;
          if Assigned(DrawColumn.Field) then
            Value := DrawColumn.Field.DisplayText;

          Highlight := HighlightCell(ACol, ARow, Value, AState);
          if Highlight then
          begin
            Brush.Color := clHighlight;
            Font.Color := clHighlightText;
          end;
          if DefaultDrawing then begin
            WriteText(Canvas, ARect, 2, 2, Value, DrawColumn.Alignment, FMultiRows) ;
          end;
          if Columns.State = csDefault then
            DrawDataCell(ARect, DrawColumn.Field, AState);
          DrawColumnCell(ARect, ACol, DrawColumn, AState);
        finally
          DataLink.ActiveRecord := OldActive;
        end;
        if DefaultDrawing and (gdSelected in AState)
          and ((dgAlwaysShowSelection in Options) or Focused)
          and not (csDesigning in ComponentState)
          and not (dgRowSelect in Options)
          and (UpdateLock = 0)
          and (ValidParentForm(Self).ActiveControl = Self) then
            Windows.DrawFocusRect(Handle, ARect);
      end;
    end;
  end
  else
    inherited DrawCell(ACol, ARow, ARect, AState);
end;

procedure TFixGrid.UpdateHeightRows;
var
  ACol, ARow : integer;
  Indicator, Title : integer;
  DrawColumn : TColumn;
  OldActive: Integer;
  NeedHeight, OldHeight : integer;
  ARect : TRect;
  Value : string;
  IncHeight, IncRowCount, delta, tmp : integer;
  OldCountRec : integer;
begin

  if not Assigned( Columns ) or  not DataLink.Active  then
    Exit;

  if ( dgIndicator in Options) then
    Indicator := 1
  else
    Indicator := 0;
  if ( dgTitles in Options) then begin
    Title := 1;
    FArrayRowHeights[0] := RowHeights[0];
  end
  else
    Title := 0;

  ARect.Top := 0;
  ARect.Left := 0;

//  OldCountRec := RowCount - Title;
  for ARow := Title to RowCount - 1 do
    RowHeights[ARow] := DefaultRowHeight;
  UpdateRowCount;

  for ARow := Title to RowCount - 1 do begin
    FArrayRowHeights[ARow] := DefaultRowHeight;
    for ACol := Indicator to ColCount - 1  do begin

      DrawColumn := Columns[ACol - Indicator];
      with Canvas do begin
        Font := DrawColumn.Font;
        Brush.Color := DrawColumn.Color;

        if not (DataLink = nil) and DataLink.Active then begin
          Value := '';
          OldActive := DataLink.ActiveRecord;
          try
            DataLink.ActiveRecord := ARow - title;
            if Assigned(DrawColumn.Field) then
              Value := DrawColumn.Field.DisplayText;

            OldHeight := FArrayRowHeights[ARow];
            ARect.Bottom := OldHeight;
            ARect.Right := ColWidths[ACol];
            if CalcWidthCell( Canvas, ARect, Value, DrawColumn.Alignment,
                            NeedHeight, OldHeight ) then
              FArrayRowHeights[ARow] := NeedHeight;
          finally
            DataLink.ActiveRecord := OldActive;
          end;
        end;
      end;
    end;
  end;

  IncRowCount := 0;
  IncHeight := 0;
  if ( title > 0) then
    IncHeight := FArrayRowHeights[0];

  if ( DataLink.ActiveRecord > 0 ) then begin
    tmp := DataLink.ActiveRecord;
    while ( tmp > -1 ) and ( IncHeight < ClientHeight - BOTTOM_MARGIN ) do begin
      Inc( IncRowCount );
      IncHeight := IncHeight + FArrayRowHeights[tmp + title];
      Dec(tmp);
    end;
    if ( IncHeight > ClientHeight - BOTTOM_MARGIN ) then begin
      Dec( IncRowCount );
      IncHeight := ClientHeight - BOTTOM_MARGIN - 1;
    end;
  end;

  while IncHeight < ClientHeight - BOTTOM_MARGIN do begin
    Inc( IncRowCount );
    if FArrayRowHeights[IncRowCount] = 0 then
      FArrayRowHeights[IncRowCount] := DefaultRowHeight;

    IncHeight := IncHeight + FArrayRowHeights[IncRowCount];
  end;

  if ( IncHeight >= ClientHeight - BOTTOM_MARGIN )  then Dec(IncRowCount);

  if DataLink.ActiveRecord > IncRowCount - 1  then begin
    delta := DataLink.ActiveRecord - IncRowCount + 1;
  end
  else
    delta := 0;

  for ARow := Title to RowCount - 1 - delta do begin
    RowHeights[ARow] := FArrayRowHeights[ARow + delta];
  end;

  FFlowCountRows := IncRowCount + title;
  UpdateRowCount;

end;


procedure TFixGrid.Scroll(Distance: Integer);
var
  i : integer;
  IncRowCount : integer;
begin
//  FModify := true;

  inherited Scroll(Distance);

  if ( FMultiRows ) and ( Distance <> 0 ) or not FModify  then begin
    UpdateHeightRows;
    FModify := true;
  end;

end;

procedure TFixGrid.Paint;
var
  title, i : integer;

begin
  if Assigned( DataLink ) and DataLink.Active then begin
    title := 0;
    if ( dgTitles in Options) then
      Inc(Title);
    i := DataLink.ActiveRecord + Title;
    if (i > RowCount - 1) then
      i := RowCount - 1;
    Row := i;
  end;
  if not ( FModify ) and (FMultiRows) then begin
    UpdateHeightRows;
    FModify := true;
  end;
  inherited Paint;
end;


function TFixGrid.HighlightCell(DataCol, DataRow: Integer;
  const Value: string; AState: TGridDrawState): Boolean;
begin
  Result := False;
  if (dgMultiSelect in Options) and Datalink.Active then
    Result := inherited HighlightCell(DataCol, DataRow, Value, AState);
  if not Result then
    Result := (gdSelected in AState)
      and ((dgAlwaysShowSelection in Options) or Focused)
        { updatelock eliminates flicker when tabbing between rows }
      and ((UpdateLock = 0) or (dgRowSelect in Options)) and
      FCurrentRow;
end;


function TFixGrid.GetFixedCol : Integer;
begin
  Result := FFixedCol;
end;

procedure TFixGrid.ColWidthsChanged;
var
  OldCol : Integer;
begin

  OldCol := LeftCol;
  inherited ColWidthsChanged;
//  SetFixedCols;
  if (OldCol < FFixedCol ) then OldCol := FFixedCol + 1;
  LeftCol := OldCol;
  UpdateActive;
  UpdateRowCount;
  Invalidate;
end;


procedure TFixGrid.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  Cell: TGridCoord;
  FTitle : Integer;
  OldRow : integer;
  Indicator : integer;
begin
  FTitle := 0;
  if (dgTitles in Options) then
    Inc(FTitle);
  Cell := MouseCoord(X, Y);

  Indicator := 0;
  if ( dgIndicator in Options) then
    Indicator := 1;

  if (Cell.X >= FixedCols ) then
  begin
    inherited MouseDown(Button, Shift, X, Y)
  end
  else if ( not(csDesigning in ComponentState)) and
    ( Cell.Y >= 0 ) and (Cell.X >= 0 )   then begin
    if Datalink.Active then
      with Cell do  begin
        BeginUpdate;
        try
          HideEditor;
//          OldRow := Row;
          if (Y >= FTitle) and (Y - Row <> 0) then
            Datalink.Dataset.MoveBy(Y - Row);
          if (dgMultiSelect in Options) and Datalink.Active then
            with SelectedRows do
            begin
              if ssCtrl in Shift then
                CurrentRowSelected := not CurrentRowSelected
              else
              begin
                Clear;
                CurrentRowSelected := True;
              end;
            end;
        finally
          EndUpdate;
        end;
        if Assigned( FOnFixedClick ) then
          FOnFixedClick( self, Cell.X - Indicator, Columns[Cell.X - Indicator]);
      end;
  end;
  if ( Cell.Y > FTitle - 1) then
    if Assigned(FOnMouseDown) then
      FOnMouseDown(self, Button, Shift, X, Y);
end;


procedure TFixGrid.LinkActive(Value: Boolean);
begin
  inherited LinkActive(Value);
  SetFixedCols;
  UpdateRowCount;
end;

constructor TFixGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFixedCol := 0;
  AutoRowHeight := true;
  TitleRowHeight := 17;
  RowHeight := 15;
  UsesBitmap;
  FFixGridDataLink := TFixGridDataLink.Create(Self);
  FModify := true;

  FHeaders := THeaders.Create;
end;

destructor TFixGrid.Destroy;
var
  Ini : TIniFile;
  strIdent, strValue, strSection : string;
  I : Integer;
begin
  if not(csDesigning in ComponentState) and ( IniFile <> '' ) then begin
    Ini := TIniFile.Create( IniFile );
    try
      for I := 0 to Columns.Count - 1 do begin
        strSection := Owner.Name + Name;
        strIdent :=  Name + '.' + Columns[I].FieldName;
        strValue := IntToStr(I) + ',' + IntToStr(Columns[I].Width);
        Ini.WriteString( strSection, strIdent, strValue);
      end;
    finally
      Ini.Free;
    end;
  end;
  inherited Destroy;
  ReleaseBitmap;
  FFixGridDataLink.Free;
  FHeaders.Free;
end;

procedure TFixGrid.SetAutoRowHeight( Value : Boolean);
var
  K : integer;
begin
  FAutoRowHight := Value;
  if not ( FAutoRowHight ) then begin
    DefaultRowHeight := FRowHeight;
    if ( dgTitles in Options)  then
      RowHeights[0] := FTitleHeight;
  end
  else begin
    Canvas.Handle := GetDC(0);
    try
      K := Canvas.TextHeight('Wg') + 3;
      if dgRowLines in Options then
        Inc(K, GridLineWidth);
      DefaultRowHeight := K;
    finally
      ReleaseDC(0,Canvas.Handle);
      Canvas.Handle := 0;
    end;
  end;
end;

procedure TFixGrid.SetTitleRowHeight( Value : Integer);
begin
  FTitleHeight := Value;
  if ( dgTitles in Options) and not ( FAutoRowHight ) then begin
    RowHeights[0] := Value;
  end;
end;

function TFixGrid.GetTitleRowHeight : Integer;
begin
  if ( dgTitles in Options ) then
    Result := RowHeights[0]
  else
    Result := 0;
end;

procedure TFixGrid.SetDefaultRowHeight( Value : Integer);
begin
  FRowHeight := Value;
  if not ( FAutoRowHight ) then begin
    DefaultRowHeight := Value;
    if ( dgTitles in Options)  then
      RowHeights[0] := FTitleHeight;
  end;
end;

function TFixGrid.GetDefaultRowHeight : Integer;
begin
  Result := DefaultRowHeight;
end;

procedure TFixGrid.LayoutChanged;
begin
  inherited LayoutChanged;
  if not (FAutoRowHight) then begin
    DefaultRowHeight := FRowHeight;
    if ( dgTitles in Options)  then
      RowHeights[0] := FTitleHeight;
  end;
  SetFixedCols;
  if ( FMultiRows) then
    UpdateHeightRows;
  UpdateRowCount;
end;


procedure TFixGrid.UpdateRowCount;
var
  FTitleOffset : Integer;
  IncRowCount, IncHeight : integer;
begin
  FTitleOffset := 0;
  if ( dgTitles in Options) then
    FTitleOffset := 1;

  if RowCount <= FTitleOffset then RowCount := FTitleOffset + 1;
  with DataLink do
    if not Active or (RecordCount = 0) or not HandleAllocated then
      RowCount := 1 + FTitleOffset
    else
    begin
      if ( FMultiRows ) then begin
          IncRowCount := 0;
          IncHeight := RowHeights[IncRowCount];
          while IncHeight < ClientHeight - BOTTOM_MARGIN do begin
            Inc( IncRowCount );
            IncHeight := IncHeight + RowHeights[IncRowCount];
          end;
          if ( IncRowCount > FFlowCountRows ) and ( FFlowCountRows <> 0  )  then
            IncRowCount := FFlowCountRows;
          RowCount := IncRowCount; // + 10
      end
      else
        RowCount := 1000;

      DataLink.BufferCount := VisibleRowCount;
      RowCount := RecordCount + FTitleOffset;
    end;
end;

procedure InterValue(const Value : string; var Count, Width : Integer);
var
  i : Integer;
  str, str1 : string;
begin
  i := Pos(',', Value);
  str := Value;
  str1 := Value;
  Delete(str, 1, i);
  Delete(str1, i, Length(Value)- i + 1);
  Count := StrToInt(str1);
  Width := StrToInt(str);
end;

type
  TNameCount = class
    NameField : string;
    Count : Integer;
  end;

procedure TFixGrid.CreateWnd;

var
  Ini : TIniFile;
  strSection, strIdent, strValue : string;
  Count, Width, I, J : Integer;
  NameFieldCount : TList;
  nc : TNameCount;
begin

  inherited CreateWnd;

  if ( FMultiRows ) {and not(csDesigning in ComponentState) }then begin
    UpdateHeightRows;
  end;

  if not(csDesigning in ComponentState) then begin
    FFixGridDataLink.DataSource := DataLink.DataSource;
    FFixGridDataLink.FGrid := Self;
    if DataLink.DataSource <> nil then FFixGridDataLink.DataSource.FreeNotification(Self);
  end;

  SetFixedCols;
  //Восстанавливаем заначения из INI
  if not(csDesigning in ComponentState)  and ( IniFile <> '' ) then begin
    Ini := TIniFile.Create( IniFile );
    try
      NameFieldCount := TList.Create;
      try
        strSection := Owner.Name + Name;
        for I := 0 to Columns.Count - 1 do begin
          strIdent :=  Name + '.' + Columns[I].FieldName;
          strValue :=  Ini.ReadString( strSection, strIdent, '-1,-1');
          InterValue(strValue, Count, Width);
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

procedure TFixGrid.SetFixedCol( NumCol : Integer);
begin
  FFixedCol := NumCol;
  SetFixedCols;
end;

procedure TFixGrid.SetFixedCols;
var
  Indicator : Integer;
  OldSel : Integer;
begin
  Indicator := 0;
  if ( dgIndicator in Options ) then
    Indicator := 1;

  if (FieldCount > FFixedCol ) then begin
    OldSel := SelectedIndex;
    inherited FixedCols := FFixedCol + Indicator;

    FFixGridDataLink.DataSource := DataLink.DataSource;
    FFixGridDataLink.FGrid := Self;
    if DataLink.DataSource <> nil then FFixGridDataLink.DataSource.FreeNotification(Self);

    if OldSel > FFixedCol then
      SelectedIndex := OldSel;
  end;
end;


procedure TFixGrid.SetMultiColumns( Value : boolean);
begin
  FMultiRows := Value;
  LayoutChanged;
end;

procedure TFixGrid.UpdateActive;
var
  NewRow: Integer;
  Field: TField;
  FTitleOffset : Integer;
  FEditText : string;
begin
  FTitleOffset := 0;
  if (dgTitles in Options) then FTitleOffset := 1;

  if Datalink.Active and HandleAllocated and not (csLoading in ComponentState) then
  begin
    NewRow := Datalink.ActiveRecord + FTitleOffset;
    if Row <> NewRow then
    begin
      if not (dgAlwaysShowEditor in Options) then HideEditor;
      MoveColRow(Col, NewRow, False, False);
      InvalidateEditor;
    end;
    FEditText := GetEditText(Col, Row);
    Field := SelectedField;
    if Assigned(Field) and (Field.Text <> FEditText) then InvalidateEditor;
  end;
end;

procedure TFixGrid.ColumnMoved(FromIndex, ToIndex: Integer);
var
  i, Indicator : Integer;
  fromIndex1, toIndex1 : Integer;
  w : Integer;
begin
  if ( dgIndicator in Options) then
    Indicator := 1
  else
    Indicator := 0;

  FromIndex1 := FromIndex - Indicator;
  ToIndex1 := ToIndex - Indicator;
  for i := 0 to Headers.Count - 1 do begin
    if (( ToIndex1 >= Headers[i].FFirstCol ) and
       ( ToIndex1 <= Headers[i].FLastCol )) and
       ( (FromIndex1 < Headers[i].FFirstCol ) or
        (FromIndex1 > Headers[i].FLastCol )) then begin
      w := Columns[FromIndex1].Width;
      Columns[FromIndex1].Width := Columns[ToIndex1].Width;
      Columns[ToIndex1].Width := w;
      Exit;
    end;
    if (( ToIndex1 < Headers[i].FFirstCol ) or
       ( ToIndex1 > Headers[i].FLastCol )) and
       ( (FromIndex1 >= Headers[i].FFirstCol ) and
        (FromIndex1 <= Headers[i].FLastCol )) then begin
      Exit;
    end;
  end;
  inherited ColumnMoved(FromIndex, ToIndex );
end;

procedure Register;
begin
  RegisterComponents('IDG', [TFixGrid]);
  RegisterPropertyEditor(TypeInfo(THeaders),TFixGrid,'Headers',THeaderProperty);
  RegisterComponentEditor( TFixGrid, TAboutEditor );
end;

//********************************************************************************//


end.
