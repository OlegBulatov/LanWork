unit B000_LoadPage2ProgressFrame;

interface

uses
  fm009_ProgressFrame, Oracle, ExtCtrls, Db, OracleData, ActnList,
  StdCtrls, Gauges, Classes, Controls;
//  Windows, Messages, Graphics, Dialogs,

type
  TB000_LoadPage2Progress = class(TfmProgress)
    oqCount: TOracleQuery;
  private
    FT220_ID: Double;
  protected
    procedure StepIt; override;
    procedure DoOnExecute(Sender: TObject); override;
  public
    T055_ID_S: Double;
    T055_ID_E: Double;
    LoadN: Boolean;
    LoadR: Boolean;
    procedure StartProcess; override;
    property T220_ID: Double read FT220_ID write FT220_ID;
  end;

var
  B000_LoadPage2Progress: TB000_LoadPage2Progress;

implementation

uses SysUtils, Forms, dm005_MainData;

{$R *.DFM}

{ TB000_LoadPage2Progress }

procedure TB000_LoadPage2Progress.StartProcess;
begin
  // Делаем запись о репликации
  oqBeforeProcess.Execute;
  FT220_ID := oqBeforeProcess.GetVariable('T220_ID');

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

procedure TB000_LoadPage2Progress.StepIt;
var
  vCount: Integer;
begin
  inherited;

  oqCount.SetVariable('T220_ID', FT220_ID);
  oqCount.Execute;
  vCount := oqCount.GetVariable('V_COUNT');

  lbProgressStep.Caption := 'Загружено '+IntToStr(vCount)+' из '+IntToStr(MaxCount);

  if MaxCount <> 0 then
    ProgressBar1.Progress :=  Round(vCount / MaxCount * 100);

  Application.ProcessMessages;
end;

procedure TB000_LoadPage2Progress.DoOnExecute(Sender: TObject);
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

  oqThread.SetVariable('T220_ID', FT220_ID);
  oqThread.SetVariable('USER', dmMain.GetUser);

  inherited;
end;

end.
