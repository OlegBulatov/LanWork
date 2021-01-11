unit frm45_DoubleListForm;

interface

uses
  frm04_EditForm, Oracle, OracleData, ComCtrls, ToolWin, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, xxxDBGrid, frm04_ListForm, frm00_ParentForm,
  System.Actions, Variants;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  Buttons, DBCtrls
//  Db,

type
  TMoveType = (mtToTop, mtToBottom);

  TMoveProc = procedure of object;

  Tfrm45_DoubleList = class(Tfrm04_Edit)
    paTop: TPanel;
    paCaptionTop: TPanel;
    paBottom: TPanel;
    Splitter1: TSplitter;
    oqToBottom: TOracleQuery;
    oqToTop: TOracleQuery;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    actMoveToBottom: TAction;
    actMoveAllToBottom: TAction;
    actMoveAllToTop: TAction;
    actMoveToTop: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actMoveToTopExecute(Sender: TObject);
    procedure actMoveAllToTopExecute(Sender: TObject);
    procedure actMoveAllToBottomExecute(Sender: TObject);
    procedure actMoveToBottomExecute(Sender: TObject);
    procedure actMoveToRightExecute(Sender: TObject);
    procedure actMoveAllToRightExecute(Sender: TObject);
    procedure actMoveAllToLeftExecute(Sender: TObject);
    procedure actMoveToLeftExecute(Sender: TObject);
    procedure actMoveToBottom_Update(Sender: TObject);
    procedure actMoveAllToTop_Update(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTopForm: Tfrm04_List;
    FBottomForm: Tfrm04_List;
    //
    FTopID: Double;
    FBottomID: Double;
    //
    procedure PlaceFormToPanel(const AForm: Tfrm00_Parent; const AControl: TWinControl);
    //
    procedure SelectAll(const ADBGrid: TxxxDBGrid);
    procedure MoveRecords(const AMoveType: TMoveType; const AMoveAll: Boolean);
    function GetTopDataSet: TOracleDataSet;
    function GetTopDBGrid: TxxxDBGrid;
    function GetBottomDataSet: TOracleDataSet;
    function GetBottomDBGrid: TxxxDBGrid;
  protected
    procedure SelectItem; virtual;
    //
    procedure OnMoveToTop; virtual;
    procedure OnMoveToBottom; virtual;
    //
    procedure InitTopForm; virtual;
    procedure InitBottomForm; virtual;
    //
  public
    property TopForm: Tfrm04_List read FTopForm write FTopForm;
    property BottomForm: Tfrm04_List read FBottomForm write FBottomForm;
    //
    property TopDataSet: TOracleDataSet read GetTopDataSet;
    property BottomDataSet: TOracleDataSet read GetBottomDataSet;
    //
    property TopDBGrid: TxxxDBGrid read GetTopDBGrid;
    property BottomDBGrid: TxxxDBGrid read GetBottomDBGrid;
    //
    property TopID: Double read FTopID write FTopID;
    property BottomID: Double read FBottomID write FBottomID;
  end;

var
  frm45_DoubleList: Tfrm45_DoubleList;

implementation

uses Db;
//dm02_PictersData, dm005_MainData, dm03_ReportsData;

{$R *.DFM}

procedure Tfrm45_DoubleList.FormCreate(Sender: TObject);
begin
  // Инициализируем формы
  InitTopForm;
  InitBottomForm;

  // Кладем на панели
  PlaceFormToPanel(FTopForm, paTop);
  PlaceFormToPanel(FBottomForm, paBottom);
end;

procedure Tfrm45_DoubleList.InitBottomForm;
begin
  FBottomForm := nil;
end;

procedure Tfrm45_DoubleList.InitTopForm;
begin
  FTopForm := nil;
end;

procedure Tfrm45_DoubleList.PlaceFormToPanel(const AForm: Tfrm00_Parent;
  const AControl: TWinControl);
begin
  if Assigned(AForm) and Assigned(AControl) then
  begin
    AForm.PlaceToWinControl(AControl);
  end;
end;

procedure Tfrm45_DoubleList.actMoveToTopExecute(Sender: TObject);
begin
//
end;

procedure Tfrm45_DoubleList.actMoveAllToTopExecute(Sender: TObject);
begin
//
end;

procedure Tfrm45_DoubleList.actMoveAllToBottomExecute(Sender: TObject);
begin
//
end;

procedure Tfrm45_DoubleList.actMoveToBottomExecute(Sender: TObject);
begin
//
end;

procedure Tfrm45_DoubleList.MoveRecords(const AMoveType: TMoveType;
  const AMoveAll: Boolean);
var
  I: Integer;
  VFrom: TxxxDBGrid;
  VProc: TMoveProc;
begin
  TopDataSet.DisableControls;
  BottomDataSet.DisableControls;
  try
    // Определяем источник
    if AMoveType = mtToTop then
    begin
      VFrom := BottomDBGrid;
      VProc := OnMoveToTop;
    end else
    begin
      VFrom := TopDBGrid;
      VProc := OnMoveToBottom;
    end;

    // Выделяем все записи
    if AMoveAll then
    begin
      SelectAll(VFrom);
    end;

    // Переносим каждую выделенную запись
    VFrom.SelectedRows.CurrentRowSelected := True;
    for I := 0 to VFrom.SelectedRows.Count - 1 do
    begin
      VFrom.DataSource.DataSet.GotoBookmark(VFrom.SelectedRows.Items[I]);
      VProc;
    end;
    BottomDBGrid.SelectedRows.Clear;
    TopDBGrid.SelectedRows.Clear;

    // обновляем списки
    FTopForm.RefreshAfterListChange;
    FBottomForm.RefreshAfterListChange;
  finally
    TopDataSet.EnableControls;
    BottomDataSet.EnableControls;
  end;
end;

procedure Tfrm45_DoubleList.OnMoveToTop;
begin
  //
end;

procedure Tfrm45_DoubleList.OnMoveToBottom;
begin
  //
end;

procedure Tfrm45_DoubleList.SelectAll(const ADBGrid: TxxxDBGrid);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  // выделяем все записи
  VDataSet := ADBGrid.DataSource.DataSet;
  VSavePlace := VDataSet.GetBookmark;
  try
    VDataSet.First;
    while not VDataSet.Eof do
    begin
      ADBGrid.SelectedRows.CurrentRowSelected := True;
      VDataSet.Next;
    end;
  finally
    VDataSet.GotoBookmark(VSavePlace);
    VDataSet.FreeBookmark(VSavePlace);
  end;
end;

procedure Tfrm45_DoubleList.actMoveToRightExecute(Sender: TObject);
begin
  // переносим запись вниз
  MoveRecords(mtToBottom, False);
end;

procedure Tfrm45_DoubleList.actMoveAllToRightExecute(Sender: TObject);
begin
  // переносим все записи вниз
  MoveRecords(mtToBottom, True);
end;

procedure Tfrm45_DoubleList.actMoveAllToLeftExecute(Sender: TObject);
begin
  // переносим все записи вверх
  MoveRecords(mtToTop, True);
end;

procedure Tfrm45_DoubleList.actMoveToLeftExecute(Sender: TObject);
begin
  // переносим запись вверх
  MoveRecords(mtToTop, False);
end;

function Tfrm45_DoubleList.GetTopDataSet: TOracleDataSet;
begin
  Result := FTopForm.DataSet;
end;

function Tfrm45_DoubleList.GetTopDBGrid: TxxxDBGrid;
begin
  Result := FTopForm.xxxDBGrid;
end;

function Tfrm45_DoubleList.GetBottomDataSet: TOracleDataSet;
begin
  Result := FBottomForm.DataSet;
end;

function Tfrm45_DoubleList.GetBottomDBGrid: TxxxDBGrid;
begin
  Result := FBottomForm.xxxDBGrid;
end;

procedure Tfrm45_DoubleList.actMoveToBottom_Update(Sender: TObject);
var
  VEnabled: Boolean;
begin
  VEnabled := not TopDataSet.IsEmpty;
  actMoveToBottom.Enabled := VEnabled;
  actMoveAllToBottom.Enabled := VEnabled;
end;

procedure Tfrm45_DoubleList.actMoveAllToTop_Update(Sender: TObject);
begin
  actMoveToTop.Enabled := not BottomDataSet.IsEmpty;
  actMoveAllToTop.Enabled := not BottomDataSet.IsEmpty;
end;

procedure Tfrm45_DoubleList.actSelectExecute(Sender: TObject);
begin
  SelectItem;
end;

procedure Tfrm45_DoubleList.SelectItem;
begin
  //
end;

procedure Tfrm45_DoubleList.FormShow(Sender: TObject);
begin
  TopForm.RefreshData('', Unassigned);
  BottomForm.RefreshData('', Unassigned);
end;

end.
