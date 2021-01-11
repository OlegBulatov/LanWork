unit C003_FictiveCriteriaForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, xxxDbLookupCheckCombo, Db, OracleData, Oracle,
  ActnList;

type
  TC003_FictiveCriteria = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    cbInnInList: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    cbRezType: TCheckBox;
    lcbRezType: TxxxDBLookupCheckCombo;
    cbDirection: TCheckBox;
    cbSecType: TCheckBox;
    lcbSecType: TxxxDBLookupCheckCombo;
    cbSum: TCheckBox;
    cbbSumSign: TComboBox;
    edSum: TEdit;
    cbOpCode: TCheckBox;
    lcbOpCode: TxxxDBLookupCheckCombo;
    odsRezType: TOracleDataSet;
    dsRezType: TDataSource;
    odsSecType: TOracleDataSet;
    dsSecType: TDataSource;
    odsOpCode: TOracleDataSet;
    dsOpCode: TDataSource;
    odsInn: TOracleDataSet;
    cbNotFictive: TCheckBox;
    cbFictive: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cbUnderQuestion: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    stCount: TStaticText;
    ActionList1: TActionList;
    actView: TAction;
    dlgLoad: TOpenDialog;
    oqSet: TOracleQuery;
    lcbDirection: TxxxDBLookupCheckCombo;
    odsDirection: TOracleDataSet;
    dsDirection: TDataSource;
    oqInnKoErrors: TOracleQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actViewUpdate(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    F_InnCount: integer;
    F_Loading: boolean;
    //
    procedure LoadSettings;
    procedure SaveSettings;
    procedure LoadFile(AFileName: string);
    function  GetInnCount: integer;
  public
    FDataSelect: string;
  end;

var
  C003_FictiveCriteria: TC003_FictiveCriteria;

implementation

uses
  dm005_MainData, dm007_Settings, Registry, A000_File2DbDM, A000_FileDescUnt,
  A000_ParserExcelDM, C003_FictiveCriteriaInnListForm;

{$R *.DFM}

procedure TC003_FictiveCriteria.FormCreate(Sender: TObject);
begin
  F_Loading := False;
  F_InnCount := 0;

  // Ставим настройки по умолчанию
  cbNotFictive.Checked := True;
  cbInnInList.Checked := True;
  cbRezType.Checked := True;
  odsRezType.Open;
  lcbRezType.SetDefaults([3,4]); // ФЛ, ИП
  cbDirection.Checked := True;
  odsDirection.Open;
//  lcbDirection.KeyValue := 1; // Из России
  lcbDirection.KeyValue := 0; // В Россию - изменено по просьбе Харлашина 06.02.2020
  cbSecType.Checked := True;
  odsSecType.Open;
  lcbSecType.SetDefaults([31,5,186,6]); // SHS8, BON1, BON11, BON2
  cbSum.Checked := True;
  cbbSumSign.ItemIndex := 0; // <
  edSum.Text := '600000';
  cbOpCode.Checked := True;
  odsOpCode.Open;
  lcbOpCode.SetDefaults([2,3]); // Операции 12 и 13
  cbFictive.Checked := True;
  cbUnderQuestion.Checked := True;

  // Загружаем сохраненные настройки
  LoadSettings;

  //Проверяем, что реестр КО не имеет ошибок
  oqInnKoErrors.Execute;
  if oqInnKoErrors.Field('HAS_ERRORS') <> 0 then
    begin
    cbUnderQuestion.Checked := False;
    cbUnderQuestion.Enabled := False;
    Label4.Font.Color := clRed;
    Label4.Caption := Label4.Caption + ' - Реестр КО содержит ошибки. Проверка условия невозможна.';
    end;
{
Старые:
  Требуется оценка
  Фиктивная
  Реальная
  Не оценивать

Новые:
  Нефиктивная
  Фиктивная
  Под вопросом
}
end;


procedure TC003_FictiveCriteria.LoadSettings;
begin
  // Список ИНН
  F_InnCount := GetInnCount;
  stCount.Caption := IntToStr(F_InnCount);

  // Настройки критериев
  dmSettings.LoadSetting(cbNotFictive, Self);
  dmSettings.LoadSetting(cbInnInList, Self);
  dmSettings.LoadSetting(cbRezType, Self);
  dmSettings.LoadSetting(lcbRezType, Self);
  dmSettings.LoadSetting(cbDirection, Self);
  dmSettings.LoadSetting(lcbDirection, Self);
  dmSettings.LoadSetting(cbSecType, Self);
  dmSettings.LoadSetting(lcbSecType, Self);
  dmSettings.LoadSetting(cbSum, Self);
  dmSettings.LoadSetting(cbbSumSign, Self);
  dmSettings.LoadSetting(edSum, Self);
  dmSettings.LoadSetting(cbOpCode, Self);
  dmSettings.LoadSetting(lcbOpCode, Self);
  dmSettings.LoadSetting(cbFictive, Self);
  dmSettings.LoadSetting(cbUnderQuestion, Self);
end;

procedure TC003_FictiveCriteria.SaveSettings;
begin
  dmMain.StartTransaction;
  try
    dmSettings.ClearSettings(Self, Self);
    dmSettings.SaveSetting(cbNotFictive, Self);
    dmSettings.SaveSetting(cbInnInList, Self);
    dmSettings.SaveSetting(cbRezType, Self);
    dmSettings.SaveSetting(lcbRezType, Self);
    dmSettings.SaveSetting(cbDirection, Self);
    dmSettings.SaveSetting(lcbDirection, Self);
    dmSettings.SaveSetting(cbSecType, Self);
    dmSettings.SaveSetting(lcbSecType, Self);
    dmSettings.SaveSetting(cbSum, Self);
    dmSettings.SaveSetting(cbbSumSign, Self);
    dmSettings.SaveSetting(edSum, Self);
    dmSettings.SaveSetting(cbOpCode, Self);
    dmSettings.SaveSetting(lcbOpCode, Self);
    dmSettings.SaveSetting(cbFictive, Self);
    dmSettings.SaveSetting(cbUnderQuestion, Self);
    dmMain.Commit;
  except
    dmMain.Rollback;
    raise;
  end;
end;

procedure TC003_FictiveCriteria.actViewUpdate(Sender: TObject);
begin
  actView.Enabled := (F_InnCount <> 0);
end;

procedure TC003_FictiveCriteria.actViewExecute(Sender: TObject);
var
  vForm: TC003_FictiveCriteriaInnList;
begin
  vForm := TC003_FictiveCriteriaInnList.Create(Self);
  vForm.ShowModal;
  vForm.Free;
end;

procedure TC003_FictiveCriteria.Button4Click(Sender: TObject);
begin
  Button4.Enabled := False;
  try
    dlgLoad.InitialDir := dmSettings.GetRegSetting('LoadPathInnForCriteria');
    if dlgLoad.Execute then
      begin
      LoadFile(dlgLoad.FileName);
      dmSettings.SaveRegSetting('LoadPathInnForCriteria', ExtractFilePath(dlgLoad.FileName));
      end;
  finally
    Button4.Enabled := True;
  end;
  F_InnCount := GetInnCount;
  stCount.Caption := IntToStr(F_InnCount);
end;

procedure TC003_FictiveCriteria.LoadFile(AFileName: string);
const
  FILE_FIELD: array[0..1, 0..2] of string =
    (
    ('i_T226_COMPANY_INN',        'Y', 'ИНН крупных компаний'),
    ('i_T226_COMPANY_NAME',       'Y', 'Наименование компании')
    );

var
  i: integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // загружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := AFileName;
    VLoader.BeforeProcName := 'Pk_Class_Utils.p_do_before_load_inn';
    VLoader.ProcName := 'Pk_Class_Utils.p_add_file_data';
//    VLoader.AfterProcName := 'Pk_405_Inn_Ko_Isu.p_do_after_load_isu';
//    VLoader.ParserClass := TA000_ParserADOExcel;
    VLoader.ParserClass := TA000_ParserExcel;
    for i := Low(FILE_FIELD) to High(FILE_FIELD) do
      begin
      VField := VLoader.Fields.Add;
      VField.ParamName := FILE_FIELD[i, 0];
      VField.MustBe := FILE_FIELD[i, 1];
      VField.FieldName := FILE_FIELD[i, 2];
      end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

function TC003_FictiveCriteria.GetInnCount: integer;
begin
  Result := 0;
  odsInn.Close;
  odsInn.Open;
  if not odsInn.IsEmpty then
    begin
    while not odsInn.Eof do
      begin
      Result := Result + 1;
      odsInn.Next;
      end;
    end;
  odsInn.Close;
end;

procedure TC003_FictiveCriteria.Button1Click(Sender: TObject);
var
  vCursor: TCursor;
begin
  Button1.Enabled := False;
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    SaveSettings;
    // Здесь запустить процесс установки статуса по критериям
    oqSet.SetVariable('DATASELECT', FDataSelect);
    oqSet.SetVariable('NameCheckNotFictive', dmSettings.GetName(cbNotFictive, Self));
    oqSet.SetVariable('NameCheckInnInList', dmSettings.GetName(cbInnInList, Self));
    oqSet.SetVariable('NameCheckRezType', dmSettings.GetName(cbRezType, Self));
    oqSet.SetVariable('NameRezTypes', dmSettings.GetName(lcbRezType, Self));
    oqSet.SetVariable('NameCheckDirection', dmSettings.GetName(cbDirection, Self));
    oqSet.SetVariable('NameDirection', dmSettings.GetName(lcbDirection, Self));
    oqSet.SetVariable('NameCheckSecType', dmSettings.GetName(cbSecType, Self));
    oqSet.SetVariable('NameSecTypes', dmSettings.GetName(lcbSecType, Self));
    oqSet.SetVariable('NameCheckSum', dmSettings.GetName(cbSum, Self));
    oqSet.SetVariable('NameSumSign', dmSettings.GetName(cbbSumSign, Self));
    oqSet.SetVariable('NameSum', dmSettings.GetName(edSum, Self));
    oqSet.SetVariable('NameCheckOpCode', dmSettings.GetName(cbOpCode, Self));
    oqSet.SetVariable('NameOpCodes', dmSettings.GetName(lcbOpCode, Self));
    oqSet.SetVariable('NameCheckFictive', dmSettings.GetName(cbFictive, Self));
    oqSet.SetVariable('NameCheckUnderQuestion', dmSettings.GetName(cbUnderQuestion, Self));

    oqSet.Execute;

  finally
    Screen.Cursor := vCursor;
    Button1.Enabled:= True;
  end;
end;

end.
