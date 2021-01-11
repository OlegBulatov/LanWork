unit dm04_WorldReportData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleData, untWorldReport, Oracle;

type
  Tdm04_WorldReport = class(TDataModule)
    odsFilter: TOracleDataSet;
    odsFilterT076_ID: TFloatField;
    odsFilterT002_BANK_CODE: TStringField;
    odsFilterT076_FILT_01: TStringField;
    odsFilterT076_FILT_02: TStringField;
    odsFilterT076_FILT_03: TStringField;
    odsFilterT076_FILT_04: TStringField;
    odsKOState: TOracleDataSet;
    odsKOStateT069_ID: TFloatField;
    odsKOStateT067_ID: TFloatField;
    odsKOStateT067_DESC: TStringField;
    odsKOStateT069_DESC: TStringField;
    odsKOStateT069_POINT: TFloatField;
    odsKOStateT069_YES_NO: TStringField;
    odsKOStateTOTAL_SUM: TFloatField;
    odsKOStateT002_ID: TFloatField;
    odsRezidState: TOracleDataSet;
    odsOperGroupState: TOracleDataSet;
    odsRezids: TOracleDataSet;
    odsOperGroups: TOracleDataSet;
    odsRezidsT012_ID: TFloatField;
    odsRezidsT012_NAME: TStringField;
    odsRezidsT012_CODE: TStringField;
    odsRezidStateT102_ID: TFloatField;
    odsRezidStateT012_ID: TFloatField;
    odsRezidStateT055_ID: TFloatField;
    odsRezidStateT103_ID: TFloatField;
    odsRezidStateT101_ID: TFloatField;
    odsRezidStateT101_DESC: TStringField;
    odsRezidStateT102_DESC: TStringField;
    odsRezidStateT102_POINT: TFloatField;
    odsRezidStateT102_YES_NO: TStringField;
    odsOperGroupsT002_ID: TIntegerField;
    odsOperGroupsT012_ID: TFloatField;
    odsOperGroupsT027_ID: TFloatField;
    odsOperGroupsT027_SEC_TYPE: TStringField;
    odsOperGroupsOP_GRP_STATE: TFloatField;
    odsOperGroupsTOTAL_STATE: TFloatField;
    odsOperGroupStateT070_ID: TFloatField;
    odsOperGroupStateT071_ID: TFloatField;
    odsOperGroupStateT068_ID: TFloatField;
    odsOperGroupStateT068_DESC: TStringField;
    odsOperGroupStateT070_DESC: TStringField;
    odsOperGroupStateT070_POINT: TFloatField;
    odsOperGroupStateT070_YES_NO: TStringField;
    odsOperGroupStateTOTAL_SUM: TFloatField;
    odsOperGroupsT001_OP_SUM_SALDO: TFloatField;
    odsOperGroupsT027_COMMENTS: TStringField;
    odsRezidStateNREZID_LIST: TStringField;
    odsOperGroupStateT068_NUM: TIntegerField;
    odsRezidStateTOTAL_SUM: TFloatField;
    odsOperGroupsT001_OP_SUM_SALDO_F: TFloatField;
    oqGetT071_ID: TOracleQuery;
    odsOperGroupStateT068_CALC_PERIOD: TStringField;
    odsRezidStateT101_NUMBER: TIntegerField;
  private
    FWordReport: TWordReport;
    FT002_ID: Double;
    FT055_ID: Double;
    FTableNo: Integer;
    FBankRegn: string;
    FBankName:string;
    FQuartName: string;
    //
    //function GetTypeBumList: string;
    function GetResultFileName: string;
    procedure PrintKOState;
    procedure PrintRezidStates;
    procedure PrintOperGroupStates(AT012_ID: Double);
    function FormatFieldAsMoney(const AField: TField): string;
  public
    procedure BuildReport(
      const AT055_ID: Double;
      const AT002_ID: Double;
      const ABankName:string;
      const ABankRegn: string
      );
    property QuartName: string read FQuartName write FQuartName;
  end;

var
  dm04_WorldReport: Tdm04_WorldReport;

implementation

{$R *.DFM}

uses ShellAPI;

{ Tdm04_WorldReport }

procedure Tdm04_WorldReport.BuildReport(
  const AT055_ID: Double;
  const AT002_ID: Double;
  const ABankName: string;
  const ABankRegn: string);
var
  VOldCursor: TCursor;
  VOutFileName: string;
begin
  FT002_ID := AT002_ID;
  FT055_ID := AT055_ID;
  FBankRegn := ABankRegn;
  FBankName := ABankName;

  if not Assigned(FWordReport) then
  begin
    FWordReport := TWordReport.Create(Self);
  end;

  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // подсоединяемся к Word
    FWordReport.Connect;
    try

      // открываем книгу
      FWordReport.OpenDocument(ExtractFileDir(application.ExeName)+'\Reports\Шаблон Оценка операций КО.doc');
      try
        // формируем список переменных
        FWordReport.VarListAdd(
          '###REGN_DESC&',
          Format('%s (регистрационный номер %s)', [ABankName, ABankRegn])
          );
        // экспортируем список переменных
        FWordReport.VarListExport;
        FWordReport.VarListClear;
        FTableNo := 1;

        PrintKOState;

        PrintRezidStates;

        // сохраняем файл
        VOutFileName := FWordReport.SaveAs(GetResultFileName);
      finally
        // показываем книгу
        FWordReport.GoToPage(1);
        FWordReport.Visible := True;
      end;
    finally
      // отсоединяемся от Word
      FWordReport.CloseDocument;
      FWordReport.Disconnect;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function Tdm04_WorldReport.FormatFieldAsMoney(
  const AField: TField): string;
begin
  if AField.IsNull then
  begin
    Result := '';
  end else
  begin
    Result := Format('%.*f', [2, AField.AsFloat]);
  end;
end;

function Tdm04_WorldReport.GetResultFileName: string;
begin
  Result :=
    Format('%s\Temp\%s (%s).doc', [
      ExtractFileDir(application.ExeName),
      FQuartName, FBankRegn
      ]
    );
end;

(*
function Tdm04_WorldReport.GetTypeBumList: string;
begin
  Result := '';
  odsFilter.Close;
  odsFilter.SetVariable('T002_BANK_CODE', FBankRegn);
  odsFilter.Open;
  if odsFilterT076_FILT_01.AsString = 'Y' then
  begin
    Result := Result + 'SHS1, SHS2, SHS3, SHS4';
  end;
  if odsFilterT076_FILT_02.AsString = 'Y' then
  begin
    if Result <> '' then Result := Result + ', ';
    Result := Result + 'OTH, OTH1, OTH2';
  end;
  if odsFilterT076_FILT_03.AsString = 'Y' then
  begin
    if Result <> '' then Result := Result + ', ';
    Result := Result + 'BIL1, BIL2, BIL3, BIL4';
  end;
  if odsFilterT076_FILT_04.AsString = 'Y' then
  begin
    if Result <> '' then Result := Result + ', ';
    Result := Result + 'BIL5, BIL6, BIL7';
  end;
  odsFilter.Close;
end;
*)

procedure Tdm04_WorldReport.PrintKOState;
var
  VRow: Integer;
begin
  odsKOState.Close;
  odsKOState.SetVariable('T002_ID', FT002_ID);
  odsKOState.Open;
  odsKOState.First;

  // заполняем таблицу данными
  VRow := 3;
  while not odsKOState.Eof do
  begin
    FWordReport.SetTextToTable(FTableNo, VRow, 3, odsKOStateT069_DESC.AsString);
    FWordReport.SetTextToTable(FTableNo, VRow, 4, odsKOStateT069_YES_NO.AsString);
    FWordReport.SetTextToTable(FTableNo, VRow, 5, odsKOStateT069_POINT.AsString);
    odsKOState.Next;
    Inc(VRow);
  end;
  // экспортируем список переменных
  FWordReport.VarListAdd('###KO_SUM&', odsKOStateTOTAL_SUM.AsString);
  FWordReport.VarListExport;
  FWordReport.VarListClear;
end;

procedure Tdm04_WorldReport.PrintRezidStates;
var
  VIdx: Integer;
  VRow: Integer;
  VStartCol: Integer;
begin
  odsRezids.Close;
  odsRezids.SetVariable('T002_ID', FT002_ID);
  odsRezids.Open;

  if odsRezids.RecordCount > 0 then
  begin
	  FWordReport.CopyFragment('###REZID_CAPTION_START&', '###REZID_CAPTION_END&', 1);
  end
  else begin
	  FWordReport.CopyFragment('###REZID_CAPTION_START&', '###REZID_CAPTION_END&', 0);
  end;

  FWordReport.CopyFragment('###REZID_START&', '###REZID_END&', odsRezids.RecordCount);

  odsRezids.First;
  VIdx := 1;

  while not odsRezids.Eof do
  begin
    odsRezidState.Close;
    odsRezidState.SetVariable('T002_ID', FT002_ID);
    odsRezidState.SetVariable('T012_ID', odsRezidsT012_ID.AsFloat);
    odsRezidState.SetVariable('T055_ID', FT055_ID);
    odsRezidState.Open;
    odsRezidState.First;

    // заполняем таблицу данными
    Inc(FTableNo);
    VRow := 3;
    while not odsRezidState.Eof do
    begin
      VStartCol := 1;
      if VRow in [9, 13, 14] then
        VStartCol := 0;
      FWordReport.SetTextToTable(FTableNo, VRow, VStartCol + 3, odsRezidStateT102_DESC.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, VStartCol + 4, odsRezidStateT102_YES_NO.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, VStartCol + 5, odsRezidStateT102_POINT.AsString);
      odsRezidState.Next;
      Inc(VRow);
    end;

    FWordReport.VarListAdd(
       '###REZID_DESC&',
       Format('№%d %s (ИНН %s)', [VIdx, odsRezidsT012_NAME.AsString, odsRezidsT012_CODE.AsString])
    );
    FWordReport.VarListAdd('###NREZ_LIST&', odsRezidStateNREZID_LIST.AsString);
    FWordReport.VarListAdd('###REZID_SUM&', odsRezidStateTOTAL_SUM.AsString);
    // экспортируем список переменных
    FWordReport.VarListExport;
    FWordReport.VarListClear;

    PrintOperGroupStates(odsRezidsT012_ID.AsFloat);

    Inc(VIdx);
    odsRezids.Next;
  end;
end;

procedure Tdm04_WorldReport.PrintOperGroupStates(AT012_ID: Double);
const
  RESULT_STATE = 'Данная группа операций признается %s';
var
  VRow: Integer;
  VT071_ID: Double;
begin
  odsOperGroups.Close;
  odsOperGroups.SetVariable('T002_ID', FT002_ID);
  odsOperGroups.SetVariable('T012_ID', AT012_ID);
  odsOperGroups.Open;

  if odsOperGroups.RecordCount > 0 then
  begin
	  FWordReport.CopyFragment('###OPER_CAPTION_START&', '###OPER_CAPTION_END&', 1);
  end
  else begin
	  FWordReport.CopyFragment('###OPER_CAPTION_START&', '###OPER_CAPTION_END&', 0);
  end;

  FWordReport.CopyFragment('###OPER_START&', '###OPER_END&', odsOperGroups.RecordCount);

  odsOperGroups.First;
  while not odsOperGroups.Eof do
  begin
    oqGetT071_ID.SetVariable('T002_ID', odsOperGroupsT002_ID.AsFloat);
    oqGetT071_ID.SetVariable('T012_ID', odsOperGroupsT012_ID.AsFloat);
    oqGetT071_ID.SetVariable('T027_ID', odsOperGroupsT027_ID.AsFloat);
    oqGetT071_ID.Execute;
    VT071_ID := oqGetT071_ID.GetVariable('T071_ID');

    odsOperGroupState.Close;
    odsOperGroupState.SetVariable('T071_ID', VT071_ID);
    odsOperGroupState.Open;

    // заполняем таблицу данными
    Inc(FTableNo);
    VRow := 3;

    if odsOperGroupState.RecordCount <> 0 then
    begin
      FWordReport.InsertRowsToTable(FTableNo, VRow, odsOperGroupState.RecordCount - 1);
    end;

    odsOperGroupState.First;
    while not odsOperGroupState.Eof do
    begin
      FWordReport.SetTextToTable(FTableNo, VRow, 1, odsOperGroupStateT068_NUM.AsString + '.' + odsOperGroupStateT068_DESC.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, 2, odsOperGroupStateT068_CALC_PERIOD.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, 3, odsOperGroupStateT070_DESC.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, 4, odsOperGroupStateT070_YES_NO.AsString);
      FWordReport.SetTextToTable(FTableNo, VRow, 5, odsOperGroupStateT070_POINT.AsString);
      odsOperGroupState.Next;
      Inc(VRow);
    end;

    FWordReport.VarListAdd('###SALDO&', FormatFieldAsMoney(odsOperGroupsT001_OP_SUM_SALDO_F));
    FWordReport.VarListAdd('###OPER_DESC&', Format('%s (%s)', [odsOperGroupsT027_SEC_TYPE.AsString, odsOperGroupsT027_COMMENTS.AsString]));
    FWordReport.VarListAdd('###OPER_SUM&', odsOperGroupsOP_GRP_STATE.AsString);
    FWordReport.VarListAdd('###OPER_STATE&', odsOperGroupsTOTAL_STATE.AsString);
    FWordReport.VarListAdd('###OPER_STATE_DESC&', format (RESULT_STATE, ['сомнительной']));

    // экспортируем список переменных
    FWordReport.VarListExport;
    FWordReport.VarListClear;

    odsOperGroups.Next;
  end;
end;

end.
