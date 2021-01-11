unit fm025_MemoEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm001_Composite, StdCtrls, Mask, DBCtrls, ComCtrls, DBDateTimePicker;

type
  TfmMemoEdit = class(TfmComposite)
    lbCaption: TLabel;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemoEdit: TfmMemoEdit;

implementation

{$R *.DFM}

end.
