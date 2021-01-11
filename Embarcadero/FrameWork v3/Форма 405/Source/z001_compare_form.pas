unit z001_compare_form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  z001_compare_frame, StdCtrls;

type
  Tz001_CompareForm = class(TForm)
    z001_compare1: Tz001_compare;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  z001_CompareForm: Tz001_CompareForm;

implementation

{$R *.DFM}

procedure Tz001_CompareForm.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure Tz001_CompareForm.Button2Click(Sender: TObject);
begin

// showmessage( z001_compare.odsList.DataSource.DataSet..odsListT002_ID.AsString +' : '+  z001_p2_frame1.odsListSEC_ID.AsString);
end;

end.
