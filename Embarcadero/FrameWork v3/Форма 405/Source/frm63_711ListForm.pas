unit frm63_711ListForm;

interface

uses
  frm14_DBFParentListForm, Db, ActnList, StdCtrls, ExtCtrls, ComCtrls, Oracle,
  frm00_ParentForm, frm04_EditForm, fm01_PeriodFrame, fm04_Prm711KOFrame,
  untParams, Dialogs, OracleData, Menus, Classes, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, Variants,
  System.Actions;

type
  Tfrm63_711List = class(Tfrm14_DBFParentList)
    odsListT052_ID: TFloatField;
    odsListT051_ID: TFloatField;
    odsListT051_BANK_CODE: TStringField;
    odsListT051_KP_ID: TIntegerField;
    odsListT051_LOAD_DATE: TDateTimeField;
    odsListT051_NUMB_IN_YEA: TStringField;
    odsListT051_NUMB_IN_YEA_DESC: TStringField;
    odsListT051_REPORT_DATE: TDateTimeField;
    odsListT030_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_CODE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT052_REGNUM: TStringField;
    odsListT052_SENNAME: TIntegerField;
    odsListT052_KOD_NUM: TIntegerField;
    odsListT052_CURR: TStringField;
    odsListISO_LAT3: TStringField;
    odsListT052_N_ST1: TFloatField;
    odsListT052_N_ST2: TFloatField;
    odsListT052_TEXT: TStringField;
    odsListT054_ID: TFloatField;
    actApplayFilter: TAction;
    odsListT064_ID_1: TFloatField;
    odsListT064_COUNT_1: TFloatField;
    odsListT064_ID_2: TFloatField;
    odsListT064_COUNT_2: TFloatField;
    odsListT064_ID_3: TFloatField;
    odsListT064_COUNT_3: TFloatField;
    odsListT064_ID_4: TFloatField;
    odsListT064_COUNT_4: TFloatField;
    odsListT064_ID_5: TFloatField;
    odsListT064_COUNT_5: TFloatField;
    odsListT064_ID_6: TFloatField;
    odsListT064_COUNT_6: TFloatField;
    odsListT064_ID_7: TFloatField;
    odsListT064_COUNT_7: TFloatField;
    odsListT064_ID_8: TFloatField;
    odsListT064_COUNT_8: TFloatField;
    odsListT064_ID_9: TFloatField;
    odsListT064_COUNT_9: TFloatField;
    odsListT064_ID_10: TFloatField;
    odsListT064_COUNT_10: TFloatField;
    odsListT064_ID_11: TFloatField;
    odsListT064_COUNT_11: TFloatField;
    odsListT064_ID_12: TFloatField;
    odsListT064_COUNT_12: TFloatField;
    odsListT064_ID_13: TFloatField;
    odsListT064_COUNT_13: TFloatField;
    odsListT064_ID_14: TFloatField;
    odsListT064_COUNT_14: TFloatField;
    odsListT064_ID_15: TFloatField;
    odsListT064_COUNT_15: TFloatField;
    odsListT064_ID_16: TFloatField;
    odsListT064_COUNT_16: TFloatField;
    odsListT064_ID_17: TFloatField;
    odsListT064_COUNT_17: TFloatField;
    odsListT064_ID_18: TFloatField;
    odsListT064_COUNT_18: TFloatField;
    Panel3: TPanel;
    Label3: TLabel;
    Tfm01_Period1: Tfm01_Period;
    Frame11: Tfm04_Prm711KO;
    chbPeriod: TCheckBox;
    chbKO: TCheckBox;
    Tfm01_Period2: Tfm01_Period;
    Button1: TButton;
    odsListT052_N_ST_ALL: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT028_CODE_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT025_SHOT_NAME_MAIN: TStringField;
    odsListIS_MAIN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT055_ID: TFloatField;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    oqBuildBuffer: TOracleQuery;
    odsListT030_ID_MAIN: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT027_ID_MAIN: TFloatField;
    oqBeforeLoad: TOracleQuery;
    oqAfterLoad: TOracleQuery;
    oqRequestLoad: TOracleQuery;
    odsListT028_PARENT_ID: TFloatField;
    odsListT052_DPB_COMMENT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actApplayFilterExecute(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    FT052_ID: Double;
    function GetT053_Name: String;
  protected
    //
    function ShowDetailDefault: Boolean; override;
    //
    function GetPartID: Double; virtual;
    //
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    //
    function EditForm: Tfrm04_Edit; override;
    //
    function IsDuplicateFound: Boolean; override;

    function EnableAction(Action: TAction): boolean; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;

    procedure InitFileCode; override;
    function RequestLoad: boolean; override;
    procedure BeforeLoad; override;
    procedure AfterLoad; override;
    procedure DeleteAll; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

  public
    property T053_Name: String read GetT053_Name;

    procedure FindAllIssuer(const AID: Double);
    procedure FindAllEmission(const AID: Double);

    procedure FindIssuer_InPer(const AT028_ID, AT055_ID: Double;  AFloatArray: TFloatArray);
    procedure FindEmiss_InPer(const AT030_ID, AT055_ID: Double);

    procedure FindMainIssuer_InPer(const AT028_ID, AT055_ID: Double;  AFloatArray: TFloatArray);
    procedure FindMainEmiss_InPer(const AT030_ID, AT055_ID: Double);
    //
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm63_711List: Tfrm63_711List;

implementation

uses
  SysUtils, untMessages, frm14_LoadConstUnt, dm005_MainData,
  frm63_711EditForm, Matrix, A00_MatrixConst, frm04_ListForm, frm96_711LinksForm;

{$R *.DFM}

{ Tfrm63_711List }

class function Tfrm63_711List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm63_711List;
end;

class function Tfrm63_711List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm63_711List;
end;

procedure Tfrm63_711List.InitFileCode;
begin
  FileCode := ft711_31;
end;

function Tfrm63_711List.RequestLoad;
var
  mes: string;
  period: string;
begin
  period:= copy(ExtractFileName(FileName), 5, 4);
  oqRequestLoad.SetVariable('T051_NUMB_IN_YEA', period);
  oqRequestLoad.SetVariable('T054_ID', 31);
  oqRequestLoad.Execute;
  if oqRequestLoad.GetVariable('O_RESULT') > 0 then
    mes:= 'Переписать записи за период ' + period +'?'
  else
    mes:= 'Загрузить записи из файла ' + ExtractFileName(FileName) +'?';
  Result := TAppMessages.ShowConfirmation(mes);
end;

procedure Tfrm63_711List.BeforeLoad;
var
//  xQuery: TOracleQuery;
  period: string;
begin
  period:= copy(ExtractFileName(FileName), 5, 4);
  PkDBF.CallProcedure('p_711_sum_31_update_before', [period]);

  if StrToIntDef(copy(period, 1, 2), 0) > 8 then
    FileCode := ft711_31_new
  else
    FileCode := ft711_31;

  oqBeforeLoad.Execute;

{  xQuery:= TOracleQuery.Create(nil);
  xQuery.Session:= dmMain.OracleSession;
  period:= copy(ExtractFileName(FileName), 5, 4);
  xQuery.SQL.Text:=
    'delete from V_405_DBF_711_SUM where T051_NUMB_IN_YEA = ''' + period +'''';
  try
    xQuery.Execute;
  finally
    xQuery.Free;
  end;}
end;

procedure Tfrm63_711List.AfterLoad;
var
//  xQuery: TOracleQuery;
  period: string;
begin
  PkDBF.CallProcedure('p_711_sum_31_update_after', [period]);
  (*
  xQuery:= TOracleQuery.Create(nil);
  xQuery.Session:= dmMain.OracleSession;
  xQuery.SQL.Text:=
     'update V_405_DBF_711_31 set T020_FILE_SOURCE = ''' + ExtractFileName(FileName) + ''' WHERE T020_FILE_SOURCE IS NULL';
  try
    xQuery.Execute;
  finally
    xQuery.Free;
  end;
  *)

  oqAfterLoad.Execute;

end;

class procedure Tfrm63_711List.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm63_711List) := AForm;
end;

procedure Tfrm63_711List.DeleteAll;
resourcestring
  INVALID_DELETE =
    'Ошибка удаления!' + #13#10 +
    '%s';
var
  VOldCursor: TCursor;
begin
  // сохраняем изменения
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    dmMain.StartTransaction;
    try
      PkDBF.CallProcedure('p_711_sum_31_del_all', []);
      TAppMessages.ShowInformation('Все записи удалены.');
      dmMain.Commit;
    except
      on E: Exception do
      begin
        dmMain.Rollback;
        E.Message := Format(INVALID_DELETE, [E.Message]);
        raise;
      end;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function Tfrm63_711List.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm63_711Edit.Instance;
end;

procedure Tfrm63_711List.DoDelete;
begin
  // вызываем процедуру удаления записи
  oqDelete.SetVariable('T052_ID', odsList['T052_ID']);
  oqDelete.SetVariable('T051_ID', odsList['T051_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT052_ID := odsList['T052_ID'];
end;

procedure Tfrm63_711List.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T052_ID', odsList['T052_ID']);
  oqUpdate.SetVariable('T051_ID', odsList['T051_ID']);
  oqUpdate.SetVariable('T051_NUMB_IN_YEA', odsList['T051_NUMB_IN_YEA']);
  oqUpdate.SetVariable('T051_BANK_CODE', odsList['T051_BANK_CODE']);
  oqUpdate.SetVariable('T051_KP_ID', odsList['T051_KP_ID']);
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T052_REGNUM', odsList['T052_REGNUM']);
  oqUpdate.SetVariable('T052_SENNAME', odsList['T052_SENNAME']);
  oqUpdate.SetVariable('T052_KOD_NUM', odsList['T052_KOD_NUM']);
  oqUpdate.SetVariable('T052_CURR', odsList['T052_CURR']);
  oqUpdate.SetVariable('T052_N_ST1', odsList['T052_N_ST1']);
  oqUpdate.SetVariable('T052_N_ST2', odsList['T052_N_ST2']);
  oqUpdate.SetVariable('T054_ID', 31);
  oqUpdate.SetVariable('KL_S_UFR', odsList['T064_COUNT_1']);
  oqUpdate.SetVariable('KL_S_KO', odsList['T064_COUNT_2']);
  oqUpdate.SetVariable('KL_S_UFN', odsList['T064_COUNT_3']);
  oqUpdate.SetVariable('KL_L_R', odsList['T064_COUNT_4']);
  oqUpdate.SetVariable('KL_L_KO', odsList['T064_COUNT_5']);
  oqUpdate.SetVariable('KL_L_N', odsList['T064_COUNT_6']);
  oqUpdate.SetVariable('KL_ZG_R', odsList['T064_COUNT_7']);
  oqUpdate.SetVariable('KL_ZG_N', odsList['T064_COUNT_8']);
  oqUpdate.SetVariable('KL_DU', odsList['T064_COUNT_9']);
  oqUpdate.SetVariable('KL_ES', odsList['T064_COUNT_10']);
  oqUpdate.SetVariable('KL_EM', odsList['T064_COUNT_11']);
  oqUpdate.SetVariable('KL_X', odsList['T064_COUNT_12']);
  oqUpdate.SetVariable('T052_DPB_COMMENT', odsList['T052_DPB_COMMENT']);

  oqUpdate.Execute;

  FT052_ID := oqUpdate.GetVariable('T052_ID');
end;

procedure Tfrm63_711List.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T051_NUMB_IN_YEA', odsList['T051_NUMB_IN_YEA']);
  oqAdd.SetVariable('T051_BANK_CODE', odsList['T051_BANK_CODE']);
  oqAdd.SetVariable('T051_KP_ID', odsList['T051_KP_ID']);
  oqAdd.SetVariable('T030_ID', odsList['T030_ID']);
  oqAdd.SetVariable('T052_REGNUM', odsList['T052_REGNUM']);
  oqAdd.SetVariable('T052_SENNAME', odsList['T052_SENNAME']);
  oqAdd.SetVariable('T052_KOD_NUM', odsList['T052_KOD_NUM']);
  oqAdd.SetVariable('T052_CURR', odsList['T052_CURR']);
  oqAdd.SetVariable('T052_N_ST1', odsList['T052_N_ST1']);
  oqAdd.SetVariable('T052_N_ST2', odsList['T052_N_ST2']);
  oqAdd.SetVariable('T054_ID', 31);
  oqAdd.SetVariable('KL_S_UFR', odsList['T064_COUNT_1']);
  oqAdd.SetVariable('KL_S_KO', odsList['T064_COUNT_2']);
  oqAdd.SetVariable('KL_S_UFN', odsList['T064_COUNT_3']);
  oqAdd.SetVariable('KL_L_R', odsList['T064_COUNT_4']);
  oqAdd.SetVariable('KL_L_KO', odsList['T064_COUNT_5']);
  oqAdd.SetVariable('KL_L_N', odsList['T064_COUNT_6']);
  oqAdd.SetVariable('KL_ZG_R', odsList['T064_COUNT_7']);
  oqAdd.SetVariable('KL_ZG_N', odsList['T064_COUNT_8']);
  oqAdd.SetVariable('KL_DU', odsList['T064_COUNT_9']);
  oqAdd.SetVariable('KL_ES', odsList['T064_COUNT_10']);
  oqAdd.SetVariable('KL_EM', odsList['T064_COUNT_11']);
  oqAdd.SetVariable('KL_X', odsList['T064_COUNT_12']);
  oqAdd.SetVariable('T052_DPB_COMMENT', odsList['T052_DPB_COMMENT']);

  oqAdd.Execute;
  FT052_ID := oqAdd.GetVariable('T052_ID');
end;

procedure Tfrm63_711List.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_711_SUM, true, '');
end;

procedure Tfrm63_711List.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_711_SUM, true, '');
end;

procedure Tfrm63_711List.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_711_SUM, true, '');
end;

function Tfrm63_711List.EnableAction(Action: TAction): boolean;
begin
  if dmMain.ViewHistory then
  begin
    Result := False;
    exit;
  end;

  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_711_SUM, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_711_SUM, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_711_SUM, FALSE)
  else result:= true;
end;

function Tfrm63_711List.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T051_NUMB_IN_YEA', odsList['T051_NUMB_IN_YEA']);
  oqDupl.SetVariable('T051_BANK_CODE', odsList['T051_BANK_CODE']);
  oqDupl.SetVariable('T051_ID', odsList['T051_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T052_ID', odsList['T052_ID']);
  oqDupl.SetVariable('T054_ID', 31);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm63_711List.RefreshAfterListChange;
begin
  RefreshData('T052_ID', FT052_ID);
end;

procedure Tfrm63_711List.FormShow(Sender: TObject);
begin
  Tfm01_Period1.Init;
  Tfm01_Period2.Init;
  Frame11.odsPeriod.Close;
  Frame11.odsPeriod.Open;
  Frame11.KeyValue := Frame11.odsPeriod.FieldByName('REGN').AsString;
  
  inherited;
  (*
  FRightForm := Tfrm72_711RightList.Instance;
  FRightForm.Master := odsList;
  PlaceFormToPanel(FRightForm, paRight);
  *)
end;

procedure Tfrm63_711List.actApplayFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm63_711List.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  // если смотрим не отчет КО (КО + месяц) то сортировка не нужна
  if (not chbKO.Checked) or (not chbPeriod.Checked) then
  begin
    xxxDBGrid.MainDataSet.Indexes.Clear;
  end;
  
    // снимаем фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T051_BANK_CODE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T054_ID');

  // фильтры по типу счета
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_1');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_2');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_3');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_4');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_5');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_6');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_7');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_8');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_9');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_10');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_11');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_12');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_13');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_14');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_15');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_16');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_17');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T064_COUNT_18');

  {case T035_Name of
  'KL_S_UFR':;
  'KL_S_KO':;
  'KL_S_UFN':;
  'KL_L_R':;
  'KL_L_KO':;
  'KL_L_N':;
  'KL_ZG_R':;
  'KL_ZG_N':;
  'KL_DU':;
  'KL_ES':;
  'KL_EM':;
  'KL_X':;
  'KO_S':;
  'KO_ZG':;
  'KO_DU':;
  'KO_ES':;
  'KO_EM':;
  'KO_IN':;
  end;}

  if chbKO.Checked then
  begin
    SetStrFilter('T051_BANK_CODE', Frame11.KeyValue);
  end;

  if chbPeriod.Checked then
  begin
    SetNumbBetweenFilter(
      'T055_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
  end;

  SetNumbFilter('T054_ID', GetPartID);

  if T053_Name = 'KL_S_UFR'      then SetNumbFilter04('T064_COUNT_1', 0)
  else if T053_Name = 'KL_S_KO'  then SetNumbFilter04('T064_COUNT_2', 0)
  else if T053_Name = 'KL_S_UFN' then SetNumbFilter04('T064_COUNT_3', 0)
  else if T053_Name = 'KL_L_R'   then SetNumbFilter04('T064_COUNT_4', 0)
  else if T053_Name = 'KL_L_KO'  then SetNumbFilter04('T064_COUNT_5', 0)
  else if T053_Name = 'KL_L_N'   then SetNumbFilter04('T064_COUNT_6', 0)
  else if T053_Name = 'KL_ZG_R'  then SetNumbFilter04('T064_COUNT_7', 0)
  else if T053_Name = 'KL_ZG_N'  then SetNumbFilter04('T064_COUNT_8', 0)
  else if T053_Name = 'KL_DU'    then SetNumbFilter04('T064_COUNT_9', 0)
  else if T053_Name = 'KL_ES'    then SetNumbFilter04('T064_COUNT_10', 0)
  else if T053_Name = 'KL_EM'    then SetNumbFilter04('T064_COUNT_11', 0)
  else if T053_Name = 'KL_X'     then SetNumbFilter04('T064_COUNT_12', 0)
  else if T053_Name = 'KO_S'     then SetNumbFilter04('T064_COUNT_13', 0)
  else if T053_Name = 'KO_ZG'    then SetNumbFilter04('T064_COUNT_14', 0)
  else if T053_Name = 'KO_DU'    then SetNumbFilter04('T064_COUNT_15', 0)
  else if T053_Name = 'KO_ES'    then SetNumbFilter04('T064_COUNT_16', 0)
  else if T053_Name = 'KO_EM'    then SetNumbFilter04('T064_COUNT_17', 0)
  else if T053_Name = 'KO_IN'    then SetNumbFilter04('T064_COUNT_18', 0);
  
  (*
  DataSet.SetVariable(':FLAG_01', Integer(chbKO.Checked));
  DataSet.SetVariable(':FLAG_02', Integer(chbPeriod.Checked));
  DataSet.SetVariable('T055_START_ID', Tfm01_Period1.KeyValue);
  DataSet.SetVariable('T055_END_ID', Tfm01_Period2.KeyValue);
  DataSet.SetVariable('T002_BANK_CODE', Frame11.KeyValue);
  DataSet.SetVariable('T054_ID', GetPartID);
  *)

  (*
  where T054_ID = :T054_ID
  AND ((:FLAG_01 = 0) or (T051_BANK_CODE = :T002_BANK_CODE))
  AND ((:FLAG_02 = 0) or (T055_ID BETWEEN :T055_START_ID AND :T055_END_ID))
  *)

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

function Tfrm63_711List.GetPartID: Double;
begin
  Result := 31;
end;

function Tfrm63_711List.ShowDetailDefault: Boolean;
begin
  Result := False;
end;

procedure Tfrm63_711List.FindAllEmission(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm63_711List.FindAllIssuer(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AID);

  RefreshAfterListChange;   
end;

procedure Tfrm63_711List.ToolButton8Click(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // сохраняем изменения
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    oqBuildBuffer.Execute;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm63_711List.FindEmiss_InPer(const AT030_ID, AT055_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure Tfrm63_711List.FindIssuer_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_PARENT_ID', AT028_ID);

  Set24Filter('T027_ID', AFloatArray  );

  RefreshAfterListChange;
end;

procedure Tfrm63_711List.FindMainEmiss_InPer(const AT030_ID,
  AT055_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID_MAIN', AT030_ID);

  RefreshAfterListChange;
end;

procedure Tfrm63_711List.FindMainIssuer_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_PARENT_ID', AT028_ID);

  Set24Filter('T027_ID', AFloatArray  );

  RefreshAfterListChange;
end;

function Tfrm63_711List.GetT053_Name: String;
begin
  result := Tfrm96_711Links(Tfrm96_711Links.Instance).T053_Name;
end;

end.
