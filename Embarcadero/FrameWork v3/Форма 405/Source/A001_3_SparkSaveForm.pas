unit A001_3_SparkSaveForm;

interface

uses
  frm00_ParentForm, frm80_CalcRemainsForm, Forms, Oracle, StdCtrls, Mask,
  DBCtrls, Controls, ExtCtrls, Classes, A000_ProcInfoForm, A001_0_LoadEmitForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  , fm21SepDescriptionFrame,
//  Db, OracleData, dm005_MainData,
//  A000_ProgessDBForm,  ;

type
  Tfrm101_3_SaveData = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
    chbNew: TCheckBox;
    chbReg: TCheckBox;
    chbInd: TCheckBox;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    chbOth: TCheckBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure BtnSaveClick(Sender: TObject);
    procedure oqSaveThreadFinished(Sender: TOracleQuery);
    procedure oqSaveThreadError(Sender: TOracleQuery; ErrorCode: Integer;
      const ErrorMessage: String);
  private
    FProgress: TA000_ProcInfo;
    procedure SaveSpark;
  protected
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function GetParentForm: TA001_0_LoadEmit;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  frm101_3_SaveData: Tfrm101_3_SaveData;

implementation

uses dm005_MainData, untMessages;

//uses A001_2_SparkEmitForm

{$R *.DFM}

{ Tfrm101_3_SaveData }

class function Tfrm101_3_SaveData.GetSelfClass(): Tfrm00_Parents;
begin
  Result := Tfrm101_3_SaveData;
end;

class function Tfrm101_3_SaveData.GetSelfForm(): Tfrm00_Parent;
begin
  Result := frm101_3_SaveData;
end;

class procedure Tfrm101_3_SaveData.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm101_3_SaveData) := AForm;
end;

function Tfrm101_3_SaveData.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;

procedure Tfrm101_3_SaveData.DoOnShowPage(const AMainForm: TForm);
begin
  BtnSave.Enabled := True;
end;

procedure Tfrm101_3_SaveData.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  GetParentForm.CancelBtn.Caption := 'Далее >';
  Applied := True;
end;

procedure Tfrm101_3_SaveData.BtnSaveClick(Sender: TObject);
begin
  // сохраняем изменения
  SaveSpark;
end;

procedure Tfrm101_3_SaveData.oqSaveThreadFinished(Sender: TOracleQuery);
begin
  dmMain.Commit;
  //FProgress.EndProcess;
end;

procedure Tfrm101_3_SaveData.oqSaveThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  dmMain.Rollback;
  FProgress.HaltProcess;
  FProgress.Close;
  TAppMessages.ShowError(ErrorMessage);
  BtnSave.Enabled := True;
end;

procedure Tfrm101_3_SaveData.SaveSpark;
begin
  BtnSave.Enabled := False;

  // Y - добавляеть новые компании, N - нет
  if chbNew.Checked then
  begin
    oqSave.SetVariable('i_add_new', 'Y');
  end else
  begin
    oqSave.SetVariable('i_add_new', 'N');
  end;
  // Y - обновлять регион, N - нет
  if chbReg.Checked then
  begin
    oqSave.SetVariable('i_upd_reg', 'Y');
  end else
  begin
    oqSave.SetVariable('i_upd_reg', 'N');
  end;
  // Y - обновлять отрасль, N - нет
  if chbInd.Checked then
  begin
    oqSave.SetVariable('i_upd_ind', 'Y');
  end else
  begin
    oqSave.SetVariable('i_upd_ind', 'N');
  end;
  //  Y - обновлять прочие поля, N - нет
  if chbOth.Checked then
  begin
    oqSave.SetVariable('i_upd_oth', 'Y');
  end else
  begin
    oqSave.SetVariable('i_upd_oth', 'N');
  end;

  if not Assigned(FProgress) then
  begin
    FProgress := TA000_ProcInfo.Create(Self);
  end;

  FProgress.CreateProcess;

  FProgress.StartProcess (
    'Внесение изменений СПАРК',
    'Внесение изменений в реестр эмитентов', '', 0, 100);

   // запускаем процесс в потоке
  dmMain.StartTransaction;
  oqSave.Execute;
end;

end.
