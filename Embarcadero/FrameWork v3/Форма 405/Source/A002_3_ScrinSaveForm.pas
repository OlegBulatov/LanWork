unit A002_3_ScrinSaveForm;

interface

uses
  frm00_ParentForm, frm80_CalcRemainsForm, Oracle, StdCtrls, Mask, DBCtrls,
  Controls, ExtCtrls, Classes, Forms, A001_0_LoadEmitForm;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , StdCtrls, , fm21SepDescriptionFrame,
//  Db, OracleData, DBCtrls, , Oracle, dm005_MainData,
//  ExtCtrls, Mask;

type
  TA002_3_ScrinSave = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox4: TCheckBox;
    procedure BtnSaveClick(Sender: TObject);
  private
  protected
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function GetParentForm: TA001_0_LoadEmit;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  A002_3_ScrinSave: TA002_3_ScrinSave;

implementation

uses A001_2_SparkEmitForm;

{$R *.DFM}

{ Tfrm101_3_SaveData }

class function TA002_3_ScrinSave.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA002_3_ScrinSave;
end;

class function TA002_3_ScrinSave.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A002_3_ScrinSave;
end;

class procedure TA002_3_ScrinSave.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A002_3_ScrinSave) := AForm;
end;

function TA002_3_ScrinSave.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;

procedure TA002_3_ScrinSave.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure TA002_3_ScrinSave.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  GetParentForm.CancelBtn.Caption := 'Далее >';
  Applied := True;
end;

procedure TA002_3_ScrinSave.BtnSaveClick(Sender: TObject);
begin
  inherited;

  oqSave.Execute;
  GetParentForm.CancelBtn.Caption := 'Завершить';
  GetParentForm.OKBtn.Enabled := False;
end;

end.
