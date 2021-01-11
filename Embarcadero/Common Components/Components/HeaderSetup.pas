unit HeaderSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBFix, Db, DBTables, StdCtrls, Buttons, Header, ComCtrls;

type
  TfmSetupHeader = class(TForm)
    Label1: TLabel;
    lbHeaders: TListBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edFirstCol: TEdit;
    Label3: TLabel;
    edLastCol: TEdit;
    Label4: TLabel;
    edText: TMemo;
    butAdd: TButton;
    butDel: TButton;
    butApply: TButton;
    procedure butAddClick(Sender: TObject);
    procedure butApplyClick(Sender: TObject);
    procedure lbHeadersClick(Sender: TObject);
    procedure butDelClick(Sender: TObject);
  private
    { Private declarations }
    FHeaders : THeaders;

    procedure ReadList;
  public
    { Public declarations }

    constructor CreateProperty( AComponent : TComponent; header : THeaders );
  end;

var
  fmSetupHeader: TfmSetupHeader;

implementation

{$R *.DFM}

constructor TfmSetupHeader.CreateProperty(AComponent: TComponent;
  header: THeaders);
begin
  inherited Create(AComponent);
  FHeaders := header;
  ReadList;
end;

procedure TfmSetupHeader.butAddClick(Sender: TObject);
begin
  FHeaders.Add;
  ReadList;
end;

procedure TfmSetupHeader.ReadList;
var
  i : Integer;
  str : string;
begin
  lbHeaders.Clear;
  for i := 0 to FHeaders.Count - 1 do begin
    str := 'Header_' + IntToStr(i);
    lbHeaders.Items.Add(str);
  end;
end;

procedure TfmSetupHeader.butApplyClick(Sender: TObject);
begin
  if lbHeaders.ItemIndex > -1 then begin
    FHeaders[lbHeaders.ItemIndex].FFirstCol := StrToInt(edFirstCol.Text);
    FHeaders[lbHeaders.ItemIndex].FLastCol := StrToInt(edLastCol.Text);
    FHeaders[lbHeaders.ItemIndex].FText := edText.Text;
  end;
end;

procedure TfmSetupHeader.lbHeadersClick(Sender: TObject);
begin
  if lbHeaders.ItemIndex > -1 then begin
    edFirstCol.Text := IntToStr(FHeaders[lbHeaders.ItemIndex].FFirstCol);
    edLastCol.Text := IntToStr(FHeaders[lbHeaders.ItemIndex].FLastCol);
    edText.Text := FHeaders[lbHeaders.ItemIndex].FText;
  end;
end;

procedure TfmSetupHeader.butDelClick(Sender: TObject);
begin
  if lbHeaders.ItemIndex > -1 then begin
    FHeaders.Delete(lbHeaders.ItemIndex);
    ReadList;
  end;
end;

end.
