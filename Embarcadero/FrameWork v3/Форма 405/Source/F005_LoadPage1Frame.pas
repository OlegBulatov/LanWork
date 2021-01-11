unit F005_LoadPage1Frame;

interface

uses
  fm031_WizardPageFrame, Classes, Forms, Dialogs, Controls, StdCtrls, ExtCtrls,
  Buttons, ActnList, Oracle, ADODb, F005_FileHeaders, untParams, System.Actions, Variants;

type
  TF005_LoadPage1 = class(TfmWizardPage)
    Label3: TLabel;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    Label4: TLabel;
    oqRegFiles: TOracleQuery;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FFiles: TStrings;

    function  GetLoadPathCode: string;
    function  GetLoadPath: string;
    procedure CheckFiles;
    procedure CheckFileFormat(AFileName: string; var APeriod: TDateTime; var APart: string);
    function  CheckFilePeriod(ADataSet: TADODataSet): TDateTime;
    function  CheckFilePart(ADataSet: TADODataSet; APart: PT415_Header; AHeaderLength: integer): boolean;
    procedure RegisterFiles(const AFileNames: TStrArray; const AFileDates: TDateArray; const AFilePeriods: TDateArray; const AFileParts: TStrArray);
  public

    procedure InitFrame(Sender: TObject); override;
    //
    function CanClosePage(const AType: TMoveType): Boolean; override;

    procedure DoOnShowPage(const AType: TMoveType); override;
    procedure DoOnClosePage(const AType: TMoveType); override;
    //
    property LoadPathCode: string read GetLoadPathCode;
    //
    property LoadPath: string read GetLoadPath;
    property SelectedFiles: TStrings read FFiles;
  end;

var
  F005_LoadPage1: TF005_LoadPage1;

implementation

uses
  SysUtils, dm005_MainData;

{$R *.DFM}

function TF005_LoadPage1.CanClosePage(const AType: TMoveType): Boolean;
begin
  Result := True;

  if AType = mtNext then
    begin
    if (FFiles = nil) or (FFiles.Count = 0) then
      Result := False;
    end;
end;

procedure TF005_LoadPage1.DoOnShowPage;
begin
  InitFrame(Self);
  Label4.Visible := False;
  inherited;
end;

procedure TF005_LoadPage1.DoOnClosePage(const AType: TMoveType);
begin
  CheckFiles;
end;

function TF005_LoadPage1.GetLoadPath: string;
begin
  Result := edPath.Text;
end;

function TF005_LoadPage1.GetLoadPathCode: string;
begin
  Result := '415_LOAD_PATH';
end;

procedure TF005_LoadPage1.InitFrame(Sender: TObject);
begin
  edPath.Text := dmMain.GetSetting(LoadPathCode);
  inherited;
end;

procedure TF005_LoadPage1.SpeedButton1Click(Sender: TObject);
begin
  // опеределяем путь к файлам
  if edPath.Text = '' then
    begin
    OpenDialog.InitialDir := dmMain.GetSetting(LoadPathCode);
    end
  else
    begin
    OpenDialog.InitialDir := edPath.Text;
    end;

  // запрашиваем список файлов у пользователя
  if OpenDialog.Execute then
    begin
    // Путь
    edPath.Text := ExtractFilePath(OpenDialog.FileName);
    dmMain.SetSetting(LoadPathCode, edPath.Text);

    // список файлов
    FFiles := OpenDialog.Files;
    end;
end;

procedure TF005_LoadPage1.CheckFiles;
var
  i: integer;
  vFileName: string;
  vFilePeriod: TDateTime;
  vFilePart: string;
  VFileNames: TStrArray;
  VFileDates: TDateArray;
  VFilePeriods: TDateArray;
  VFileParts: TStrArray;
begin
  SetLength(VFileNames, 0);
  SetLength(VFileDates, 0);
  SetLength(VFilePeriods, 0);
  SetLength(VFileParts, 0);

  Label4.Visible := True;
  for i := 0 to SelectedFiles.Count-1 do
    begin
    vFileName := SelectedFiles[i];
    Label4.Caption := 'Проверка файла ' + vFileName + '...';

    SetLength(VFileNames, Length(VFileNames) + 1);
    VFileNames[High(VFileNames)] := ExtractFileName(vFileName);

    SetLength(VFileDates, Length(VFileDates) + 1);
    VFileDates[High(VFileDates)] := FileDateToDateTime(FileAge(vFileName));

    try
      CheckFileFormat(vFileName, vFilePeriod, vFilePart);
    except
      vFilePeriod := 0;
      vFilePart := '';
    end;

    SetLength(VFilePeriods, Length(VFilePeriods) + 1);
    VFilePeriods[High(VFilePeriods)] := vFilePeriod;

    SetLength(VFileParts, Length(VFileParts) + 1);
    VFileParts[High(VFileParts)] := vFilePart;
    end;

  Label4.Caption := 'Проверка файлов завершена.';

  // регистрируем файлы в Oracle
  RegisterFiles(VFileNames, VFileDates, VFilePeriods, VFileParts);

  SetLength(VFileNames, 0);
  SetLength(VFileDates, 0);
  SetLength(VFilePeriods, 0);
  SetLength(VFileParts, 0);

  Label4.Visible := False;
end;

procedure TF005_LoadPage1.CheckFileFormat(AFileName: string; var APeriod: TDateTime; var APart: string);
var
  vTables: TStringList;
  ADOConn: TADOConnection;
  ADOds: TADODataSet;
  i: integer;
begin
  Application.ProcessMessages;
  vTables := TStringList.Create;
  APart := '';
  ADOConn := nil;
  ADOds := nil;
  try
    ADOConn := TADOConnection.Create(Self);
    ADOConn.Mode := cmRead;
    ADOConn.LoginPrompt := False;
    ADOConn.ConnectionString :=  'Provider=Microsoft.ACE.OLEDB.12.0;' +
                                 'Data Source=' + AFileName + ';' +
                                 'Extended Properties="Excel 12.0; Hdr=No; IMEX=1";' +
                                 'Persist Security Info=False';
    ADOConn.Open;
    ADOConn.GetTableNames(vTables, False);

    ADOds := TADODataSet.Create(Self);
    ADOds.Connection := ADOConn;
    ADOds.LockType := ltReadOnly;
    ADOds.CacheSize := 1000;
    ADOds.CommandType := cmdTableDirect;

//    ADOds.CommandText := vTables[0];
    for i := 0 to vTables.Count-1 do
      begin
      ADOds.CommandText := vTables[i];
      if LastDelimiter('$', vTables[i]) = Length(vTables[i]) then
      break;
      end;
      
    ADOds.Open;

    // отчетный период
    APeriod := CheckFilePeriod(ADOds);
    // раздел
    if CheckFilePart(ADOds, @PART_1_1, Length(PART_1_1)) = True then
      APart := '1.1'
    else if CheckFilePart(ADOds, @PART_1_2, Length(PART_1_2)) = True then
      APart := '1.2'
    else if CheckFilePart(ADOds, @PART_1_2_1, Length(PART_1_2_1)) = True then
      APart := '1.2.1'
    else if CheckFilePart(ADOds, @PART_1_3, Length(PART_1_3)) = True then
      APart := '1.3'
    else if CheckFilePart(ADOds, @PART_1_4, Length(PART_1_4)) = True then
      APart := '1.4'
    else if CheckFilePart(ADOds, @PART_2_1, Length(PART_2_1)) = True then
      APart := '2.1'
    else if CheckFilePart(ADOds, @PART_2_2, Length(PART_2_2)) = True then
      APart := '2.2'
    else if CheckFilePart(ADOds, @PART_2_3, Length(PART_2_3)) = True then
      APart := '2.3'
    else if CheckFilePart(ADOds, @PART_3, Length(PART_3)) = True then
      APart := '3';

  finally
    ADOds.Free;
    ADOConn.Free;
    vTables.Free;
  end;
end;

function TF005_LoadPage1.CheckFilePeriod(ADataSet: TADODataSet): TDateTime;
const
  DataStr: string = 'Информация предоставлена по состоянию на: Между ';
var
  vValue: string;
  vDateSeparator: Char;
  vShortDateFormat: string;
  vDateStr: string;
begin
  Result := 0;
  // ищем запись с текстом периода в поле F1 (1-я колонка)
  // Там должно быть что-то вроде '... Информация предоставлена по состоянию на: Между 31.08.2015 0:00:00 и 31.08.2015 23:59:59 ...'
//  ADataSet.RecNo := 2;
//  if ADataSet.Locate(ADataSet.Fields[0].FieldName, DataStr, [loCaseInsensitive, loPartialKey]) = True then
  vValue := '';
  ADataSet.First;
  while not ADataSet.Eof do
    begin
    if Pos(DataStr, ADataSet.Fields[0].AsString) <> 0 then
      begin
      vValue := ADataSet.Fields[0].AsString;
      break;
      end;
    ADataSet.Next;
    end;
  if vValue <> '' then
    begin
// В качестве отчетного периода берем первую дату (10 символов после DataStr)
  vDateStr := Copy(vValue, Pos(DataStr, vValue) + Length(DataStr), 10);
  vDateSeparator := FormatSettings.DateSeparator;
  vShortDateFormat := FormatSettings.ShortDateFormat;
  FormatSettings.DateSeparator := '.';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  try
    Result := StrToDate(vDateStr);
  except
  end;

  FormatSettings.ShortDateFormat := vShortDateFormat;
  FormatSettings.DateSeparator := vDateSeparator;
  end;
end;

function TF005_LoadPage1.CheckFilePart(ADataSet: TADODataSet; APart: PT415_Header; AHeaderLength: integer): boolean;
var
  vFound: integer;
  i, j: integer;

  vColumns: TStringList;
begin
  Result := False;
  // проверяем количество полей в DataSet - должно быть не меньше, чем в описании заголовка
  if ADataSet.Fields.Count >= AHeaderLength then
    begin
    // проверяем заголовок - ищем текст 'Номер строки' - оно есть во всех разделах
    ADataSet.First;
    while not ADataSet.Eof do
      begin
      vFound := 0;
      for i := 0 to ADataSet.Fields.Count-1 do
        if ADataSet.Fields[i].AsString = 'Номер строки' then
          begin
          vFound := 1;
          break;
          end;

      if vFound <> 0 then
        begin
        // заголовок найден - проверяем наличие имен колонок
        vColumns := TStringList.Create;
        vFound := 0;
        for i := 0 to AHeaderLength-1 do
          begin
          for j := 0 to ADataSet.Fields.Count-1 do
            begin
            if vColumns.IndexOf(ADataSet.Fields[j].AsString) = -1 then
              begin
              if ADataSet.Fields[j].AsString = APart^[i,1] then
                begin
                vColumns.Add(APart^[i,1]);
                Inc(vFound);
                break;
                end;
              end;
            end;
          end;

        if vFound = AHeaderLength then
          Result := True;

        vColumns.Free;
        Exit;
        end;

      ADataSet.Next;
      end; // end while
    end;
end;

procedure TF005_LoadPage1.RegisterFiles(const AFileNames: TStrArray;
  const AFileDates, AFilePeriods: TDateArray; const AFileParts: TStrArray);
var
  VFileNames: Variant;
  VFileDates: Variant;
  VFilePeriods: Variant;
  VFileParts: Variant;
  I: Integer;
begin
  // на вход
  VFileNames := VarArrayCreate([0, Length(AFileNames) - 1], varVariant);
  for I := 0 to Length(AFileNames) - 1 do
    VFileNames[I] := AFileNames[I];

  VFileDates := VarArrayCreate([0, Length(AFileDates) - 1], varVariant);
  for I := 0 to Length(AFileDates) - 1 do
    VFileDates[I] := AFileDates[I];

  VFilePeriods := VarArrayCreate([0, Length(AFilePeriods) - 1], varVariant);
  for I := 0 to Length(AFilePeriods) - 1 do
    VFilePeriods[I] := AFilePeriods[I];

  VFileParts := VarArrayCreate([0, Length(AFileParts) - 1], varVariant);
  for I := 0 to Length(AFileParts) - 1 do
    VFileParts[I] := AFileParts[I];

  oqRegFiles.SetVariable('FILE_LIST', VFileNames);
  oqRegFiles.SetVariable('DATE_LIST', VFileDates);
  oqRegFiles.SetVariable('PERIOD_LIST', VFilePeriods);
  oqRegFiles.SetVariable('PART_LIST', VFileParts);

  oqRegFiles.Execute;
end;

end.
