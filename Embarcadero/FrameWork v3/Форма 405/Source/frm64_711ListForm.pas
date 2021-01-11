unit frm64_711ListForm;

interface

uses
  ActnList, frm63_711ListForm, frm04_EditForm, frm00_ParentForm, Dialogs,
  Oracle, Db, OracleData, Menus, Classes, ComCtrls, StdCtrls,
  fm04_Prm711KOFrame, fm01_PeriodFrame, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  frm14_DBFParentListForm, Oracle, Db, OracleData, Menus,
//  StdCtrls, Buttons, ExtCtrls, fmSeach, ComCtrls, Grids, DBGrids,
//  xxxDBGrid, ToolWin, , untMessages,
//  frm72_711RightListForm, , fm04_PrmKOFrame,
//  fm01_PeriodFrame, fm31_FilterFrame, unt205_Params, fm04_Prm711KOFrame;

type
  Tfrm64_711List = class(Tfrm63_711List)
  private
    FT052_ID: Double;
    //FRightForm: Tfrm72_711RightList;
    //procedure PlaceFormToPanel(const AForm: Tfrm00_Parent; const AControl: TWinControl);
  protected
    //
    function GetPartID: Double; override;
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
    (*
    procedure FindIssuer_InPer(const AT028_ID, AT055_ID: Double;  AFloatArray: TFloatArray);
    procedure FindEmiss_InPer(const AT030_ID, AT055_ID: Double);

    procedure FindMainIssuer_InPer(const AT028_ID, AT055_ID: Double;  AFloatArray: TFloatArray);
    procedure FindMainEmiss_InPer(const AT030_ID, AT055_ID: Double);
    *)

    procedure RefreshAfterListChange; override;

  end;

var
  frm64_711List: Tfrm64_711List;

implementation

uses
  SysUtils, dm005_MainData, untMessages, frm14_LoadConstUnt,
  frm64_711EditForm, Matrix, A00_MatrixConst;

{$R *.DFM}

{ Tfrm64_711List }

class function Tfrm64_711List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm64_711List;
end;

class function Tfrm64_711List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm64_711List;
end;

procedure Tfrm64_711List.InitFileCode;
begin
  FileCode := ft711_32;
end;

function Tfrm64_711List.RequestLoad;
var
  mes: string;
  period: string;
begin
  period:= copy(ExtractFileName(FileName), 5, 4);
  oqRequestLoad.SetVariable('T051_NUMB_IN_YEA', period);
  oqRequestLoad.SetVariable('T054_ID', 32);
  oqRequestLoad.Execute;
  if oqRequestLoad.GetVariable('O_RESULT') > 0 then
    mes:= 'Переписать записи за период ' + period +'?'
  else
    mes:= 'Загрузить записи из файла ' + ExtractFileName(FileName) +'?';
  Result := TAppMessages.ShowConfirmation(mes);
end;

procedure Tfrm64_711List.BeforeLoad;
var
//  xQuery: TOracleQuery;
  period: string;
begin
  period:= copy(ExtractFileName(FileName), 5, 4);
  PkDBF.CallProcedure('p_711_sum_32_update_before', [period]);

  if StrToIntDef(copy(period, 1, 2), 0) > 8 then
    FileCode := ft711_32_new
  else
    FileCode := ft711_32;

  oqBeforeLoad.Execute;
{  xQuery:= TOracleQuery.Create(nil);
  xQuery.Session:= dmMain.OracleSession;
  xQuery.SQL.Text:= 'delete from V_405_DBF_711_32 where T020_FILE_SOURCE = ''' + ExtractFileName(FileName) +'''';
  try
    xQuery.Execute;
  finally
    xQuery.Free;
  end;}
end;

procedure Tfrm64_711List.AfterLoad;
var
//  xQuery: TOracleQuery;
  period: string;
begin
  PkDBF.CallProcedure('p_711_sum_32_update_after', [period]);
  (*
  xQuery:= TOracleQuery.Create(nil);
  xQuery.Session:= dmMain.OracleSession;
  xQuery.SQL.Text:= 'update V_405_DBF_711_32 set T020_FILE_SOURCE = ''' + ExtractFileName(FileName) +''' WHERE T020_FILE_SOURCE IS NULL';
  try
    xQuery.Execute;
  finally
    xQuery.Free;
  end;
  *)
  oqAfterLoad.Execute;
end;

class procedure Tfrm64_711List.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm64_711List) := AForm;
end;

procedure Tfrm64_711List.DeleteAll;
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
      PkDBF.CallProcedure('p_711_sum_32_del_all', []);
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

function Tfrm64_711List.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm64_711Edit.Instance;
end;

procedure Tfrm64_711List.DoDelete;
begin
  // вызываем процедуру удаления записи
  oqDelete.SetVariable('T052_ID', odsList['T052_ID']);
  oqDelete.SetVariable('T054_ID', 32);
  oqDelete.SetVariable('T051_ID', odsList['T051_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT052_ID := odsList['T052_ID'];
end;

procedure Tfrm64_711List.DoEdit;
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
  oqUpdate.SetVariable('T052_TEXT', odsList['T052_TEXT']);
  oqUpdate.SetVariable('T054_ID', 32);
  oqUpdate.SetVariable('KO_S', odsList['T064_COUNT_13']);
  oqUpdate.SetVariable('KO_ZG', odsList['T064_COUNT_14']);
  oqUpdate.SetVariable('KO_DU', odsList['T064_COUNT_15']);
  oqUpdate.SetVariable('KO_ES', odsList['T064_COUNT_16']);
  oqUpdate.SetVariable('KO_EM', odsList['T064_COUNT_17']);
  oqUpdate.SetVariable('KO_IN', odsList['T064_COUNT_18']);
  oqUpdate.SetVariable('T052_DPB_COMMENT', odsList['T052_DPB_COMMENT']);

  oqUpdate.Execute;

  FT052_ID := oqUpdate.GetVariable('T052_ID');
end;

procedure Tfrm64_711List.DoInsert;
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
  oqAdd.SetVariable('T052_TEXT', odsList['T052_TEXT']);
  oqAdd.SetVariable('T054_ID', 32);
  oqAdd.SetVariable('KO_S', odsList['T064_COUNT_13']);
  oqAdd.SetVariable('KO_ZG', odsList['T064_COUNT_14']);
  oqAdd.SetVariable('KO_DU', odsList['T064_COUNT_15']);
  oqAdd.SetVariable('KO_ES', odsList['T064_COUNT_16']);
  oqAdd.SetVariable('KO_EM', odsList['T064_COUNT_17']);
  oqAdd.SetVariable('KO_IN', odsList['T064_COUNT_18']);
  oqAdd.SetVariable('T052_DPB_COMMENT', odsList['T052_DPB_COMMENT']);

  oqAdd.Execute;
  FT052_ID := oqAdd.GetVariable('T052_ID');
end;

procedure Tfrm64_711List.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_711_SUM, true, '');
end;

procedure Tfrm64_711List.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_711_SUM, true, '');
end;

procedure Tfrm64_711List.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_711_SUM, true, '');
end;

function Tfrm64_711List.EnableAction(Action: TAction): boolean;
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

function Tfrm64_711List.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T051_NUMB_IN_YEA', odsList['T051_NUMB_IN_YEA']);
  oqDupl.SetVariable('T051_BANK_CODE', odsList['T051_BANK_CODE']);
  oqDupl.SetVariable('T051_ID', odsList['T051_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T052_ID', odsList['T052_ID']);
  oqDupl.SetVariable('T054_ID', 32);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm64_711List.RefreshAfterListChange;
begin
  RefreshData('T052_ID', FT052_ID);
end;

(*
procedure Tfrm64_711List.PlaceFormToPanel(const AForm: Tfrm00_Parent;
  const AControl: TWinControl);
begin
  if Assigned(AForm) and Assigned(AControl) then
  begin
    AForm.PlaceToWinControl(AControl);
  end;
end;
*)

function Tfrm64_711List.GetPartID: Double;
begin
  Result := 32;
end;

(*
procedure Tfrm64_711List.FindEmiss_InPer(const AT030_ID, AT055_ID: Double);
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

procedure Tfrm64_711List.FindIssuer_InPer(const AT028_ID, AT055_ID: Double;
  AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AT028_ID);

  Set24Filter('T027_ID', AFloatArray  );

  RefreshAfterListChange;
end;

procedure Tfrm64_711List.FindMainEmiss_InPer(const AT030_ID,
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

procedure Tfrm64_711List.FindMainIssuer_InPer(const AT028_ID,
  AT055_ID: Double; AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID_MAIN', AT028_ID);

  Set24Filter('T027_ID', AFloatArray  );

  RefreshAfterListChange;
end;
*)

end.
