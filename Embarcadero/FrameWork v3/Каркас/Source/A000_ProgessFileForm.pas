unit A000_ProgessFileForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Gauges, Db, OracleData, Oracle, 
  A000_ProgessForm;

type
  TThreads = class of TThread;

  TA000_ProgessFile = class(TA000_Progess)
  private
    procedure SetRecordSaved(const Value: Integer);
    procedure SetRecordCount(const Value: Integer);
    procedure SetFileName(const Value: string);
  public
    property FileName: string write SetFileName;
    property RecordSaved: Integer write SetRecordSaved;
    property RecordCount: Integer write SetRecordCount;
  end;

var
  A000_ProgessFile: TA000_ProgessFile;

implementation

resourcestring
  SFileName =
    'Файл: %s';
  SRecProgress =
    'Количество обработанных записей: %d из  %d';
  SErrorLoad =
    'Ошибка при загрузке файла! Строка %s! %s';

{$R *.DFM}

{ TA000_Progess }

procedure TA000_ProgessFile.SetFileName(const Value: string);
begin
  Label2.Caption := 'Файл: ' +  ExtractFileName(Value);
end;

procedure TA000_ProgessFile.SetRecordCount(const Value: Integer);
begin
  ProgressBar1.MaxValue := Value;
  SetRecordSaved(0);
end;

procedure TA000_ProgessFile.SetRecordSaved(const Value: Integer);
begin
  ProgressBar1.Progress := Value;
  Label1.Caption := Format(SRecProgress, [Value, ProgressBar1.MaxValue]);
end;

end.
