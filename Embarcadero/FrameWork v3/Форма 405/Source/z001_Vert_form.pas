unit z001_Vert_form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, z001_Vert_frame;

type
  Tz001_VertForm = class(TForm)
    z001_Vert1: Tz001_Vert;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z001_VertForm: Tz001_VertForm;

implementation

{$R *.DFM}

procedure Tz001_VertForm.Button1Click(Sender: TObject);
begin
close;
end;

end.
