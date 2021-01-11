unit fm12_ListFrame;

interface

uses
  Windows, fm02_PrmParentFrame, Menus, Db, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls;
//  Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm12_List = class(Tfm02_PrmParent)
    gr01: TxxxDBGrid;
    Label1: TLabel;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure gr01CellClick(Column: TColumn);
    procedure gr01DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm12_List: Tfm12_List;

implementation

uses Forms;
//dm005_MainData;

{$R *.DFM}

procedure Tfm12_List.GetParamsValues;
begin
  inherited;

end;

procedure Tfm12_List.gr01CellClick(Column: TColumn);
begin
  if Column.Index = 0 then
  begin
    gr01.SelectedRows.CurrentRowSelected :=
      not gr01.SelectedRows.CurrentRowSelected;
  end;
end;

procedure Tfm12_List.gr01DrawColumnCell(Sender: TObject;
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
    gr01.Canvas.FillRect(Rect);
    DrawFrameControl(
      gr01.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[gr01.SelectedRows.CurrentRowSelected] or
      DFCS_FLAT
      );
  end;
end;

procedure Tfm12_List.SetParamsValues;
begin
  inherited;

end;

procedure Tfm12_List.N1Click(Sender: TObject);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
  VCursor: TCursor;
begin
  VCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // Выделить все записи
    VDataSet := gr01.DataSource.DataSet;
    VDataSet.DisableControls;
    try
      VSavePlace := VDataSet.GetBookmark;
      try
        VDataSet.First;
        while not VDataSet.Eof do
        begin
          gr01.SelectedRows.CurrentRowSelected := True;
          VDataSet.Next;
        end;
      finally
        VDataSet.GotoBookmark(VSavePlace);
        VDataSet.FreeBookmark(VSavePlace);
      end;
    finally
      VDataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VCursor;
  end;
end;

procedure Tfm12_List.N2Click(Sender: TObject);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
  VCursor: TCursor;
begin
  VCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // Выделить все записи
    VDataSet := gr01.DataSource.DataSet;
    VDataSet.DisableControls;
    try
      VSavePlace := VDataSet.GetBookmark;
      try
        VDataSet.First;
        while not VDataSet.Eof do
        begin
          gr01.SelectedRows.CurrentRowSelected := False;
          VDataSet.Next;
        end;
      finally
        VDataSet.GotoBookmark(VSavePlace);
        VDataSet.FreeBookmark(VSavePlace);
      end;
    finally
      VDataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VCursor;
  end;
end;

end.
