unit F005_LoadPage2GridFrame;

interface

uses
  fm005_GridFrame, Windows, Forms, Graphics, StdCtrls, ComCtrls, ExtCtrls, ActnList, Db,
  Oracle, DbGrids, A000_ParserAdoExcelDM, A000_FileDescUnt,
  F005_PeriodFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame, Menus,
  OracleData, Classes, Controls, ToolWin, Grids, xxxDBGrid;
//  Messages, Classes, Controls, Dialogs,
//  Menus, Db, OracleData,
//  ToolWin, Grids, unt205_Params, xxxDBGrid, DBCtrls,
//  A000_ParserExcelDM, ADODB,
//  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
//  fm020_LookUpFrame, fm033_PeriodFilterFrame,

type
  IFilesLink = interface
    function GetLoadPath: string;
  end;

  // ������ ��� ������ ����� 415
  T415_ParserAdoExcel = class(TA000_ParserAdoExcel)
  private
  protected
    procedure FindAllFields(AFields: TFileFields); override;
  public
    procedure GetRowData(AFields: TFileFields); override;
  end;

  TF005_LoadPage2Grid = class(TfmGrid)
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    ToolButton1: TToolButton;
    oqLogSuccess: TOracleQuery;
    oqLogError: TOracleQuery;
    actLoadData: TAction;
    actOpenFile: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    oqClear: TOracleQuery;
    odsListLOAD_FLAG: TStringField;
    odsListT232_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT232_LOAD_DATE: TDateTimeField;
    odsListT232_FILE_NAME: TStringField;
    odsListT232_FILE_DATE: TDateTimeField;
    odsListT232_INFO: TStringField;
    odsListT232_STATE: TStringField;
    odsListT232_STATE_DESC: TStringField;
    odsListT232_ERR_MSG: TStringField;
    odsListT232_REPORT_DATE: TStringField;
    odsListDELETE_FLAG: TStringField;
    odsListT232_FILE_DATE_OLD: TDateTimeField;
    odsListT232_LOAD_COUNT: TFloatField;
    odsListT232_LOADER: TStringField;
    paFilters: TPanel;
    PeriodFilter: TF005_PeriodFilter;
    Button1: TButton;
    odsListT232_FILE_PART: TStringField;
    ToolButton6: TToolButton;
    actDeleteData: TAction;
    oqBeforeLoad: TOracleQuery;
    oqAfterLoad: TOracleQuery;
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure actLoadDataExecute(Sender: TObject);
    procedure actOpenFileExecute(Sender: TObject);
    procedure actLoadDataUpdate(Sender: TObject);
    procedure actDeleteDataUpdate(Sender: TObject);
    procedure actDeleteDataExecute(Sender: TObject);
  private
    FLink: IFilesLink;
    FDataOperations: integer;
    //
    procedure CountFooter;
    //
    procedure DoBeforeLoad;
    procedure DoAfterLoad(const APart: string);
    procedure DoLogSuccess(const AFileName);
    procedure DoLogError;
    //
    procedure CellClick(Column: TColumn);
    procedure SaveChanges;
    procedure LoadFile(const AFileName, APart: string; AT232_ID: Double);
    procedure DeleteData;
  protected
    function GetKeyFieldName: string; override;
    //
    procedure DoCheck(CheckColumnName: String); override;
    procedure DoUnCheck(CheckColumnName: String); override;
    //
    function GetRowFontColor: TColor; override;
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure ProcessOperations;
    //
    property Link: IFilesLink read FLink write FLink;
    property DataOperations: integer read FDataOperations;
  end;

var
  F005_LoadPage2Grid: TF005_LoadPage2Grid;

implementation

uses
  SysUtils, dm000_ObjectsFactory, unt007_LinksList, dm005_MainData,
  F005_FileHeaders, A000_File2DbDM, ShellAPI, untMessages;
// dm006_PictersData,

{$R *.DFM}

{ TF001_Files }

procedure TF005_LoadPage2Grid.InitFrame(Sender: TObject);
var
  VColumnDef: TColumnDef;
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := False;

  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  ColumnDefs.Clear;
  //
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[0]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(51, 'N');
  VColumnDef.Images.AddStr(52, 'Y');
  VColumnDef.OnCellClick := CellClick;
  //
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[1]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(51, 'N');
  VColumnDef.Images.AddStr(52, 'Y');
  VColumnDef.OnCellClick := CellClick;

  inherited;
end;

procedure TF005_LoadPage2Grid.CountFooter;
var
  vBookmark: TBookmark;
  vTotal: integer;
  vToLoad: integer;
  vToDel: integer;
  vErrors: integer;
begin
  // ������� �����
  odsList.DisableControls;
  vTotal := 0;
  vToLoad := 0;
  vToDel := 0;
  vErrors := 0;
  vBookmark := odsList.GetBookmark;
  odsList.First;
  while not odsList.Eof do
    begin
    Inc(vTotal);
    if odsListLOAD_FLAG.AsString = 'Y' then
      Inc(vToLoad);
    if odsListDELETE_FLAG.AsString = 'Y' then
      Inc(vToDel);
    if odsListT232_STATE.AsString = 'E' then
      Inc(vErrors);
    odsList.Next;
    end;
  odsList.GotoBookmark(vBookmark);
  odsList.FreeBookmark(vBookmark);
  odsList.EnableControls;

  Label1.Caption := '����� ������: ' + IntToStr(vTotal);
  Label2.Caption := '���������: ' + IntToStr(vToLoad);
  Label3.Caption := '�������: ' + IntToStr(vToDel);
  Label6.Caption := '������: ' + IntToStr(vErrors);

  FDataOperations := vToLoad + vToDel;
end;

procedure TF005_LoadPage2Grid.odsListAfterOpen(DataSet: TDataSet);
begin
  CountFooter;
end;

procedure TF005_LoadPage2Grid.CellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'LOAD_FLAG') or (Column.Field.FieldName = 'DELETE_FLAG') then
    begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];
    if (not Column.Field.IsNull) and (odsListT055_ID.Value <> 0) then
      begin
      if Column.Field.AsString = 'Y' then
        begin
        // ������� �������
        DoUnCheck(Column.Field.FieldName);
        end
      else
        begin
        // ������ �������
        DoCheck(Column.Field.FieldName);
        end;

      SaveChanges;
      CountFooter;
      end;
    end
  else
    begin
    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    inherited;
    end;
end;

procedure TF005_LoadPage2Grid.DoCheck(CheckColumnName: String);
begin
  // �������� ������
  odsList.Edit;
  if CheckColumnName = 'LOAD_FLAG' then
    begin
    odsList.FieldByName('LOAD_FLAG').AsString := 'Y';
    odsList.FieldByName('DELETE_FLAG').AsString := 'N';
    end
  else if CheckColumnName = 'DELETE_FLAG' then
    begin
    odsList.FieldByName('LOAD_FLAG').AsString := 'N';
    odsList.FieldByName('DELETE_FLAG').AsString := 'Y';
    end;
  odsList.Post;
end;

procedure TF005_LoadPage2Grid.DoUnCheck(CheckColumnName: String);
begin
  // ������ ���������
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsString := 'N';
  odsList.Post;
end;

procedure TF005_LoadPage2Grid.SaveChanges;
begin
  oqUpdate.SetVariable('T232_ID', odsList['T232_ID']);
  oqUpdate.SetVariable('LOAD_FLAG', odsList['LOAD_FLAG']);
  oqUpdate.SetVariable('DELETE_FLAG', odsList['DELETE_FLAG']);
  oqUpdate.Execute;
end;

function TF005_LoadPage2Grid.GetRowFontColor: TColor;
begin
  if odsListT055_ID.Value = 0 then
    begin
    // �� ��������� �������� ������ - ��������, ������ � ������� �����
    Result := clRed;
    end
  else if odsListT232_FILE_PART.AsString = '�� ���������' then
    begin
    // �� ��������� ������ - ��������, ������ � ������� �����
    Result := clRed;
    end
  else if odsListT232_STATE.AsString = 'E' then
    begin
    // ������ - ��������� ������������� ������
    Result := clRed;
    end
  else if (odsListT232_STATE.AsString = 'L') and (odsListT232_LOAD_COUNT.AsFloat = 0) then
    begin
    // �������� ������ ����
    Result := clRed;
    end
  else
    begin
    Result := inherited GetRowFontColor;
    end;
end;

procedure TF005_LoadPage2Grid.LoadFile(const AFileName, APart: string; AT232_ID: Double);
var
  vProcName: string;
  pHeader: PT415_Header;
  vHeaderLength: integer;
  VLoader: TA000_File2Db;
  i: Integer;
  VField: TFileField;
begin
  if APart = '1.1' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_1_1';
    pHeader := @PART_1_1;
    vHeaderLength := Length(PART_1_1);
    end
  else if APart = '1.2' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_1_2';
    pHeader := @PART_1_2;
    vHeaderLength := Length(PART_1_2);
    end
  else if APart = '1.2.1' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_1_2_1';
    pHeader := @PART_1_2_1;
    vHeaderLength := Length(PART_1_2_1);
    end
  else if APart = '1.3' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_1_3';
    pHeader := @PART_1_3;
    vHeaderLength := Length(PART_1_3);
    end
  else if APart = '1.4' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_1_4';
    pHeader := @PART_1_4;
    vHeaderLength := Length(PART_1_4);
    end
  else if APart = '2.1' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_2_1';
    pHeader := @PART_2_1;
    vHeaderLength := Length(PART_2_1);
    end
  else if APart = '2.2' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_2_2';
    pHeader := @PART_2_2;
    vHeaderLength := Length(PART_2_2);
    end
  else if APart = '2.3' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_2_3';
    pHeader := @PART_2_3;
    vHeaderLength := Length(PART_2_3);
    end
  else if APart = '3' then
    begin
    vProcName := 'PK_405_415_DATA.p_add_row_3';
    pHeader := @PART_3;
    vHeaderLength := Length(PART_3);
    end
  else
    Exit;

  try
    // ��������� ������ �� �����
    DoBeforeLoad;
    VLoader := TA000_File2Db.Create(nil);
    try
      VLoader.ParserClass := T415_ParserAdoExcel;
      VLoader.FileName := AFileName;
      // VLoader.BeforeProcName := 'PK_405_415_DATA.p_do_before_load';
      VLoader.ProcName := vProcName;
      //VLoader.AfterProcName := vAfterProcName;
      // ������������� �������� ID ��������� (T232_ID)
      VField := VLoader.Fields.Add;
      VField.ParamName := 'T232_ID';
      VField.ParamValue := FloatToStr(AT232_ID);
      // ������������� ��������� ���������
      for i := 0 to vHeaderLength - 1 do
        begin
        VField := VLoader.Fields.Add;
        VField.ParamName := pHeader^[i, 0];
        VField.FieldName := pHeader^[i, 1];
        end;
      VLoader.LoadFile;
    finally
      VLoader.Free;
    end;
    DoAfterLoad(APart);
    DoLogSuccess(AFileName);
  except
    on E: Exception do
    begin
      odsList.Edit;
      odsListT232_ERR_MSG.AsString := '������ ��������: ' + E.Message;
      odsList.Post;
      DoLogError;
    end;
  end;
end;

procedure TF005_LoadPage2Grid.DeleteData;
begin
  // ������� ������ �� ��
  oqClear.SetVariable('I_T232_ID', odsListT232_ID.AsFloat);
  oqClear.Execute;
end;

procedure TF005_LoadPage2Grid.DoBeforeLoad;
begin
  oqBeforeLoad.SetVariable('T232_ID', odsListT232_ID.AsFloat);
  oqBeforeLoad.Execute;
end;

procedure TF005_LoadPage2Grid.DoAfterLoad(const APart: string);
const
  PROC_SQL: string = 'begin %s(:T232_ID); end;';
begin
  oqAfterLoad.Clear;
  if APart = '1.1' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_1_1'])
  else if APart = '1.2' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_1_2'])
  else if APart = '1.2.1' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_1_2_1'])
  else if APart = '1.3' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_1_3'])
  else if APart = '1.4' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_1_4'])
  else if APart = '2.1' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_2_1'])
  else if APart = '2.2' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_2_2'])
  else if APart = '2.3' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_2_3'])
  else if APart = '3' then
    oqAfterLoad.SQL.Text := Format(PROC_SQL, ['PK_405_415_DATA.p_do_after_load_3']);

  oqAfterLoad.DeclareVariable('T232_ID', otFloat);
  oqAfterLoad.SetVariable('T232_ID', odsListT232_ID.AsFloat);
  oqAfterLoad.Execute;
end;

procedure TF005_LoadPage2Grid.DoLogSuccess(const AFileName);
begin
  // �������� �������� ��������
  oqLogSuccess.SetVariable('T232_ID', odsListT232_ID.AsFloat);
  oqLogSuccess.SetVariable('USER', dmMain.GetUser);
  oqLogSuccess.Execute;
end;

procedure TF005_LoadPage2Grid.DoLogError;
begin
  // �������� ������
  oqLogError.SetVariable('T232_ID', odsListT232_ID.AsFloat);
  oqLogError.SetVariable('T232_ERR_MSG', odsListT232_ERR_MSG.AsString);
  oqLogError.SetVariable('USER', dmMain.GetUser);
  oqLogError.Execute;
end;

function TF005_LoadPage2Grid.GetKeyFieldName: string;
begin
  Result := 'T232_ID';
end;

procedure TF005_LoadPage2Grid.ProcessOperations;
begin
  // ��������� ��������� ������
  odsList.First;
  while not odsList.Eof do
    begin
    if odsListLOAD_FLAG.AsString = 'Y' then
      begin
      // ��������� ����
      LoadFile(FLink.GetLoadPath + '\' + odsListT232_FILE_NAME.AsString, odsListT232_FILE_PART.AsString, odsListT232_ID.AsFloat);
      RefreshOneRecord;
      end
    else if odsListDELETE_FLAG.AsString = 'Y' then
      begin
      // ������� ������ �� ��
      DeleteData;
      odsList.Delete;
      end;
    Application.ProcessMessages;
    odsList.Next;
    end;

  // ���������
  RefreshAllRecords;
end;

procedure TF005_LoadPage2Grid.actLoadDataUpdate(Sender: TObject);
begin
  actLoadData.Enabled := (not odsList.IsEmpty) and (odsListLOAD_FLAG.AsString = 'Y');
end;

procedure TF005_LoadPage2Grid.actLoadDataExecute(Sender: TObject);
begin
  // ��������� ����
  LoadFile(FLink.GetLoadPath + '\' + odsListT232_FILE_NAME.AsString, odsListT232_FILE_PART.AsString, odsListT232_ID.AsFloat);
  RefreshOneRecord;
end;

procedure TF005_LoadPage2Grid.actDeleteDataUpdate(Sender: TObject);
begin
  actDeleteData.Enabled := (not odsList.IsEmpty) and (odsListDELETE_FLAG.AsString = 'Y');
end;

procedure TF005_LoadPage2Grid.actDeleteDataExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TF005_LoadPage2Grid.actOpenFileExecute(Sender: TObject);
var
  rslt: LongWord;
  m: string;
begin
  // ������� ����
  rslt := ShellExecute(Application.Handle,
                       nil,
                       PChar(FLink.GetLoadPath + '\' + odsListT232_FILE_NAME.AsString),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
  if rslt <= 32 then
    begin
    case rslt of
      0:                      m := 'The operating system is out of memory or resources.';
      ERROR_BAD_FORMAT:       m := 'The .EXE file is invalid (non-Win32 .EXE or error in .EXE image).'; // 11
      SE_ERR_ACCESSDENIED:    m := 'The operating system denied access to the specified file.'; // 5
      SE_ERR_ASSOCINCOMPLETE: m := 'The filename association is incomplete or invalid.'; // 27
      SE_ERR_DDEBUSY:         m := 'The DDE transaction could not be completed because other DDE transactions were being processed.'; // 30
      SE_ERR_DDEFAIL:         m := 'The DDE transaction failed.'; // 29
      SE_ERR_DDETIMEOUT:      m := 'The DDE transaction could not be completed because the request timed out.'; // 28
      SE_ERR_DLLNOTFOUND:     m := 'The specified dynamic-link library was not found.'; // 32
      SE_ERR_FNF:             m := 'The specified file was not found.'; // 2
      SE_ERR_NOASSOC:         m := 'There is no application associated with the given filename extension.'; // 31
      SE_ERR_OOM:             m := 'There was not enough memory to complete the operation.'; // 8
      SE_ERR_PNF:             m := 'The specified path was not found.'; // 3
      SE_ERR_SHARE:           m := 'A sharing violation occurred.'; // 26
      else                    m := '(' + IntToStr(rslt) + ')';
    end;

    TAppMessages.Error('������ �������� �����!'#13#10 + m);
    end;
end;

{ T415_ParserExcel }

procedure T415_ParserAdoExcel.GetRowData(AFields: TFileFields);
var
  s: string;
  i: Integer;
begin
  // �������� ������ �� ������� ������ ����� Excel:
  // ID ���������
  AFields[0].FieldData := AFields[0].ParamValue;
  // ���� ������
  for i := 1 to AFields.Count - 1 do
    begin
    // ����������� ������� Excel � ����������
    s := Copy(ADOTable.Fields[AFields[i].FieldPos].AsString, 1, 255);
    s := StringReplace(s, Chr(150), Chr(45), [rfReplaceAll]); // �������� ����� �� ���� (�����)
    s := StringReplace(s, Chr(147), Chr(34), [rfReplaceAll]); // ����������� ������� ������� �� ���������� �������
    s := StringReplace(s, Chr(148), Chr(34), [rfReplaceAll]); // ����������� ������� ������� �� ���������� �������
    s := StringReplace(s, Chr(160), Chr(32), [rfReplaceAll]); // $0A �� ������
    AFields[I].FieldData := Trim(s);
    end;
end;

procedure T415_ParserAdoExcel.FindAllFields(AFields: TFileFields);
var
  i, j: Integer;
  vField: TFileField;
  vRow:  integer;
begin
  StrHeader := 3;
  // ������� �����:
  // ID ���������
  VField := AFields[0];
  VField.FieldPos := 0;
  // ��������� ����
  ADOTable.RecNo := 3;
  for i := 1 to AFields.Count-1 do
    begin
    vField := AFields[i];
    for j := 0 to ADOTable.FieldCount-1 do
      begin
      if vField.FieldName = ADOTable.Fields[j].AsString then
        begin
        vField.FieldPos := j;
        break;
        end;
      end;
    end;

  // ���� footer
  vRow := ADOTable.RecordCount - 1;
  ADOTable.RecNo := vRow;
  if ADOTable.Fields[0].AsString = '������' then
    StrFooter := vRow;
end;

end.
