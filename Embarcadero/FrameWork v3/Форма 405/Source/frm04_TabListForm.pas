unit frm04_TabListForm;

interface

uses
//  Windows,
//  Messages,
//  SysUtils,
  Classes,
//  Graphics,
  Forms,
//  Dialogs,
  ExtCtrls, frm04_ListForm, ComCtrls, Oracle, Db, OracleData, Menus, ActnList,
  StdCtrls, fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, frm04_TabListItemForm, frm00_ParentForm, System.Actions;
//  fm31_FilterFrame;

type
  Tfrm04_TabList = class(Tfrm04_List)
    Splitter1: TSplitter;
    Panel1: TPanel;
    pc01: TPageControl;
    ts01: TTabSheet;
    actShowDetail: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure actShowDetailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOldHeight: Integer;
    FListItem: Tfrm04_TabListItem;
  protected
    procedure SetSelected(const Value: Boolean); override;
    //
    function ShowDetailDefault: Boolean; virtual;
    procedure ShowDetail(const AVisible: Boolean);
    //
    function GetListItem: Tfrm04_TabListItem; virtual;
    procedure PlaceFormToWinControl(const AForm: Tfrm00_Parent; const AControl: TWinControl);
  public
    property ListItem: Tfrm04_TabListItem read FListItem write FListItem;
  end;

var
  frm04_TabList: Tfrm04_TabList;

implementation

{$R *.DFM}

procedure Tfrm04_TabList.PlaceFormToWinControl(const AForm: Tfrm00_Parent; const AControl: TWinControl);
begin
  AForm.PlaceToWinControl(AControl);
end;

procedure Tfrm04_TabList.FormShow(Sender: TObject);
begin
  inherited;

  // проверка
  if GetListItem = nil then Exit;
//  if Assigned(FListItem) then Exit;

  // инициализируем и кладем на панель
  FListItem := GetListItem;
  FListItem.Master := odsList;
  PlaceFormToWinControl(FListItem, pc01.Pages[0]);
end;

function Tfrm04_TabList.GetListItem: Tfrm04_TabListItem;
begin
  Result := nil;
end;

procedure Tfrm04_TabList.actShowDetailExecute(Sender: TObject);
begin
  ShowDetail(not actShowDetail.Checked);
end;

procedure Tfrm04_TabList.FormCreate(Sender: TObject);
begin
  inherited;
  // запоминаем высоту грида
  FOldHeight := xxxDBGrid.Height;

  // скрываем/отображаем детализацию
  ShowDetail(ShowDetailDefault);
end;

function Tfrm04_TabList.ShowDetailDefault: Boolean;
begin
  // по умолчанию детализация скрыта
  Result := True;
end;

procedure Tfrm04_TabList.ShowDetail(const AVisible: Boolean);
begin
  actShowDetail.Checked := AVisible;
  if Visible then
  begin
    Panel1.Top := 1000000;
  end;
  Panel1.Visible := AVisible;
end;

procedure Tfrm04_TabList.SetSelected(const Value: Boolean); 
begin
  inherited SetSelected(Value);
  ShowDetail(not Value);
end;

end.
