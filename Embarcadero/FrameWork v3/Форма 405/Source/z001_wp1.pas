unit z001_wp1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, z001_p1, ActnList, StdCtrls, ExtCtrls,
  Oracle,untInterfaces, Menus, fm030_WizardFrame;

type
  Tz001_wp1frame = class(TfmWizardPage)
    Grid: Tz001_p1_frame;
    oqLoadKO: TOracleQuery;
    oqClean: TOracleQuery;
    actLoadKOS: TAction;
    actClean: TAction;
    oqLoadKOS: TOracleQuery;
    actLoadKO: TAction;
    actClean1: TAction;
    oqClean1: TOracleQuery;
   // procedure actCleanExecute(Sender: TObject);
    procedure actLoadKOSExecute(Sender: TObject);
//    procedure actCleanExecute(Sender: TObject);
    procedure actLoadKOExecute(Sender: TObject);
//    procedure actClean1Execute(Sender: TObject);
    procedure z001_p1_frame1actSelectAllRowsExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z001_wp1frame: Tz001_wp1frame;

implementation

uses db, z001_Tabs;

{$R *.DFM}

// Загрузка выбранных отчетов
procedure Tz001_wp1frame.actLoadKOSExecute(Sender: TObject);
var
  OldCursor: TCursor;
  vT002_id:  double;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  Grid.odsList.DisableControls;
  vT002_ID := Grid.odsListT002_ID.AsFloat;
  Grid.odsList.First;
  while not Grid.odsList.Eof do
    if (Grid.odsListT093_CAN_LOAD.AsString = 'Y') then
      begin
      oqLoadKO.SetVariable('T002_ID', Grid.odsListT002_ID.AsFloat);
      oqLoadKO.Execute;
      Grid.odsList.Next;
      end
    else
      Grid.odsList.Next;

  Grid.odsList.EnableControls;
  Grid.odsList.Refresh;
  Grid.odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
  Screen.Cursor := OldCursor;
end;

{procedure Tz001_wp1frame.actCleanExecute(Sender: TObject);
 // inherited;
 var
  i: Integer;
  vT002_id:  double;
begin
  with z001_p1_frame1 do
    begin
    odsList.DisableControls;
    vT002_ID := odsListT002_ID.AsFloat;
    odsList.First;
    while not odsList.Eof do
   if odsListT093_CAN_LOAD.AsString = 'Z' then
      begin
       oqClean.SetVariable('I_T002',z001_p1_frame1.odsListT002_ID.AsFloat);
       oqClean.Execute;
       odsList.Next;
      end
      else
      odsList.Next;
    odsList.EnableControls;
    z001_p1_frame1.odsList.Refresh;
    odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
    end;
  end;
 }

// Загрузка текущего отчета
procedure Tz001_wp1frame.actLoadKOExecute(Sender: TObject);
var
  vT002_id:  double;
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  Grid.odsList.DisableControls;
  vT002_ID := Grid.odsListT002_ID.AsFloat;
  oqLoadKO.SetVariable('T002_ID', vT002_ID);
  oqLoadKO.Execute;
  Grid.odsList.EnableControls;
  Grid.odsList.Refresh;
  Grid.odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
  Screen.Cursor := OldCursor;
end;
{
procedure Tz001_wp1frame.actClean1Execute(Sender: TObject);
var
  vT002_id:  double;
begin
  vT002_ID := z001_p1_frame1.odsListT002_ID.AsFloat;
  oqClean.SetVariable('I_T002',vT002_ID);
  oqClean.Execute;
  z001_p1_frame1.odsList.Refresh;
  z001_p1_frame1.odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
end;
}
procedure Tz001_wp1frame.z001_p1_frame1actSelectAllRowsExecute(
  Sender: TObject);
begin
  inherited;
  Grid.actSelectAllRowsExecute(Sender);
end;

end.
