unit F005_LinksStep2Frame;

interface

uses
  fm031_WizardPageFrame, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, F005_LinksStep2GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  ActnList, StdCtrls, ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
//  fm010_FilteredGridFrame, F005_LinksStep2GridFrame;

type
  TF005_LinksStep2 = class(TfmWizardPage)
    Grid: TF005_LinksStep2Grid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  F005_LinksStep2: TF005_LinksStep2;

implementation

{$R *.DFM}

{ TF005_LinksStep2 }

procedure TF005_LinksStep2.DoOnShowPage(const AType: TMoveType);
begin
  InitFrame(Self);
  inherited;
end;

procedure TF005_LinksStep2.InitFrame(Sender: TObject);
begin
  Grid.InitFrame(Sender);
  inherited;
end;

end.
