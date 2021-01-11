unit M002_IsuLoadPage2Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm040_LoaderFrame, M002_IsuLoadPage2ProgressFrame,
  A000_ParserExcelDM, A000_FileDescUnt, M001_LoadPage2ProgressFrame;

type
  // парсер для данных ISU
  TM002_IsuLoadPage2 = class(TfmWizardPage)
    Progress: TM002_IsuLoadPage2Progress;
  private
    procedure DoOnLoadFinish(Sender: TObject);
  public
    procedure LoadFile(AFileName: string);
  end;

  TIsu_ParserExcel = class(TA000_ParserExcel)
  protected
    procedure DoOpenFile(const AFileName: string); override;
  public
    procedure FindAllFields(AFields: TFileFields); override;
    procedure GetRowData(AFields: TFileFields); override;
  end;

var
  M002_IsuLoadPage2: TM002_IsuLoadPage2;

implementation

uses M002_IsuLoadWizardFrame, untMessages, dm005_MainData;

{$R *.DFM}

{ TM002_IsuLoadPage2 }

var
  F_FileName: string;
  F_User: string;
  F_FileDate: string;

procedure TM002_IsuLoadPage2.LoadFile(AFileName: string);
begin
  Progress.InitFrame(Self);
  Progress.FileName := AFileName;

  Progress.BeforeProc := 'Pk_405_Inn_Ko_Isu.p_do_before_load_isu';
  Progress.LoadProc := 'Pk_405_Inn_Ko_Isu.p_add_isu_data';
  Progress.AfterProc := 'Pk_405_Inn_Ko_Isu.p_do_after_load_isu';
//  Progress.CancelProc := 'Pk_405_Inn_Ko_Isu.p_rollback_load_inn_ko';

  Progress.OnThreadFinished := DoOnLoadFinish;

  Progress.ParserClass := TIsu_ParserExcel;
  Progress.lbProcessName.Caption := 'Загрузка файла ' + AFileName;

  F_User := dmMain.GetUser;

  Progress.StartProcess;
end;

procedure TM002_IsuLoadPage2.DoOnLoadFinish(Sender: TObject);
begin
  Beep;
//  ShowMessage('Finished!');
  if not Progress.Terminated and not Progress.Error then // Поток не отменен и без ошибок
    TM002_IsuLoadWizard(Wizard).actNextExecute(TM002_IsuLoadWizard(Wizard))
  else if Progress.Error then // Поток не отменен, есть ошибка
    begin
//      TAppMessages.ShowError('Неправильный файл.');
    // Здесь закрыть кнопку Далее
    end
  else if Progress.Terminated then
    TAppMessages.ShowInformation('Операция отменена пользователем.');
end;

{ TIsu_ParserExcel }

procedure TIsu_ParserExcel.DoOpenFile(const AFileName: string);
begin
  inherited;
  if FDataRange.MergeCells = True then
    raise Exception.Create('Файл содержит объединенные ячейки.'#10#13'Загрузка невозможна.');
end;

procedure TIsu_ParserExcel.FindAllFields(AFields: TFileFields);
var
  I, J, K: Integer;
  VValue: string;
  VField: TFileField;
  VFlag: Boolean;
  VFlagDate: boolean;
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
//  inherited;
  // проверяем все ли поля есть в файле Excel
  VFlag := False;
  VFlagDate := False;
  StrHeader := -1;

  for i := 1 to FDataRange.Rows.Count do
    begin
    for J := FDataRange.Column to FDataRange.Columns.Count do
      begin
      // пустые ячейки пропускаем
      VValue := Trim(FExcel.Cell[I, J].Value);
      if VValue = '' then Continue;

      // ищем ячейку 'Дата обновления реестра'
      if VValue = 'Дата обновления реестра' then
        begin
        // ищем в этой строке ячейку с датой
        for K := J + 1 to FDataRange.Columns.Count do
          begin
          VValue := Trim(FExcel.Cell[I, K].Value);
          if VValue <> '' then
            begin
            vDateSeparator := FormatSettings.DateSeparator;
            FormatSettings.DateSeparator := '.';
            vShortDateFormat := FormatSettings.ShortDateFormat;
            FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
            try
              try
                StrToDate(VValue);
              except
                TAppMessages.Error('Неправильный формат даты обновления реестра.');
              end;
            finally
              FormatSettings.DateSeparator := vDateSeparator;
              FormatSettings.ShortDateFormat := vShortDateFormat;
            end;
            F_FileDate := VValue;
            VFlagDate := True;
            break;
            end;
          end;
          Continue;
        end;

      // ищем поле по названию
      VField := AFields.FieldByName(VValue);

      // если это не название поля то пропускаем
      if Assigned(VField) then
        begin
        // нашли строку с названиями полей
        VFlag := True;
        StrHeader := I;
        VField.FieldPos := J;
        end;
      end;

    // если строку с заголовками нашли то выход
    if VFlag then
      begin
//      Exit;
      break;
      end;
    end;

    if VFlagDate = False then
      TAppMessages.Error('Не найдена дата обновления реестра.');
end;

procedure TIsu_ParserExcel.GetRowData(AFields: TFileFields);
var
  i: integer;
begin
  // Пропускаем уже установленные значения переменных (номер строки, имя файла, имя юзера, дата загрузки)
//  inherited;
  // устанавливаем номер строки

  // получаем данные по текущей строке файла Excel
  for i := 0 to AFields.Count - 1 do
    begin
    if AFields[i].ParamName = 'i_T186_LINE_NO' then
      begin
      AFields[i].FieldData := IntToStr(StrNum);
      end
    else if AFields[i].ParamName = 'i_T186_DATA_CHANGE_DATE' then
      begin
      AFields[i].FieldData := F_FileDate;
      end
    else if AFields[i].ParamName = 'i_T186_LOAD_DATE' then
      begin
      AFields[i].FieldData := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      end
    else if AFields[i].ParamName = 'i_T186_LOAD_FILE' then
      begin
      AFields[i].FieldData := F_FileName;
      end
    else if AFields[i].ParamName = 'i_T186_LOAD_USER' then
      begin
      AFields[i].FieldData := F_User;
      end
    else
      if AFields[i].FieldPos <> -1 then
//        AFields[i].FieldData := Copy(FData[StrNum, AFields[i].FieldPos], 1, 255);
        AFields[i].FieldData := Copy(FExcel.Cell[StrNum, AFields[i].FieldPos].Value, 1, 255);
    end;
end;

end.
