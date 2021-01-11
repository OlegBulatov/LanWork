unit frm58_101ListForm;

interface

uses
  frm14_DBFParentListForm, Db, ActnList, frm04_EditForm, frm00_ParentForm,
  Dialogs, Oracle, OracleData, Menus, Classes, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls, Variants, System.Actions;
//  Windows, Messages, Graphics

type
  Tfrm58_101List = class(Tfrm14_DBFParentList)
    odsListT061_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT061_SUM: TFloatField;
    odsListREGN: TStringField;
    odsListBANK_NAME: TStringField;
    procedure actSelectExecute(Sender: TObject);
  private
    FT061_ID: Double;
    FT055_ID: Double;
  protected
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;

    procedure DeleteAll; override;
    //
    procedure InitFileCode; override;
    function RequestLoad(FName: string): boolean; reintroduce;
    procedure LoadFile; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm58_101List: Tfrm58_101List;

implementation

uses
  SysUtils, untMessages, frm58_101EditForm, Matrix, A00_MatrixConst,
  frm14_LoadConstUnt, frm58_101ChoiceForm, dm005_MainData,
  A000_File2DbDM, A000_ParserExcelDM, A000_FileDescUnt;

{$R *.DFM}

{ Tfrm58_101List }

procedure Tfrm58_101List.DeleteAll;
begin
  PkDBF.CallProcedure('p_101_del_all', []);
  TAppMessages.ShowInformation('Все записи удалены.');
end;

procedure Tfrm58_101List.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T061_ID', odsList['T061_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT061_ID := odsList['T061_ID'];
end;

procedure Tfrm58_101List.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T061_ID', odsList['T061_ID']);
  oqUpdate.SetVariable('T055_ID', odsList['T055_ID']);
  oqUpdate.SetVariable('T061_SUM', odsList['T061_SUM']);
  oqUpdate.SetVariable('REGN', odsList['REGN']);
  oqUpdate.Execute;
  FT061_ID := odsList['T061_ID'];
end;

procedure Tfrm58_101List.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T055_ID', odsList['T055_ID']);
  oqAdd.SetVariable('T061_SUM', odsList['T061_SUM']);
  oqAdd.SetVariable('REGN', odsList['REGN']);
  oqAdd.Execute;
  FT061_ID := oqAdd.GetVariable('T061_ID');
end;

function Tfrm58_101List.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm58_101Edit.Instance;
end;

function Tfrm58_101List.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_101_DBF, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_101_DBF, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_101_DBF, FALSE)
  else result:= true;
end;

class function Tfrm58_101List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm58_101List;
end;

class function Tfrm58_101List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm58_101List;
end;

function Tfrm58_101List.IsDuplicateFound: Boolean;
begin
  oqDupl.SetVariable('T061_ID', odsList['T061_ID']);
  oqDupl.SetVariable('T055_ID', odsList['T055_ID']);
  oqDupl.SetVariable('T061_SUM', odsList['T061_SUM']);
  oqDupl.SetVariable('REGN', odsList['REGN']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm58_101List.RefreshAfterListChange;
begin
  RefreshData('T061_ID', FT061_ID);
end;

class procedure Tfrm58_101List.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm58_101List) := AForm;
end;

procedure Tfrm58_101List.WriteLogOnDelete;
begin
  Matrix.MA.WriteToLog2(ADD_101_DBF, true, '');
end;

procedure Tfrm58_101List.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_101_DBF, true, '');
end;

procedure Tfrm58_101List.WriteLogOnInsert;
begin
  Matrix.MA.WriteToLog2(DELETE_101_DBF, true, '');
end;

function Tfrm58_101List.RequestLoad(FName: string): boolean;
begin
  Result:= False;
  with Tfrm58_101Choice.Create(Self) do
  begin
    lFile.Caption := FName;
    if ShowModal = mrOk then
    begin
      FT055_ID := ods01T055_ID.AsFloat;
      Result:= true;
    end;
  end;
end;

procedure Tfrm58_101List.actSelectExecute(Sender: TObject);
var
  I: Integer;
  ListItem: TListItem;
begin
  // выбрать файл
  OpenDialog.InitialDir := ExtractFilePath(FileName);
  if OpenDialog.InitialDir = '' then
    OpenDialog.InitialDir := ExtractFilePath(Application.ExeName)+'\101';

  if OpenDialog.Execute then
    FileName := OpenDialog.FileName;

  //  заполняем список файлов
  ListView.Items.Clear;
  ListView.Selected := nil;
  for I := 0 to OpenDialog.Files.Count - 1 do
    begin
    ListItem := ListView.Items.Add;
    ListItem.Caption := OpenDialog.Files.Strings[I];
    ListItem.Checked := True;
    ListItem.SubItems.Add('');
    end;
end;

procedure Tfrm58_101List.LoadFile;
const
  DATA_FIELDS: array[0..4, 0..1] of string =
    (
    ('i_REGN',     'Банк (Рег. номер)'),
    ('i_DBT_RUB',  '[Дебет][Рубли]'),
    ('i_CDT_RUB',  '[Кредит][Рубли]'),
    ('i_DBT_INV',  '[Дебет][Инвалюта]'),
    ('i_CDT_INV',  '[Кредит][Инвалюта]')
    );
var
  I, J: Integer;
  VOldCursor: TCursor;
  VLoader: TA000_File2Db;
  VField: TFileField;
  ErrMessage: String;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    for I := 0 to ListView.Items.Count - 1 do
      begin
      if not ListView.Items[I].Checked then continue;
      if not RequestLoad(ExtractFileName(ListView.Items[I].Caption)) then Exit;
     // загружаем данные из файла
      VLoader := TA000_File2Db.Create(nil);
      try
        VLoader.FileName := ListView.Items[I].Caption;

        VLoader.BeforeProcName := 'Pk_Load_Dbf.p_101_before_load_1(:i_FILE_NAME, :i_T055_ID, :i_LOADER)';
        VLoader.SetBeforeProcParam('i_FILE_NAME', otString, ExtractFileName(ListView.Items[I].Caption));
        VLoader.SetBeforeProcParam('i_T055_ID', otString, FT055_ID);
        VLoader.SetBeforeProcParam('i_LOADER', otString, dmMain.GetUser);

        VLoader.ProcName := 'Pk_Load_Dbf.p_101_add_1';
        VLoader.ParserClass := TA000_ParserExcel;
        for J := Low(DATA_FIELDS) to High(DATA_FIELDS) do
          begin
          VField := VLoader.Fields.Add;
          VField.ParamName := DATA_FIELDS[J, 0];
          VField.FieldName := DATA_FIELDS[J, 1];
          end;

        VLoader.AfterProcName := 'Pk_Load_Dbf.p_101_after_load_1';
        try
          ErrMessage := VLoader.LoadFile;
        except
          on E: Exception do
            begin
            ErrMessage := E.Message;
            end;
        end;
      finally
        VLoader.Free;
      end;

      if ErrMessage <> '' then
        begin
        ListView.Items[I].SubItems[0] := ErrMessage;
        ListView.Items[I].Checked := False;
        Application.ProcessMessages;
        continue;
        end;

      ListView.Items[I].SubItems[0] := 'Файл успешно загружен!';
      ListView.Items[I].Checked := False;
      end; // end for

    Application.ProcessMessages;
    RefreshData('', Unassigned);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm58_101List.InitFileCode;
begin
  FileCode := ft101;
end;

end.
