unit TbdCLBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  StdCtrls;

type
  TTabbedCheckListBox = class(TCustomListBox)
  private
    FAllowGrayed: Boolean;
    FStandardItemHeight: Integer;
    FOnClickCheck: TNotifyEvent;
    FSaveStates: TList;
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure ResetItemHeight;
    procedure DrawCheck( R: TRect; AState: TCheckBoxState );
    procedure SetChecked( Index: Integer; Checked: Boolean );
    function GetChecked( Index: Integer ): Boolean;
    procedure SetState( Index: Integer; AState: TCheckBoxState );
    function GetState( Index: Integer ): TCheckBoxState;
    procedure ToggleClickCheck( Index: Integer );
    procedure InvalidateCheck( Index: Integer );
    function CreateWrapper( Index: Integer ): TObject;
    function ExtractWrapper( Index: Integer ): TObject;
    function GetWrapper( Index: Integer): TObject;
    function HaveWrapper( Index: Integer): Boolean;
  protected
    procedure DrawTabbedItem(Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure DrawItem(Index: Integer; Rect: TRect;
      State: TOwnerDrawState); override;
    procedure SetItemData( Index: Integer; AData: LongInt ); override;
    function GetItemData( Index: Integer ): LongInt; override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure ResetContent; override;
    procedure DeleteString(Index: Integer); override;
    procedure ClickCheck; dynamic;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    function GetCheckWidth: Integer;
  public
    destructor Destroy; override;
    property Checked[Index: Integer]: Boolean read GetChecked write SetChecked;
    property State[Index: Integer]: TCheckBoxState read GetState write SetState;
  published
    property OnClickCheck: TNotifyEvent read FOnClickCheck write FOnClickCheck;
    property Align;
    property AllowGrayed: Boolean read FAllowGrayed write FAllowGrayed default False;
    property BorderStyle;
    property Color;
    property Columns;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    //property ExtendedSelect;
    property Font;
    property ImeMode;
    property ImeName;
    property IntegralHeight;
    property ItemHeight;
    property Items;
    //property MultiSelect;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Sorted;
    property Style;
    property TabOrder;
    property TabStop;
    property TabWidth;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDrawItem;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMeasureItem;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

procedure Register;

implementation

uses consts;

procedure Register;
begin
  RegisterComponents('R_Viewer', [TTabbedCheckListBox]);
end;

type
  TTabbedCheckListBoxDataWrapper = class
  private
    FData: LongInt;
    FState: TCheckBoxState;
    procedure SetChecked( Check: Boolean );
    function GetChecked: Boolean;
  public
    class function GetDefaultState: TCheckBoxState;
    property Checked: Boolean read GetChecked write SetChecked;
    property State: TCheckBoxState read FState write FState;
  end;

var
  FCheckWidth, FCheckHeight: Integer;

procedure GetCheckSize;
begin
  with TBitmap.Create do
    try
      Handle := LoadBitmap( 0, PChar(32759) );
      FCheckWidth := Width div 4;
      FCheckHeight := Height div 3;
    finally
      Free;
    end;
end;

{ TTabbedCheckListBoxDataWrapper }
procedure TTabbedCheckListBoxDataWrapper.SetChecked( Check: Boolean );
begin
  if Check then FState := cbChecked else FState := cbUnchecked;
end;

function TTabbedCheckListBoxDataWrapper.GetChecked: Boolean;
begin
  Result := FState = cbChecked;
end;

class function TTabbedCheckListBoxDataWrapper.GetDefaultState: TCheckBoxState;
begin
  Result := cbUnchecked;
end;

{ TTabbedCheckListBox }
destructor TTabbedCheckListBox.Destroy;
begin
  FSaveStates.Free;
  inherited;
end;

procedure TTabbedCheckListBox.CreateWnd;
begin
  inherited CreateWnd;
  if FSaveStates <> nil then
  begin
    FSaveStates.Free;
    FSaveStates := nil;
  end;
  ResetItemHeight;
end;

procedure TTabbedCheckListBox.DestroyWnd;
var
  I: Integer;
  FWrappers: TList;
begin
  FWrappers := nil;
  if Items.Count > 0 then
  begin
    FSaveStates := TList.Create;
    FWrappers := TList.Create;
    for I := 0 to Items.Count -1 do
    begin
      FSaveStates.Add( TObject( State[I]) );
      FWrappers.Add( ExtractWrapper( I ) );
    end;
  end;
  inherited DestroyWnd;
  if FWrappers <> nil then
  begin
    for I := 0 to FWrappers.Count-1 do
      TTabbedCheckListBoxDataWrapper(FWrappers[I]).Free;
    FWrappers.Free;
  end;
end;

procedure TTabbedCheckListBox.CreateParams(var Params: TCreateParams);
begin
  inherited;
  with Params do
    if Style and (LBS_OWNERDRAWFIXED or LBS_OWNERDRAWVARIABLE ) = 0 then
      Style := Style or LBS_OWNERDRAWFIXED;
end;

function TTabbedCheckListBox.GetCheckWidth: Integer;
begin
  Result := FCheckWidth + 2;
end;

procedure TTabbedCheckListBox.CMFontChanged(var Message: TMessage);
begin
  inherited;
  ResetItemHeight;
end;

procedure TTabbedCheckListBox.ResetItemHeight;
begin
  if HandleAllocated and (Style = lbStandard) then
  begin
    Canvas.Font := Font;
    FStandardItemHeight := Canvas.TextHeight('Wg');
    Perform(LB_SETITEMHEIGHT, 0, FStandardItemHeight);
  end;
end;

procedure TTabbedCheckListBox.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  R: TRect;
  SaveEvent: TDrawItemEvent;
begin

  if Index < Items.Count then
  begin
    R := Rect;
    R.Right := Rect.Left;
    R.Left := R.Right - GetCheckWidth;
    DrawCheck( R, GetState( Index ) );
  end;

  if (Style = lbStandard) and Assigned(OnDrawItem) then
  begin
    // Force lbStandard list to ignore OnDrawItem event.
    SaveEvent := OnDrawItem;
    OnDrawItem := nil;
    try
      DrawTabbedItem(Index, Rect, State);
    finally
      OnDrawItem := SaveEvent;
    end;
  end
  else
    DrawTabbedItem(Index, Rect, State);
end;

procedure TTabbedCheckListBox.CNDrawItem(var Message: TWMDrawItem);
begin
    with Message.DrawItemStruct^ do
        rcItem.Left := rcItem.Left + GetCheckWidth;
    inherited;
end;

procedure TTabbedCheckListBox.DrawCheck( R: TRect; AState: TCheckBoxState );
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  case AState of
    cbChecked:
      DrawState := DFCS_BUTTONCHECK or DFCS_CHECKED;
    cbUnchecked:
      DrawState := DFCS_BUTTONCHECK;
    else // cbGrayed
      DrawState := DFCS_BUTTON3STATE or DFCS_CHECKED;
  end;
  DrawRect.Left := R.Left + (R.Right - R.Left - FCheckWidth) div 2;
  DrawRect.Top := R.Top + (R.Bottom - R.Top - FCheckWidth) div 2;
  DrawRect.Right := DrawRect.Left + FCheckWidth;
  DrawRect.Bottom := DrawRect.Top + FCheckHeight;

  DrawFrameControl( Canvas.Handle,
     DrawRect,  DFC_BUTTON,  DrawState);

end;

procedure TTabbedCheckListBox.SetChecked( Index: Integer; Checked: Boolean );
begin
  if Checked <> GetChecked( Index ) then
  begin
    TTabbedCheckListBoxDataWrapper(GetWrapper(Index)).SetChecked( Checked );
    InvalidateCheck( Index );
  end;
end;

procedure TTabbedCheckListBox.SetState( Index: Integer; AState: TCheckBoxState );
begin
  if AState <> GetState( Index ) then
  begin
    TTabbedCheckListBoxDataWrapper(GetWrapper(Index)).State := AState;
    InvalidateCheck( Index );
  end;
end;

procedure TTabbedCheckListBox.InvalidateCheck( Index: Integer );
var
  R: TRect;
begin
  R := ItemRect( Index );
  R.Right := R.Left + GetCheckWidth;
  InvalidateRect(Handle, @R, not (csOpaque in ControlStyle));
  UpdateWindow(Handle);
end;

function TTabbedCheckListBox.GetChecked( Index: Integer ): Boolean;
begin
  if HaveWrapper( Index ) then
    Result := TTabbedCheckListBoxDataWrapper(GetWrapper(Index)).GetChecked
  else
    Result := False;
end;

function TTabbedCheckListBox.GetState( Index: Integer ): TCheckBoxState;
begin
  if HaveWrapper( Index ) then
    Result := TTabbedCheckListBoxDataWrapper(GetWrapper(Index)).State
  else
    Result := TTabbedCheckListBoxDataWrapper.GetDefaultState;
end;

procedure TTabbedCheckListBox.KeyPress(var Key: Char);
begin
  inherited;
  if (Key = ' ') then ToggleClickCheck( ItemIndex );
end;

procedure TTabbedCheckListBox.MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
var
  Index: Integer;
begin
  inherited;
  Index := ItemAtPos(Point(X,Y),True);
  if Index <> -1 then
    if X - ItemRect(Index).Left < GetCheckWidth then
      ToggleClickCheck(Index);
end;

procedure TTabbedCheckListBox.ToggleClickCheck;
var
  State: TCheckBoxState;
begin
  if (Index >= 0) and (Index < Items.Count) then
  begin
    State := Self.State[Index];
    case State of
      cbUnchecked:
        if AllowGrayed then State := cbGrayed else State := cbChecked;
      cbChecked: State := cbUnchecked;
      cbGrayed: State := cbChecked;
    end;
    Self.State[Index] := State;

    ClickCheck;
  end;
end;

procedure TTabbedCheckListBox.ClickCheck;
begin
  if Assigned(FOnClickCheck) then FOnClickCheck(Self);
end;

function TTabbedCheckListBox.GetItemData(Index: Integer): LongInt;
begin
  Result := 0;
  if HaveWrapper( Index ) then
    Result := TTabbedCheckListBoxDataWrapper(GetWrapper(Index)).FData;
end;

function TTabbedCheckListBox.GetWrapper( Index: Integer ): TObject;
begin
  Result := ExtractWrapper( Index );
  if Result = nil then
    Result := CreateWrapper( Index );
end;

function TTabbedCheckListBox.ExtractWrapper( Index: Integer ): TObject;
begin
  Result := TTabbedCheckListBoxDataWrapper(inherited GetItemData( Index ));
  if LB_ERR = Integer(Result) then
    raise EListError.CreateFmt(SListIndexError, [Index]);
  if (Result <> nil) and (not (Result is TTabbedCheckListBoxDataWrapper)) then
    Result := nil;
end;

function TTabbedCheckListBox.CreateWrapper( Index: Integer ): TObject;
begin
  Result := TTabbedCheckListBoxDataWrapper.Create;
  inherited SetItemData(Index, LongInt(Result));
end;

function TTabbedCheckListBox.HaveWrapper( Index: Integer ): Boolean;
begin
  Result := ExtractWrapper( Index ) <> nil;
end;

procedure TTabbedCheckListBox.SetItemData(Index: Integer; AData: LongInt);
var
  Wrapper: TTabbedCheckListBoxDataWrapper;
begin
  Wrapper := TTabbedCheckListBoxDataWrapper(GetWrapper( Index ));
  Wrapper.FData := AData;
  if FSaveStates <> nil then
    if FSaveStates.Count > 0 then
    begin
     Wrapper.FState := TCheckBoxState(FSaveStates[0]);
     FSaveStates.Delete(0);
    end;
end;

procedure TTabbedCheckListBox.ResetContent;
var
  I: Integer;
begin
  for I := 0 to Items.Count - 1 do
    if HaveWrapper(I) then
      GetWrapper( I ).Free;
  inherited;
end;

procedure TTabbedCheckListBox.DeleteString(Index: Integer);
begin
  if HaveWrapper(Index) then
    GetWrapper( Index ).Free;
  inherited;
end;

procedure TTabbedCheckListBox.DrawTabbedItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
  if Assigned(OnDrawItem) then
    OnDrawItem(Self, Index, Rect, State)
  else
    begin
    Canvas.FillRect(Rect);
    if Index < Items.Count then
//      TabbedTextOut(Canvas.Handle, Rect.Left+2, Rect.Top, PChar(Items[Index]), Length(Items[Index]), 0, FTabs, 0);
      DrawText(Canvas.Handle, PChar(Items[Index]), Length(Items[Index]), Rect, DT_EXPANDTABS);
    end;
end;

initialization
  GetCheckSize;

end.
