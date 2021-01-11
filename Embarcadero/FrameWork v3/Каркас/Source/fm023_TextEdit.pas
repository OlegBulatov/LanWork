unit fm023_TextEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm001_Composite, StdCtrls, Mask, DBCtrls;

type
  TfmTextEdit = class(TfmComposite)
    lbCaption: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTextEdit: TfmTextEdit;

implementation

{$R *.DFM}

end.
