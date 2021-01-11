unit frm103_NkdCalcEdit;

interface

uses Forms, StdCtrls, Classes, Controls;

// Windows, SysUtils, Graphics
//  Buttons, ExtCtrls;

type
  Tfrm103_NkdCalcEditForm = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    rbAll: TRadioButton;
    rbAbsent: TRadioButton;
    rbSelected: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm103_NkdCalcEditForm: Tfrm103_NkdCalcEditForm;

implementation

{$R *.DFM}

end.
