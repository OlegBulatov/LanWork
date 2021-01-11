unit M001_InnKoHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, M001_InnKoHistoryListFrame;

type
  TM001_InnKoHistoryList = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Grid: TM001_InnKoHistoryGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; AT183_ID: Double); reintroduce;
  end;

var
  M001_InnKoHistoryList: TM001_InnKoHistoryList;

implementation

{$R *.DFM}

{ TM001_InnKoHistoryList }

constructor TM001_InnKoHistoryList.Create(AOwner: TComponent;  AT183_ID: Double);
begin
  inherited Create(AOwner);
  Grid.FT183_ID := AT183_ID;
end;

procedure TM001_InnKoHistoryList.FormCreate(Sender: TObject);
begin
  Grid.InitFrame(Self);
end;

end.
