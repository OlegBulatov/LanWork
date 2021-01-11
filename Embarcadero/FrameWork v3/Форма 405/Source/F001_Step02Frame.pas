unit F001_Step02Frame;

interface

uses
  fm031_WizardPageFrame, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, F001_FilesFrame, ActnList, StdCtrls,
  Controls, ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TF001_Step02 = class(TfmWizardPage)
    F001_Files1: TF001_Files;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  F001_Step02: TF001_Step02;

implementation

{$R *.DFM}

{ TF001_Step02 }

procedure TF001_Step02.DoOnShowPage;
begin
  F001_Files1.InitFrame(Self);

  inherited;
end;

procedure TF001_Step02.InitFrame(Sender: TObject);
begin
  InitFrame(Self);
  inherited;
end;

end.
