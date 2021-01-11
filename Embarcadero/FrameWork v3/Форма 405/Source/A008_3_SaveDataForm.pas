unit A008_3_SaveDataForm;

interface

uses
  frm00_ParentForm, frm80_CalcRemainsForm, Oracle, StdCtrls, Mask, DBCtrls,
  Controls, ExtCtrls, Classes, Forms, A001_0_LoadEmitForm;
//  Windows, Messages, Graphics, Dialogs,
//  fm21SepDescriptionFrame,
//  Db, dm005_MainData,

type
  TA008_3_SaveData = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
    cbInsert: TCheckBox;
    cbUpdate: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LInsert: TLabel;
    LUpdate: TLabel;
    cbRollback: TCheckBox;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    LRollback: TLabel;
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
  A008_3_SaveData: TA008_3_SaveData;

implementation

uses
  SysUtils;
{$R *.DFM}

{ Tfrm101_3_SaveData }

class function TA008_3_SaveData.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA008_3_SaveData;
end;

class function TA008_3_SaveData.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A008_3_SaveData;
end;

class procedure TA008_3_SaveData.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A008_3_SaveData) := AForm;
end;

function TA008_3_SaveData.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;

procedure TA008_3_SaveData.DoOnShowPage(const AMainForm: TForm);
begin
  LInsert.Visible := False;
  LUpdate.Visible := False;
  LRollback.Visible := False;
end;

procedure TA008_3_SaveData.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  GetParentForm.CancelBtn.Caption := 'Далее >';
  Applied := True;
end;

procedure TA008_3_SaveData.BtnSaveClick(Sender: TObject);
var
  vCursor: TCursor;
  vInsert: double;
  vUpdate: double;
  vRollback: double;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;

  oqSave.SetVariable('NEW', integer(cbInsert.Checked));
  oqSave.SetVariable('UPDATE', integer(cbUpdate.Checked));
  oqSave.SetVariable('CHANGE', integer(cbRollback.Checked));
  oqSave.Execute;

  vInsert := oqSave.GetVariable('NEW');
  vUpdate := oqSave.GetVariable('UPDATE');
  vRollback := oqSave.GetVariable('CHANGE');

  LInsert.Caption := 'Добавлено ' + FloatToStr(vInsert);
  LUpdate.Caption := 'Обновлено ' + FloatToStr(vUpdate);
  LRollback.Caption := 'Изменено  ' + FloatToStr(vRollback);
  LInsert.Visible := True;
  LUpdate.Visible := True;
  lRollback.Visible := True;

  GetParentForm.CancelBtn.Caption := 'Завершить';
  GetParentForm.OKBtn.Enabled := False;

  Screen.Cursor := vCursor;
end;

end.
