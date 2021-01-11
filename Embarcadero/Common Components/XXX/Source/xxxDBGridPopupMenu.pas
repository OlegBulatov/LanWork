unit xxxDBGridPopupMenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, ImgList, dbGrids;

type
  TPopupMenuLink = class(TPersistent)
  private
  public
  end;

  TdmGrid = class(TDataModule)
    alActionList: TActionList;
    pmPopupMenu: TPopupMenu;
    actSortAcs: TAction;
    actSortDesc: TAction;
    gfhgfhd1: TMenuItem;
    N1: TMenuItem;
    dfgdsfg1: TMenuItem;
    dfgfds1: TMenuItem;
    actHideColumn: TAction;
    actShowColumnsSelector: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    actAlignLeft: TAction;
    actAlignRight: TAction;
    actAlignCenter: TAction;
    actColumnAutoSize: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ilImageList: TImageList;
    actAutoFilter: TAction;
    N9: TMenuItem;
    miAutoFilter: TMenuItem;
    actAdvFilter: TAction;
    N10: TMenuItem;
    actFilterBySelect: TAction;
    fdgdf1: TMenuItem;
    procedure actShowColumnsSelectorExecute(Sender: TObject);
    procedure actSortAcsExecute(Sender: TObject);
    procedure actSortDescExecute(Sender: TObject);
    procedure actHideColumnExecute(Sender: TObject);
    procedure actAlignLeftExecute(Sender: TObject);
    procedure actAlignRightExecute(Sender: TObject);
    procedure actAlignCenterExecute(Sender: TObject);
    procedure actColumnAutoSizeExecute(Sender: TObject);
    procedure actAutoFilterExecute(Sender: TObject);
    procedure actAdvFilterExecute(Sender: TObject);
    procedure actAutoFilterUpdate(Sender: TObject);
    procedure actFilterBySelectExecute(Sender: TObject);
    procedure actFilterBySelectUpdate(Sender: TObject);
  private
    FColumn: TColumn;
    function GetImageList: TImageList;
    procedure SetImageList(const Value: TImageList); // колонка над которой всплывающее меню
  protected
    function GetDBGrid: TDBGrid; virtual;
  public
    property DBGrid: TDBGrid read GetDBGrid;
    property Column: TColumn read FColumn write FColumn;
  published
    property ImageList: TImageList read GetImageList write SetImageList;
  end;

var
  dmGrid: TdmGrid;

implementation

{$R *.DFM}

uses xxxDBGrid, frmColumnSelector, frmFilterList;

procedure TdmGrid.actShowColumnsSelectorExecute(Sender: TObject);
var
  VColSelectForm: TfrmColumnSelectorForm;
begin
  // выбор отображаемых колонок
  VColSelectForm := TfrmColumnSelectorForm.Instance;
  VColSelectForm.DBGrid := Self.DBGrid;
  VColSelectForm.ShowModal;
end;

procedure TdmGrid.actSortAcsExecute(Sender: TObject);
begin
  // должно устанавливается при создании
  TxxxDBGrid(DBGrid).SortByField(FColumn.Field, astAsc);
end;

procedure TdmGrid.actSortDescExecute(Sender: TObject);
begin
  // должно устанавливается при создании
  TxxxDBGrid(DBGrid).SortByField(FColumn.Field, astDesc);
end;

procedure TdmGrid.actHideColumnExecute(Sender: TObject);
begin
  // должно устанавливается при создании
  FColumn.Visible := False;
  TxxxDBGrid(DBGrid).SetColumnHidden(FColumn.FieldName, True);
end;

procedure TdmGrid.actAlignLeftExecute(Sender: TObject);
begin
  // выравнивание по левому краю
  FColumn.Alignment :=  taLeftJustify;
end;

procedure TdmGrid.actAlignRightExecute(Sender: TObject);
begin
  // выравнивание по правому краю
  FColumn.Alignment := taRightJustify;
end;

procedure TdmGrid.actAlignCenterExecute(Sender: TObject);
begin
  // выравнивание по середине
  FColumn.Alignment := taCenter;
end;

procedure TdmGrid.actColumnAutoSizeExecute(Sender: TObject);
begin
  // должно устанавливается при создании
  TxxxDBGrid(DBGrid).ColumnAutoSize(FColumn);
end;

function TdmGrid.GetDBGrid: TDBGrid;
begin
  Result := TDBGrid(Owner);
end;

procedure TdmGrid.actAutoFilterExecute(Sender: TObject);
begin
  // показать/скрыть автофильтр
  with TxxxDBGrid(DBGrid) do
  begin
    AutoFilter := not AutoFilter;
    if not AutoFilter then
    begin
      Refresh;
    end;
  end;
end;

procedure TdmGrid.actAdvFilterExecute(Sender: TObject);
begin
  // отображаем список условий
  with TfrmFilterListForm.Create(nil) do
  begin
    DBGrid := TxxxDBGrid(Self.DBGrid);
    ShowModal;
    Free;
  end;
  TxxxDBGrid(DBGrid).MainDataSet.Refresh;
end;

procedure TdmGrid.actAutoFilterUpdate(Sender: TObject);
begin
  actAutoFilter.Checked := TxxxDBGrid(DBGrid).AutoFilter;
end;

function TdmGrid.GetImageList: TImageList;
begin
  Result := ilImageList;
end;

procedure TdmGrid.SetImageList(const Value: TImageList);
begin
  ilImageList := Value;
end;

procedure TdmGrid.actFilterBySelectExecute(Sender: TObject);
begin
  // фильруем по выделенному значению
  TxxxDBGrid(DBGrid).FilterBySelect;
end;

procedure TdmGrid.actFilterBySelectUpdate(Sender: TObject);
begin
  actFilterBySelect.Checked := TxxxDBGrid(DBGrid).IsFilterBySelectActive;
end;

end.
