unit fm007_MasterListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm004_ListFrame, Db, OracleData, Menus, Oracle, ActnList, ComCtrls,
  ToolWin, ExtCtrls,
  fm003_FilterFrame,
  fm000_Parent, StdCtrls;

type
  Tfm007_MasterList = class(TfmList)
    Panel1: TPanel;
    pc01: TPageControl;
    ts01: TTabSheet;
    tlbShowDetail: TToolButton;
    procedure actShowDetailExecute(Sender: TObject);
  private
  protected
    //
    function ShowDetailDefault: Boolean; virtual;
    procedure ShowDetail(const AVisible: Boolean);
  public
  end;

var
  fm007_MasterList: Tfm007_MasterList;

implementation

{$R *.DFM}

procedure Tfm007_MasterList.actShowDetailExecute(Sender: TObject);
begin
//  ShowDetail(not actShowDetail.Checked);
end;

procedure Tfm007_MasterList.ShowDetail(const AVisible: Boolean);
begin
(*
  actShowDetail.Checked := AVisible;
  if Visible then
  begin
    Panel1.Top := 1000000;
  end;
  Panel1.Visible := AVisible;
*)  
end;

function Tfm007_MasterList.ShowDetailDefault: Boolean;
begin
  // по умолчанию детализация не скрыта
  Result := True;
end;

end.
