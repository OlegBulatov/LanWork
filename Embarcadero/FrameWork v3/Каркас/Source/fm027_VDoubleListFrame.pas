unit fm027_VDoubleListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, RXSplit, ExtCtrls;

type
  Tfm027_VDoubleList = class(TfmParent)
    PanelLeft: TPanel;
    Splitter1: TRxSplitter;
    PanelTop: TPanel;
    PanelRight: TPanel;
    PanelBottom: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm027_VDoubleList: Tfm027_VDoubleList;

implementation

{$R *.DFM}

end.
