unit C003_FictiveCriteriaInnListForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, C003_FictiveCriteriaInnListFrame;

type
  TC003_FictiveCriteriaInnList = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Grid: TC003_FictiveCriteriaInnListGrid;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  C003_FictiveCriteriaInnList: TC003_FictiveCriteriaInnList;

implementation

{$R *.DFM}

{ TC003_FictiveCriteriaInnList }

constructor TC003_FictiveCriteriaInnList.Create(AOwner: TComponent);
begin
  inherited;
  Grid.InitFrame(Self);
end;

end.
