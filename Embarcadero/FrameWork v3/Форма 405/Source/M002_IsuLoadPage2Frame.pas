unit M002_IsuLoadPage2Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm040_LoaderFrame, M002_IsuLoadPage2ProgressFrame,
  A000_ParserExcelDM, A000_FileDescUnt, M001_LoadPage2ProgressFrame;

type
  // ������ ��� ������ ISU
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
  Progress.lbProcessName.Caption := '�������� ����� ' + AFileName;

  F_User := dmMain.GetUser;

  Progress.StartProcess;
end;

procedure TM002_IsuLoadPage2.DoOnLoadFinish(Sender: TObject);
begin
  Beep;
//  ShowMessage('Finished!');
  if not Progress.Terminated and not Progress.Error then // ����� �� ������� � ��� ������
    TM002_IsuLoadWizard(Wizard).actNextExecute(TM002_IsuLoadWizard(Wizard))
  else if Progress.Error then // ����� �� �������, ���� ������
    begin
//      TAppMessages.ShowError('������������ ����.');
    // ����� ������� ������ �����
    end
  else if Progress.Terminated then
    TAppMessages.ShowInformation('�������� �������� �������������.');
end;

{ TIsu_ParserExcel }

procedure TIsu_ParserExcel.DoOpenFile(const AFileName: string);
begin
  inherited;
  if FDataRange.MergeCells = True then
    raise Exception.Create('���� �������� ������������ ������.'#10#13'�������� ����������.');
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
  // ��������� ��� �� ���� ���� � ����� Excel
  VFlag := False;
  VFlagDate := False;
  StrHeader := -1;

  for i := 1 to FDataRange.Rows.Count do
    begin
    for J := FDataRange.Column to FDataRange.Columns.Count do
      begin
      // ������ ������ ����������
      VValue := Trim(FExcel.Cell[I, J].Value);
      if VValue = '' then Continue;

      // ���� ������ '���� ���������� �������'
      if VValue = '���� ���������� �������' then
        begin
        // ���� � ���� ������ ������ � �����
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
                TAppMessages.Error('������������ ������ ���� ���������� �������.');
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

      // ���� ���� �� ��������
      VField := AFields.FieldByName(VValue);

      // ���� ��� �� �������� ���� �� ����������
      if Assigned(VField) then
        begin
        // ����� ������ � ���������� �����
        VFlag := True;
        StrHeader := I;
        VField.FieldPos := J;
        end;
      end;

    // ���� ������ � ����������� ����� �� �����
    if VFlag then
      begin
//      Exit;
      break;
      end;
    end;

    if VFlagDate = False then
      TAppMessages.Error('�� ������� ���� ���������� �������.');
end;

procedure TIsu_ParserExcel.GetRowData(AFields: TFileFields);
var
  i: integer;
begin
  // ���������� ��� ������������� �������� ���������� (����� ������, ��� �����, ��� �����, ���� ��������)
//  inherited;
  // ������������� ����� ������

  // �������� ������ �� ������� ������ ����� Excel
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
