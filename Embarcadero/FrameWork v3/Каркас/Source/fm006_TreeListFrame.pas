unit fm006_TreeListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm006_TreeFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls;

type
  Tfm006_TreeList = class(TfmTree)
    hcTreeColums: THeaderControl;
    procedure hcTreeColumsSectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm006_TreeList: Tfm006_TreeList;

implementation

{$R *.DFM}

procedure Tfm006_TreeList.hcTreeColumsSectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
begin
  tvList.Invalidate;
end;

end.
