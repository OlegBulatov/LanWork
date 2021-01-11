unit ClientMainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BlpClient, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FClient: TBlpClient;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses BlpData;

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FClient := TBlpClient.Create(Self);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FClient.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  vRequest: TRequestData;
  vResult:  integer;
  vResultData: string;
begin
  vRequest := TRequestData.Create;

  vResult := FClient.RequestDirect(vRequest, vResultData);

  ShowMessage(IntToStr(vResult) + ': ' + vResultData);
  vRequest.Free;
end;

end.
