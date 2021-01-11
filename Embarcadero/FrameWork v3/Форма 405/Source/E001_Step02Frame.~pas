unit E001_Step02Frame;

interface

uses
  fm031_WizardPageFrame, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm004_ListFrame, fm005_GridFrame, E001_RemainsFrame, ActnList, StdCtrls,
  Controls, ExtCtrls, Classes;

type
  TE001_Step02 = class(TfmWizardPage)
    E001_Remains1: TE001_Remains;
    Label3: TLabel;
    Label4: TLabel;
  private
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  E001_Step02: TE001_Step02;

implementation

uses E001_WizardFrame;

{$R *.DFM}

{ TE001_Step02 }

procedure TE001_Step02.InitFrame(Sender: TObject);
begin
  E001_Remains1.InitFrame(Self);
  Label3.Caption := 'Ã»œ Á‡ ' + TE001_Wizard(Wizard).E001_Step011.E001_Time1.odsListT055_LONG_NAME.AsString;
  Label3.Left := PanelStepCaption.Width - Label3.Width - 24;
  Label4.Caption := '“ËÔ ˆ.·. - ' + TE001_Wizard(Wizard).E001_Step011.E001_TypeSec1.odsListT027_SEC_TYPE.AsString;
  Label4.Left := PanelStepCaption.Width - Label4.Width - 24;

  inherited;
end;

procedure TE001_Step02.DoOnShowPage;
begin
  InitFrame(Self);

  inherited;
end;

end.
