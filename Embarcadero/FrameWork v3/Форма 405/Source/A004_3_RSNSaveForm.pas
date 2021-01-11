unit A004_3_RSNSaveForm;

interface

uses
  frm00_ParentForm, Forms, Oracle, StdCtrls, Mask, DBCtrls, Controls, ExtCtrls,
  Classes, frm80_CalcRemainsForm, A000_ProcInfoForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , fm21SepDescriptionFrame,
//  Db, OracleData, A001_0_LoadEmitForm, dm005_MainData,
//  A000_ProgessDBForm,

type
  TA004_3_RSNSave = class(Tfrm00_Parent, TCalcStepPage)
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
  A004_3_RSNSave: TA004_3_RSNSave;

implementation

uses untMessages, A004_2_RSNEmitForm, dm005_MainData;

{$R *.DFM}

{ Tfrm101_3_SaveData }

class function TA004_3_RSNSave.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA004_3_RSNSave;
end;

class function TA004_3_RSNSave.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A004_3_RSNSave;
end;

class procedure TA004_3_RSNSave.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A004_3_RSNSave) := AForm;
end;

procedure TA004_3_RSNSave.DoOnShowPage(const AMainForm: TForm);
begin
  BtnSave.Enabled := True;
end;

procedure TA004_3_RSNSave.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
end;

procedure TA004_3_RSNSave.BtnSaveClick(Sender: TObject);
begin
  // сохраняем изменения
  SaveSpark;
end;

procedure TA004_3_RSNSave.oqSaveThreadFinished(Sender: TOracleQuery);
begin
  dmMain.Commit;
  //FProgress.EndProcess;
end;

procedure TA004_3_RSNSave.oqSaveThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  dmMain.Rollback;
  FProgress.HaltProcess;
  FProgress.Close;
  TAppMessages.ShowError(ErrorMessage);
  BtnSave.Enabled := True;
end;

procedure TA004_3_RSNSave.SaveSpark;
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
