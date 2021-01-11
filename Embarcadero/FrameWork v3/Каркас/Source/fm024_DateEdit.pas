unit fm024_DateEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm001_Composite, StdCtrls, Mask, DBCtrls, ComCtrls, DBDateTimePicker;

type
  TfmDateEdit = class(TfmComposite)
    lbCaption: TLabel;
    dt01: TDBDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDateEdit: TfmDateEdit;

implementation

{$R *.DFM}

end.
