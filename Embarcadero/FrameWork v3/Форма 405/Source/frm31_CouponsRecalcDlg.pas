unit frm31_CouponsRecalcDlg;

interface

uses
  Forms, StdCtrls, Controls, Classes, ExtCtrls;
// Windows, SysUtils, Graphics,
//  Buttons,

type
  Tfrm31_CouponsRecalc = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    rb1: TRadioButton;
    rb3: TRadioButton;
    rb2: TRadioButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm31_CouponsRecalc: Tfrm31_CouponsRecalc;

implementation

{$R *.DFM}

procedure Tfrm31_CouponsRecalc.FormCreate(Sender: TObject);
begin
  rb1.Checked := TRUE;
end;


end.
