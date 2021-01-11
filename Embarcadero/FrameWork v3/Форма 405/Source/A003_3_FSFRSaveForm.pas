unit A003_3_FSFRSaveForm;

interface

uses
  frm00_ParentForm, Forms, Oracle, StdCtrls, Mask, DBCtrls, Controls, ExtCtrls,
  Classes, frm80_CalcRemainsForm, A000_ProcInfoForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , fm21SepDescriptionFrame,
//  Db, OracleData, A001_0_LoadEmitForm, dm005_MainData,
//  A000_ProgessDBForm,

type
  TA003_3_FSFRSave = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  A003_3_FSFRSave: TA003_3_FSFRSave;

implementation

uses untMessages, A003_2_FSFREmitForm, dm005_MainData;

{$R *.DFM}

{ Tfrm101_3_SaveData }

class function TA003_3_FSFRSave.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA003_3_FSFRSave;
end;

class function TA003_3_FSFRSave.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A003_3_FSFRSave;
end;

class procedure TA003_3_FSFRSave.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A003_3_FSFRSave) := AForm;
end;

procedure TA003_3_FSFRSave.DoOnShowPage(const AMainForm: TForm);
begin
  BtnSave.Enabled := True;
end;

procedure TA003_3_FSFRSave.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
end;

procedure TA003_3_FSFRSave.BtnSaveClick(Sender: TObject);
begin
  // сохраняем изменения
  SaveSpark;
end;

procedure TA003_3_FSFRSave.oqSaveThreadFinished(Sender: TOracleQuery);
begin
  dmMain.Commit;
  //FProgress.EndProcess;
end;

procedure TA003_3_FSFRSave.oqSaveThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  dmMain.Rollback;
  FProgress.HaltProcess;
  FProgress.Close;
  TAppMessages.ShowError(ErrorMessage);
  BtnSave.Enabled := True;
end;

procedure TA003_3_FSFRSave.SaveSpark;
begin
  BtnSave.Enabled := False;

  if not Assigned(FProgress) then
  begin
    FProgress := TA000_ProcInfo.Create(Self);
  end;

  FProgress.CreateProcess;

  FProgress.StartProcess (
    'Росстрахнадзор',
    'Подтверждение наличия лицензии ФП', '', 0, 100);

   // запускаем процесс в потоке
  dmMain.StartTransaction;
  oqSave.Execute;
end;

end.
