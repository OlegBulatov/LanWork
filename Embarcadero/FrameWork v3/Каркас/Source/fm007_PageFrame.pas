unit fm007_PageFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm004_ListFrame, Menus, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCGrids,
  ActnList, Oracle, Db, OracleData;

type
  Tfm007_Page = class(TfmList)
    DBCtrlGrid1: TDBCtrlGrid;
  private
  protected
    procedure LinkDataList; override;
  public
    { Public declarations }
  end;

var
  fm007_Page: Tfm007_Page;

implementation

{$R *.DFM}

{ Tfm007_Page }

procedure Tfm007_Page.LinkDataList;
begin
  inherited;

  DBCtrlGrid1.DataSource := DataSource;
end;

end.
