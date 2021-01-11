unit B004_Step01Frame;

interface

uses
  fm031_WizardPageFrame, B004_IssuersFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes;

type
  TB004_Step01 = class(TfmWizardPage)
    B004_Issuers1: TB004_Issuers;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  B004_Step01: TB004_Step01;

implementation

{$R *.DFM}

{ TB004_Step01 }

procedure TB004_Step01.DoOnShowPage;
begin
  if not Self.Initialized then
    InitFrame(Self);
  inherited;
end;

procedure TB004_Step01.InitFrame(Sender: TObject);
begin
  B004_Issuers1.InitFrame(nil);
  inherited;
end;

end.
