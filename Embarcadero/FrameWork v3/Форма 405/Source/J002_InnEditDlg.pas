unit J002_InnEditDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TJ002_InnEdit = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    ed01: TEdit;
    Label1: TLabel;
    ed02: TMemo;
    Label2: TLabel;
    btnFind: TButton;
    cbOneRecord: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_InnEdit: TJ002_InnEdit;

implementation

{$R *.DFM}

end.
