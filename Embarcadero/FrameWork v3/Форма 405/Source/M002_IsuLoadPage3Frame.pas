unit M002_IsuLoadPage3Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls,
  fm000_Parent, M002_IsuLoadPage3GridFrame, fm010_FilteredGridFrame,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame;

type
  TM002_IsuLoadPage3 = class(TfmWizardPage)
    Grid: TM002_IsuLoadPage3Grid;
  public
    procedure InitFrame(Sender: TObject); override;

    procedure DoOnShowPage(const AType: TMoveType); override;
    procedure DoOnClosePage(const AType: TMoveType); override;
  end;

var
  M002_IsuLoadPage3: TM002_IsuLoadPage3;

implementation

{$R *.DFM}

{ TM002_IsuLoadPage2 }

procedure TM002_IsuLoadPage3.InitFrame(Sender: TObject);
begin
  Grid.InitFrame(Self);
  inherited;
end;

procedure TM002_IsuLoadPage3.DoOnShowPage(const AType: TMoveType);
begin
  // показываем загруженные данные
  Grid.RefreshData;
end;


procedure TM002_IsuLoadPage3.DoOnClosePage(const AType: TMoveType);
begin
  inherited;
//
end;


end.
