unit F001_Step01Frame;

interface

uses
  fm031_WizardPageFrame, Dialogs, StdCtrls, Buttons, F001_TimeFrame, Forms,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, ActnList, Controls, ExtCtrls, Classes;
//  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
//  ActnList, , ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame,
//  , Buttons;

type
  TF001_Step01 = class(TfmWizardPage)
    F001_Time1: TF001_Time;
    Label3: TLabel;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
  private
    function GetLoadPathCode: string;
    function GetLoadPath: string;
    function GetT055_ID: Double;
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
    //
    property LoadPathCode: string read GetLoadPathCode;
    //
    property T055_ID: Double read GetT055_ID;
    property LoadPath: string read GetLoadPath;
  end;

var
  F001_Step01: TF001_Step01;

implementation

uses SysUtils, dm005_MainData;

{$R *.DFM}

procedure TF001_Step01.DoOnShowPage;
begin
  InitFrame(Self);
  inherited;
end;

function TF001_Step01.GetLoadPath: string;
begin
  Result := edPath.Text;
end;

function TF001_Step01.GetLoadPathCode: string;
begin
  Result := 'ND_FOLDER_PATH';
end;

function TF001_Step01.GetT055_ID: Double;
begin
  Result := F001_Time1.KeyValueFloat;
end;

procedure TF001_Step01.InitFrame(Sender: TObject);
begin
  edPath.Text := dmMain.GetSetting(LoadPathCode);

  F001_Time1.InitFrame(Self);
  
  inherited;
end;

procedure TF001_Step01.SpeedButton1Click(Sender: TObject);
begin
  // опеределяем путь к файлам
  if edPath.Text = '' then
  begin
    OpenDialog.InitialDir := dmMain.GetSetting(LoadPathCode);
  end else
  begin
    OpenDialog.InitialDir := edPath.Text;
  end;

  // запрашиваем у пользователя
  if OpenDialog.Execute then
  begin
    edPath.Text := ExtractFilePath(OpenDialog.FileName);
    dmMain.SetSetting(LoadPathCode,  edPath.Text);
  end;
end;

end.
