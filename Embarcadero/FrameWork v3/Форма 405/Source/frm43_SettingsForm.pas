unit frm43_SettingsForm;

interface

uses
  frm00_ParentForm, frm42_ClassificationForm, Oracle, Db, OracleData,
  Controls, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, Classes, Forms;
//  Windows, Messages, Graphics, Dialogs,

type
  Tfrm43_Settings = class(Tfrm00_Parent, TStepPage)
    odsParams: TOracleDataSet;
    dsParams: TDataSource;
    odsParamsT065_ID: TFloatField;
    odsParamsT055_ID: TFloatField;
    oqUpdate: TOracleQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    odsParamsT065_KO_LIMIT_01: TFloatField;
    odsParamsT065_KO_LIMIT_02: TFloatField;
    odsParamsT065_KO_LIMIT_03: TFloatField;
    odsParamsT065_KO_BALL_01_Y: TFloatField;
    odsParamsT065_KO_BALL_01_N: TFloatField;
    odsParamsT065_KO_BALL_02_Y: TFloatField;
    odsParamsT065_KO_BALL_02_N: TFloatField;
    odsParamsT065_KO_BALL_03_Y: TFloatField;
    odsParamsT065_KO_BALL_03_N: TFloatField;
    odsParamsT065_KO_BALL_04_Y: TFloatField;
    odsParamsT065_KO_BALL_04_N: TFloatField;
    odsParamsT065_KO_BALL_05_Y: TFloatField;
    odsParamsT065_KO_BALL_05_N: TFloatField;
    odsParamsT065_REZ_BALL_01_Y: TFloatField;
    odsParamsT065_REZ_BALL_01_N: TFloatField;
    odsParamsT065_REZ_BALL_02_Y: TFloatField;
    odsParamsT065_REZ_BALL_02_N: TFloatField;
    odsParamsT065_REZ_BALL_03_Y: TFloatField;
    odsParamsT065_REZ_BALL_03_N: TFloatField;
    odsParamsT065_REZ_BALL_04_Y: TFloatField;
    odsParamsT065_REZ_BALL_04_N: TFloatField;
    odsParamsT065_REZ_BALL_05_Y: TFloatField;
    odsParamsT065_REZ_BALL_05_N: TFloatField;
    odsParamsT065_REZ_BALL_06_Y: TFloatField;
    odsParamsT065_REZ_BALL_06_N: TFloatField;
    odsParamsT065_REZ_BALL_07_Y: TFloatField;
    odsParamsT065_REZ_BALL_07_N: TFloatField;
    odsParamsT065_REZ_BALL_08_Y: TFloatField;
    odsParamsT065_REZ_BALL_08_N: TFloatField;
    odsParamsT065_REZ_BALL_10_Y: TFloatField;
    odsParamsT065_REZ_BALL_10_N: TFloatField;
    odsParamsT065_REZ_BALL_11_Y: TFloatField;
    odsParamsT065_REZ_BALL_11_N: TFloatField;
    odsParamsT065_REZ_BALL_12_Y: TFloatField;
    odsParamsT065_REZ_BALL_12_N: TFloatField;
    odsParamsT065_REZ_BALL_13_Y: TFloatField;
    odsParamsT065_REZ_BALL_13_N: TFloatField;
    odsParamsT065_SECTYPE_LIMIT_01: TFloatField;
    odsParamsT065_SECTYPE_LIMIT_02: TFloatField;
    odsParamsT065_SECTYPE_BALL_01_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_01_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_02_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_02_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_03_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_03_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_04_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_04_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_05_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_05_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_06_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_06_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_07_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_07_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_08_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_08_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_09_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_09_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_10_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_10_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_11_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_11_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_12_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_12_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_13_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_13_N: TFloatField;
    odsParamsT065_SECTYPE_BALL_14_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_14_N: TFloatField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    Label24: TLabel;
    ed03: TDBEdit;
    ed04: TDBEdit;
    Label25: TLabel;
    ed05: TDBEdit;
    ed06: TDBEdit;
    Label26: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ed11: TDBEdit;
    ed12: TDBEdit;
    ed13: TDBEdit;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ed37: TDBEdit;
    Panel1: TPanel;
    Label36: TLabel;
    ed07: TDBEdit;
    ed08: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    ed09: TDBEdit;
    ed10: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    ed14: TDBEdit;
    ed15: TDBEdit;
    Label46: TLabel;
    ed16: TDBEdit;
    ed17: TDBEdit;
    Label47: TLabel;
    ed18: TDBEdit;
    ed19: TDBEdit;
    Label48: TLabel;
    ed20: TDBEdit;
    ed21: TDBEdit;
    Label49: TLabel;
    ed22: TDBEdit;
    ed23: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    ed24: TDBEdit;
    ed25: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    ed26: TDBEdit;
    ed27: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    ed28: TDBEdit;
    ed29: TDBEdit;
    Label56: TLabel;
    Label59: TLabel;
    ed32: TDBEdit;
    ed33: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    ed34: TDBEdit;
    ed35: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    ed36: TDBEdit;
    ed70: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    ed39: TDBEdit;
    ed38: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ed40: TDBEdit;
    ed41: TDBEdit;
    ed43: TDBEdit;
    ed42: TDBEdit;
    ed44: TDBEdit;
    ed45: TDBEdit;
    ed47: TDBEdit;
    ed46: TDBEdit;
    ed50: TDBEdit;
    ed51: TDBEdit;
    ed52: TDBEdit;
    ed53: TDBEdit;
    ed54: TDBEdit;
    ed55: TDBEdit;
    ed56: TDBEdit;
    ed57: TDBEdit;
    ed58: TDBEdit;
    ed59: TDBEdit;
    ed60: TDBEdit;
    ed61: TDBEdit;
    ed62: TDBEdit;
    ed63: TDBEdit;
    ed64: TDBEdit;
    ed65: TDBEdit;
    ed66: TDBEdit;
    ed67: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    ed68: TDBEdit;
    ed69: TDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    ed71: TDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    ed48: TDBEdit;
    ed49: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    ed72: TDBEdit;
    Label85: TLabel;
    odsParamsT065_SECTYPE_LIMIT_03: TFloatField;
    odsParamsT065_SECTYPE_BALL_15_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_15_N: TFloatField;
    Label86: TLabel;
    ed74: TDBEdit;
    ed75: TDBEdit;
    Label87: TLabel;
    odsParamsT065_SECTYPE_BALL_16_Y: TFloatField;
    odsParamsT065_SECTYPE_BALL_16_N: TFloatField;
    procedure odsParamsApplyRecord(Sender: TOracleDataSet;
      Action: Char; var Applied: Boolean; var NewRowId: String);
  private
  protected

    procedure WriteLogOnEdit();
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
  end;

var
  frm43_Settings: Tfrm43_Settings;

implementation

uses SysUtils, dm005_MainData, Matrix, A00_MatrixConst;

{$R *.DFM}

{ Tfrm43_Settings }

class function Tfrm43_Settings.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm43_Settings;
end;

class function Tfrm43_Settings.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm43_Settings;
end;

class procedure Tfrm43_Settings.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm43_Settings) := AForm;
end;

procedure Tfrm43_Settings.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим настройки работы алгоритмов
  odsParams.Close;
  odsParams.SetVariable(
    'T055_ID',
    Tfrm42_Classification(AMainForm).T055_ID
    );
  odsParams.Open;
end;

procedure Tfrm43_Settings.DoOnClosePage(const AMainForm: TForm);
var
  VOldCursor: TCursor;
begin
  if dsParams.State in [dsEdit] then
  begin
    VOldCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      dmMain.StartTransaction;
      try
        oqUpdate.SetVariable('T055_ID', Tfrm42_Classification(AMainForm).T055_ID);
        oqUpdate.SetVariable('T065_KO_LIMIT_01', odsParams['T065_KO_LIMIT_01']);
        oqUpdate.SetVariable('T065_KO_LIMIT_02', odsParams['T065_KO_LIMIT_02']);
        oqUpdate.SetVariable('T065_KO_LIMIT_03', odsParams['T065_KO_LIMIT_03']);
        oqUpdate.SetVariable('T065_KO_BALL_01_Y', odsParams['T065_KO_BALL_01_Y']);
        oqUpdate.SetVariable('T065_KO_BALL_01_N', odsParams['T065_KO_BALL_01_N']);
        oqUpdate.SetVariable('T065_KO_BALL_02_Y', odsParams['T065_KO_BALL_02_Y']);
        oqUpdate.SetVariable('T065_KO_BALL_02_N', odsParams['T065_KO_BALL_02_N']);
        oqUpdate.SetVariable('T065_KO_BALL_03_Y', odsParams['T065_KO_BALL_03_Y']);
        oqUpdate.SetVariable('T065_KO_BALL_03_N', odsParams['T065_KO_BALL_03_N']);
        oqUpdate.SetVariable('T065_KO_BALL_04_Y', odsParams['T065_KO_BALL_04_Y']);
        oqUpdate.SetVariable('T065_KO_BALL_04_N', odsParams['T065_KO_BALL_04_N']);
        oqUpdate.SetVariable('T065_KO_BALL_05_Y', odsParams['T065_KO_BALL_05_Y']);
        oqUpdate.SetVariable('T065_KO_BALL_05_N', odsParams['T065_KO_BALL_05_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_01_Y', odsParams['T065_REZ_BALL_01_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_01_N', odsParams['T065_REZ_BALL_01_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_02_Y', odsParams['T065_REZ_BALL_02_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_02_N', odsParams['T065_REZ_BALL_02_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_03_Y', odsParams['T065_REZ_BALL_03_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_03_N', odsParams['T065_REZ_BALL_03_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_04_Y', odsParams['T065_REZ_BALL_04_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_04_N', odsParams['T065_REZ_BALL_04_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_05_Y', odsParams['T065_REZ_BALL_05_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_05_N', odsParams['T065_REZ_BALL_05_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_06_Y', odsParams['T065_REZ_BALL_06_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_06_N', odsParams['T065_REZ_BALL_06_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_07_Y', odsParams['T065_REZ_BALL_07_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_07_N', odsParams['T065_REZ_BALL_07_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_08_Y', odsParams['T065_REZ_BALL_08_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_08_N', odsParams['T065_REZ_BALL_08_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_10_Y', odsParams['T065_REZ_BALL_10_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_10_N', odsParams['T065_REZ_BALL_10_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_11_Y', odsParams['T065_REZ_BALL_11_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_11_N', odsParams['T065_REZ_BALL_11_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_12_Y', odsParams['T065_REZ_BALL_12_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_12_N', odsParams['T065_REZ_BALL_12_N']);
        oqUpdate.SetVariable('T065_REZ_BALL_13_Y', odsParams['T065_REZ_BALL_13_Y']);
        oqUpdate.SetVariable('T065_REZ_BALL_13_N', odsParams['T065_REZ_BALL_13_N']);
        oqUpdate.SetVariable('T065_SECTYPE_LIMIT_01', odsParams['T065_SECTYPE_LIMIT_01']);
        oqUpdate.SetVariable('T065_SECTYPE_LIMIT_02', odsParams['T065_SECTYPE_LIMIT_02']);
        oqUpdate.SetVariable('T065_SECTYPE_LIMIT_03', odsParams['T065_SECTYPE_LIMIT_03']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_01_Y', odsParams['T065_SECTYPE_BALL_01_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_01_N', odsParams['T065_SECTYPE_BALL_01_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_02_Y', odsParams['T065_SECTYPE_BALL_02_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_02_N', odsParams['T065_SECTYPE_BALL_02_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_03_Y', odsParams['T065_SECTYPE_BALL_03_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_03_N', odsParams['T065_SECTYPE_BALL_03_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_04_Y', odsParams['T065_SECTYPE_BALL_04_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_04_N', odsParams['T065_SECTYPE_BALL_04_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_05_Y', odsParams['T065_SECTYPE_BALL_05_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_05_N', odsParams['T065_SECTYPE_BALL_05_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_06_Y', odsParams['T065_SECTYPE_BALL_06_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_06_N', odsParams['T065_SECTYPE_BALL_06_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_07_Y', odsParams['T065_SECTYPE_BALL_07_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_07_N', odsParams['T065_SECTYPE_BALL_07_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_08_Y', odsParams['T065_SECTYPE_BALL_08_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_08_N', odsParams['T065_SECTYPE_BALL_08_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_09_Y', odsParams['T065_SECTYPE_BALL_09_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_09_N', odsParams['T065_SECTYPE_BALL_09_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_10_Y', odsParams['T065_SECTYPE_BALL_10_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_10_N', odsParams['T065_SECTYPE_BALL_10_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_11_Y', odsParams['T065_SECTYPE_BALL_11_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_11_N', odsParams['T065_SECTYPE_BALL_11_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_12_Y', odsParams['T065_SECTYPE_BALL_12_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_12_N', odsParams['T065_SECTYPE_BALL_12_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_13_Y', odsParams['T065_SECTYPE_BALL_13_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_13_N', odsParams['T065_SECTYPE_BALL_13_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_14_Y', odsParams['T065_SECTYPE_BALL_14_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_14_N', odsParams['T065_SECTYPE_BALL_14_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_15_Y', odsParams['T065_SECTYPE_BALL_15_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_15_N', odsParams['T065_SECTYPE_BALL_15_N']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_16_Y', odsParams['T065_SECTYPE_BALL_16_Y']);
        oqUpdate.SetVariable('T065_SECTYPE_BALL_16_N', odsParams['T065_SECTYPE_BALL_16_N']);
        oqUpdate.Execute;

        if dmMain.UseMatrix then
        begin
          WriteLogOnEdit;
        end;
        odsParams.Cancel;
        odsParams.Close;
        odsParams.Open;

        dmMain.Commit;
      except
        on E: Exception do
        begin
          dmMain.Rollback;
          E.Message := Format('Ошибка сохранения изменений!' + #13#10 + '%s', [E.Message]);
          raise;
        end;
      end;
    finally
      Screen.Cursor:= VOldCursor;
    end;
  end;
end;

procedure Tfrm43_Settings.odsParamsApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  // DoInsert, DoEdit, DoDelete
  Applied := True;
end;

procedure Tfrm43_Settings.WriteLogOnEdit();
begin
  // вызываем процедуру вставки лога изменения записи
  Matrix.MA.WriteToLog2(CHANGE_CLASS_PARAMS, true, '');
end;

end.
