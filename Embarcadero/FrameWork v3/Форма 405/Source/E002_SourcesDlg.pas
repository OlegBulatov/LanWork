unit E002_SourcesDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, E002_SourcesGridFrame;

type
  TE002_Sources = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Grid: TE002_SourcesGrid;
  private
    { Private declarations }
  public
  end;

var
  E002_Sources: TE002_Sources;

implementation

{$R *.DFM}

end.
