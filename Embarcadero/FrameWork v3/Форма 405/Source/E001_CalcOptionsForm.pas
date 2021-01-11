unit E001_CalcOptionsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm03_DialogForm, frm00_ParentForm, ActnList, StdCtrls, ExtCtrls;

type
  TE001_CalcOptions = class(Tfrm03_Dialog)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  E001_CalcOptions: TE001_CalcOptions;

implementation

{$R *.DFM}

{ TE001_CalcOptions }

class function TE001_CalcOptions.GetSelfClass: Tfrm00_Parents;
begin
  Result := TE001_CalcOptions;
end;

class function TE001_CalcOptions.GetSelfForm: Tfrm00_Parent;
begin
  Result := E001_CalcOptions;
end;

class procedure TE001_CalcOptions.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(E001_CalcOptions) := AForm;
end;

end.
