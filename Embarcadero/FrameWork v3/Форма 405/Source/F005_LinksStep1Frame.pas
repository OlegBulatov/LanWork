unit F005_LinksStep1Frame;

interface

uses
  fm031_WizardPageFrame, F005_LinksStep1GridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  fm010_FilteredGridFrame, ActnList, StdCtrls, Controls, ExtCtrls, Classes;

type
  TF005_LinksStep1 = class(TfmWizardPage)
    Grid: TF005_LinksStep1Grid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  F005_LinksStep1: TF005_LinksStep1;

implementation

{$R *.DFM}

{ TF005_LinksStep1 }

procedure TF005_LinksStep1.DoOnShowPage(const AType: TMoveType);
begin
  if not Initialized then
    begin
    InitFrame(Self);
    end
  else
    begin
    if AType = mtNext then
      begin
      Grid.OldKeyFieldValue := Grid.odsListT028_ID.AsFloat;
      Grid.RefreshDataAfterChange;
      end;
    end;
  inherited;
end;

procedure TF005_LinksStep1.InitFrame(Sender: TObject);
begin
  Grid.InitFrame(nil);
  inherited;
end;

end.
