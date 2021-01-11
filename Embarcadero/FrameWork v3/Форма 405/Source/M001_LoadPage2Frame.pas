unit M001_LoadPage2Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm040_LoaderFrame, M001_LoadPage2ProgressFrame,
  A000_ParserExcelDM;

type
  TM001_LoadPage2 = class(TfmWizardPage)
    Progress: TM001_LoadPage2Progress;
  private
    procedure DoOnLoadFinish(Sender: TObject);
  public
    procedure LoadFile(AFileName: string);
  end;

  TA000_ParserExcelNotMerged = class(TA000_ParserExcel)
  protected
    procedure DoOpenFile(const AFileName: string); override;
  end;

var
  M001_LoadPage2: TM001_LoadPage2;

implementation

uses M001_LoadWizardFrame, untMessages;

{$R *.DFM}

{ TM001_LoadPage2 }

procedure TM001_LoadPage2.LoadFile(AFileName: string);
begin
  Progress.InitFrame(Self);
  Progress.FileName := AFileName;

  Progress.BeforeProc := 'Pk_405_Inn_Ko_Isu.p_do_before_load_inn_ko';
  Progress.LoadProc := 'Pk_405_Inn_Ko_Isu.p_add_inn_ko';
  Progress.AfterProc := 'Pk_405_Inn_Ko_Isu.p_do_after_load_inn_ko';
//  Progress.CancelProc := 'Pk_405_Inn_Ko_Isu.p_rollback_load_inn_ko';

  Progress.OnThreadFinished := DoOnLoadFinish;

  Progress.ParserClass := TA000_ParserExcelNotMerged;
  Progress.lbProcessName.Caption := 'Загрузка файла ' + AFileName;

  Progress.StartProcess;
end;

procedure TM001_LoadPage2.DoOnLoadFinish(Sender: TObject);
begin
  Beep;
//  ShowMessage('Finished!');
  if not Progress.Terminated and not Progress.Error then
    TM001_LoadWizard(Wizard).actNextExecute(TM001_LoadWizard(Wizard))
  else
    begin
    if not Progress.Terminated then
      begin
      TAppMessages.ShowError('Неправильный файл.');
      TM001_LoadWizard(Wizard).actBackExecute(TM001_LoadWizard(Wizard));
      end
    else
      TAppMessages.ShowInformation('Операция отменена пользователем.');
    end;
end;

{ TA000_ParserExcelNotMerged }

procedure TA000_ParserExcelNotMerged.DoOpenFile(const AFileName: string);
begin
  inherited;
  if FDataRange.MergeCells = True then
    raise Exception.Create('Файл содержит объединенные ячейки.'#10#13'Загрузка невозможна.');
end;

end.
