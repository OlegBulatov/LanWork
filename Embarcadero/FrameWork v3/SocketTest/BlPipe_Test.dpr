program BlPipe_Test;

uses
  Forms,
  Dialogs,
  ScktComp in 'scktcomp.pas',
  BlpConsts in 'BlpConsts.pas',
  blpapi_inc in '..\BlPipe_S\Source\blpapi_inc.pas',
  BlpClient in 'BlpClient.pas',
  BlpLog in 'BlpLog.pas',
  Bloomberg in 'Bloomberg.pas',
  BlpApi in 'BlpApi.pas',
  BlpData in 'BlpData.pas',
  BlpListener in 'BlpListener.pas',
  BlpDm in 'BlpDm.pas' {BlpDb: TDataModule},
  ListenerMainForm in 'ListenerMainForm.pas' {FormMain},
  ProcModule in 'ProcModule.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Bl_Pipe_Test';
  // Именно такой порядок!!!
  Application.CreateForm(TBlpDb, BlpDb);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
