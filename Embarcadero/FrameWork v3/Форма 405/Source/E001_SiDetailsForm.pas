unit E001_SiDetailsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame,
  fm005_GridFrame, E001_SiDetailsFrame;

type
  TE001_SiDetails = class(TForm)
    Panel1: TPanel;
    btnClose: TButton;
    Grid: TE001_SiDetailsGrid;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; AT027_ID, AT028_ID: Double; AOnDate: TDateTime); reintroduce;
  end;

var
  E001_SiDetails: TE001_SiDetails;

implementation

{$R *.DFM}

{ TE001_SiDetails }

constructor TE001_SiDetails.Create(AOwner: TComponent; AT027_ID, AT028_ID: Double; AOnDate: TDateTime);
begin
  inherited Create(AOwner);

  Grid.odsList.SetVariable('T027_ID', AT027_ID);
  Grid.odsList.SetVariable('T028_ID', AT028_ID);
  Grid.FOnDate := AOnDate; 
  Grid.InitFrame(Self);
end;

end.
