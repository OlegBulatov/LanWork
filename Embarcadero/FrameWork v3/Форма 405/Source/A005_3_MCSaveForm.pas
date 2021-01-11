unit A005_3_MCSaveForm;

interface

uses
  frm00_ParentForm, Forms, Oracle, StdCtrls, Mask, DBCtrls, Controls, ExtCtrls,
  Classes, frm80_CalcRemainsForm, A000_ProcInfoForm, A001_0_LoadEmitForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , fm21SepDescriptionFrame,
//  Db, OracleData, , dm005_MainData,
//  A000_ProgessDBForm,

type
  TA005_3_MCSave = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
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
  A005_3_MCSave: TA005_3_MCSave;

implementation

uses untMessages, A005_2_MCEmitForm, dm005_MainData;

{$R *.DFM}

{ Tfrm101_3_SaveData }

class function TA005_3_MCSave.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA005_3_MCSave;
end;

class function TA005_3_MCSave.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A005_3_MCSave;
end;

class procedure TA005_3_MCSave.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A005_3_MCSave) := AForm;
end;

function TA005_3_MCSave.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;

procedure TA005_3_MCSave.DoOnShowPage(const AMainForm: TForm);
begin
  BtnSave.Enabled := True;
end;

procedure TA005_3_MCSave.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  GetParentForm.CancelBtn.Caption := 'Далее >';
  Applied := True;
end;

procedure TA005_3_MCSave.BtnSaveClick(Sender: TObject);
begin
  // сохраняем изменения
  SaveSpark;
end;

procedure TA005_3_MCSave.oqSaveThreadFinished(Sender: TOracleQuery);
begin
  dmMain.Commit;
  //FProgress.EndProcess;
end;

procedure TA005_3_MCSave.oqSaveThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  dmMain.Rollback;
  FProgress.HaltProcess;
  FProgress.Close;
  TAppMessages.ShowError(ErrorMessage);
  BtnSave.Enabled := True;
end;

procedure TA005_3_MCSave.SaveSpark;
begin
  BtnSave.Enabled := False;

  if chbOth.Checked then
  begin
    oqSave.SetVariable('i_upd', 'Y');
  end else
  begin
    oqSave.SetVariable('i_upd', 'N');
  end;

  if not Assigned(FProgress) then
  begin
    FProgress := TA000_ProcInfo.Create(Self);
  end;

  FProgress.CreateProcess;

  FProgress.StartProcess (
    'Внесение изменений',
    'Внесение изменений в реестр эмитентов', '', 0, 100);

   // запускаем процесс в потоке
  dmMain.StartTransaction;
  oqSave.Execute;
end;

end.
