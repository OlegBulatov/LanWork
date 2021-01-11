unit M002_IsuListHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  M002_IsuListHistoryGridFrame, StdCtrls, ExtCtrls;

type
  TM002_IsuListHistory = class(TForm)
    Grid: TM002_IsuListHistoryGrid;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; AT185_ID: Double); reintroduce;
  end;

var
  M002_IsuListHistory: TM002_IsuListHistory;

implementation

{$R *.DFM}

constructor TM002_IsuListHistory.Create(AOwner: TComponent; AT185_ID: Double);
begin
  inherited Create(AOwner);
  Grid.FT185_ID := AT185_ID;
end;

procedure TM002_IsuListHistory.FormCreate(Sender: TObject);
begin
  Grid.InitFrame(Self);
end;

end.
