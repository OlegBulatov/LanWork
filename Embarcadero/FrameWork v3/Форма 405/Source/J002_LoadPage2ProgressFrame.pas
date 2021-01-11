unit J002_LoadPage2ProgressFrame;

interface

uses
  fm009_ProgressFrame, Oracle, ExtCtrls, Db, OracleData, ActnList,
  StdCtrls, Gauges, Classes, Controls, Variants, System.Actions;

type
  TJ002_LoadPage2Progress = class(TfmProgress)
    oqCount: TOracleQuery;
    oqResult: TOracleQuery;
  private
    FT180_ID: Double;
  protected
    procedure StepIt; override;
    procedure DoOnExecute(Sender: TObject); override;
    procedure DoOnTerminate(Sender: TObject); override;
  public
    T055_ID_S: Double;
    T055_ID_E: Double;
    LoadN: Boolean;
    LoadR: Boolean;
    procedure StartProcess; override;
    property T180_ID: Double read FT180_ID write FT180_ID;
  end;

var
  J002_LoadPage2Progress: TJ002_LoadPage2Progress;

implementation

uses SysUtils, Forms, dm005_MainData;

{$R *.DFM}

{ TB000_LoadPage2Progress }

procedure TJ002_LoadPage2Progress.StartProcess;
begin
  // Делаем запись о репликации
  oqBeforeProcess.Execute;
  FT180_ID := oqBeforeProcess.GetVariable('T180_ID');

  // устанавливаем макс.счетчик
  oqMaxCount.SetVariable('T055_ID_S', T055_ID_S);
  oqMaxCount.SetVariable('T055_ID_E', T055_ID_E);
  oqMaxCount.Execute;

  MaxCount := 0;
  if LoadN then
    MaxCount := MaxCount + oqMaxCount.GetVariable('N');
  if LoadR then
    MaxCount := MaxCount + oqMaxCount.GetVariable('S');

  // запускаем таймер и выполняем
  inherited;
end;

procedure TJ002_LoadPage2Progress.StepIt;
var
  vCount: Integer;
begin
  inherited;

  oqCount.SetVariable('T180_ID', FT180_ID);
  oqCount.Execute;
  vCount := oqCount.GetVariable('V_COUNT');

  if vCount < 0 then
    begin
    oqResult.SetVariable('T180_ID', FT180_ID);
    oqResult.Execute;
    if not VarIsNull(oqResult.Field(0)) then
      ErrorMessage := oqResult.Field(0);

    EndProcess(nil);
    end
  else
    begin
    lbProgressStep.Caption := 'Загружено отчетов '+IntToStr(vCount)+' из '+IntToStr(MaxCount);

    if MaxCount <> 0 then
      ProgressBar1.Progress :=  Round(vCount / MaxCount * 100);
    end;

  Application.ProcessMessages;
end;

procedure TJ002_LoadPage2Progress.DoOnExecute(Sender: TObject);
begin
  oqThread.SetVariable('T055_ID_S', T055_ID_S);
  oqThread.SetVariable('T055_ID_E', T055_ID_E);

  if LoadN then
    oqThread.SetVariable('LOAD_N', 'Y')
  else
    oqThread.SetVariable('LOAD_N', 'N');

  if LoadR then
    oqThread.SetVariable('LOAD_R', 'Y')
  else
    oqThread.SetVariable('LOAD_R', 'N');

  oqThread.SetVariable('T180_ID', FT180_ID);
  oqThread.SetVariable('USER', dmMain.GetUser);

  inherited;
end;

procedure TJ002_LoadPage2Progress.DoOnTerminate(Sender: TObject);
begin
  StepIt;
end;

end.
