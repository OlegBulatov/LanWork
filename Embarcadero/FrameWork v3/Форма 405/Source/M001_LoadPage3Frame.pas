unit M001_LoadPage3Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  fm010_FilteredGridFrame, M001_LoadPage3GridFrame, Oracle;

type
  TM001_LoadPage3 = class(TfmWizardPage)
    Grid: TM001_LoadPage3Grid;
  private
  public
    procedure InitFrame(Sender: TObject); override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  M001_LoadPage3: TM001_LoadPage3;

implementation

uses
  M001_LoadWizardFrame, A000_File2DbDM, A000_FileDescUnt, A000_ParserExcelDM;

{$R *.DFM}

{ TM001_LoadPage2 }

procedure TM001_LoadPage3.InitFrame(Sender: TObject);
begin
  Grid.InitFrame(Self);
  inherited;
end;

procedure TM001_LoadPage3.DoOnShowPage(const AType: TMoveType);
begin
  // показываем загруженные данные
  Grid.RefreshData;
end;

end.
