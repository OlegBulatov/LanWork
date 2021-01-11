unit z_tst_form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  z_tst_fm;

type
  Tz_tst = class(TForm)
    fmGrid21: TfmGrid2;
    procedure fmGrid1actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z_tst: Tz_tst;

implementation

{$R *.DFM}

procedure Tz_tst.fmGrid1actRefreshExecute(Sender: TObject);
begin
 // fmGrid1.actRefreshExecute(Sender);

end;

end.
