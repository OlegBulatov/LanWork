unit B004_Step02Frame;

interface

uses
  fm031_WizardPageFrame, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, B004_EmissionsFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TB004_Step02 = class(TfmWizardPage)
    B004_Emissions1: TB004_Emissions;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  B004_Step02: TB004_Step02;

implementation

{$R *.DFM}

{ TB004_Step02 }

procedure TB004_Step02.DoOnShowPage;
begin
  InitFrame(Self);
  inherited;
end;

procedure TB004_Step02.InitFrame(Sender: TObject);
begin
  B004_Emissions1.InitFrame(nil);
  inherited;
end;

end.
