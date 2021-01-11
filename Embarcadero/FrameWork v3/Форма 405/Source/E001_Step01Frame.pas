unit E001_Step01Frame;

interface

uses
  Windows, Messages, fm031_WizardPageFrame, E001_TypeSecFrame, E001_TimeFrame, Forms,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame, frm00_ParentForm,
  fm020_LookUpFrame, ActnList, StdCtrls, Controls, ExtCtrls, Classes,
  Dialogs, ComCtrls, ToolWin, db, Oracle, ComObj, Buttons, fm004_ListFrame,
  fm005_GridFrame, E001_LogMIPFrame, G001_IssuerGroupFrame, Variants;

type
  TE001_Step01 = class(TfmWizardPage)
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    pc01: TPageControl;
    ts01: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ListView: TListView;
    ActionList: TActionList;
    actSelect: TAction;
    actView: TAction;
    actLoad: TAction;
    actDelAll: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    oqBeforeLoad: TOracleQuery;
    oqArray: TOracleQuery;
    E001_LogMIP1: TE001_LogMIP;
    Panel4: TPanel;
    E001_Time1: TE001_Time;
    E001_TypeSec1: TE001_TypeSec;
    ToolBar2: TToolBar;
    Button1: TButton;
    procedure actSelectExecute(Sender: TObject);
    procedure actLoadUpdate(Sender: TObject);
    procedure actViewUpdate(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure E001_Time1odsListAfterScroll(DataSet: TDataSet);
    procedure ListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure actLoadExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FFileName: string;
    function GetT027_ID: Double;
    function GetT055_ID: Double;
    function GetFileName: string;
    procedure SetFileName(const Value: string);
    procedure BeforeLoad;
    procedure showLog;
    procedure ClearLog;
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
    //
    procedure CheckFileName;
    function  FileRead_YES_NO(ANameFile: String): String;
    property FileName: string read GetFileName write SetFileName;
    property T055_ID: Double read GetT055_ID;
    property T027_ID: Double read GetT027_ID;
  end;

var
  E001_Step01: TE001_Step01;

implementation

{$R *.DFM}

uses ShellAPI, SysUtils, untMessages, dm000_ObjectsFactory, unt007_LinksList,
     dm005_MainData, A000_File2DbDM, A000_FileDescUnt, A000_ParserExcelDM,
     Matrix, E001_CalcOptionsForm;

resourcestring
  SFileNotFound =
    'Файл ''%s'' '              + #13#10 +
    'не найден!';

{ TE001_Step01 }

procedure TE001_Step01.DoOnShowPage;
begin
  InitFrame(Self);
  inherited;
end;

procedure TE001_Step01.InitFrame(Sender: TObject);
begin
  // ставим фильтр по типу бумаги на выборку фильтра дат
  ObjectsFactory.Links.LinkLookUp(
    E001_TypeSec1,
    E001_Time1,
    'T027_ID',
    ltRefresh
    );

  E001_TypeSec1.InitFrame(Self);

  inherited;
end;

function TE001_Step01.GetT027_ID: Double;
begin
  Result := E001_TypeSec1.KeyValueFloat;
end;

function TE001_Step01.GetT055_ID: Double;
begin
  Result := E001_Time1.KeyValueFloat;
end;

procedure TE001_Step01.actSelectExecute(Sender: TObject);
var
  I: Integer;
  ListItem: TListItem;
begin
  // выбрать файл
  OpenDialog.InitialDir := ExtractFilePath(FileName);
  if OpenDialog.InitialDir = '' then
  begin
    OpenDialog.InitialDir := ExtractFilePath(Application.ExeName) + '\Dbf';
  end;
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;
  end;

  //  заполняем список файлов
  ListView.Items.Clear;
  for I := 0 to OpenDialog.Files.Count - 1 do
  begin
    ListItem := ListView.Items.Add;
    ListItem.Caption := OpenDialog.Files.Strings[I];
    ListItem.Checked := True;
    ListItem.SubItems.Add('');
  end;
end;

function TE001_Step01.GetFileName: string;
begin
  // читаем из БД имя последнего загруженного файла
  if FFileName = '' then
  begin
    if ListView.Items.Count = 0 then
    begin
      ListView.Items.Add;
      ListView.Items[0].SubItems.Add('');
    end;

    FFileName := ListView.Items[0].Caption;
  end;

  Result := FFileName;
end;

procedure TE001_Step01.SetFileName(const Value: string);
begin
  // сохраняем в БД имя последнего выбранного файла
  FFileName := Value;
  if ListView.Items.Count = 0 then
  begin
    ListView.Items.Add;
    ListView.Items[0].Caption := FFileName;
    ListView.Items[0].SubItems.Add('');
  end;
end;

procedure TE001_Step01.actLoadUpdate(Sender: TObject);
begin
  actLoad.Enabled := ListView.Items.Count <> 0;
end;

procedure TE001_Step01.actViewUpdate(Sender: TObject);
begin
//  actView.Enabled := ListView.Items.Count <> 0;
  actView.Enabled := ListView.Selected <> nil;
end;

procedure TE001_Step01.actViewExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  CheckFileName;

  // просмотреть файл
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    ShellExecute(Self.Handle, 'open', PChar(ListView.Selected.Caption), nil, nil, SW_SHOW);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TE001_Step01.CheckFileName;
begin
  if not FileExists(FileName) then
  begin
    TAppMessages.ShowErrorFmt(SFileNotFound, [FileName]);
  end;
end;

procedure TE001_Step01.E001_Time1odsListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ToolButton1.Enabled := True;
end;

procedure TE001_Step01.ListViewChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  inherited;
  if ListView.Items.Count <> 0 then
        begin
          ToolButton2.Enabled := ListView.Selected <> nil;
          ToolButton3.Enabled := ListView.Selected <> nil;
        end;
end;

procedure TE001_Step01.actLoadExecute(Sender: TObject);
const
  FIELDS_COUNT: Integer = 14;
  FIELDS_OP_405: array[0..14, 0..1] of string = (
    ('i_short_name', 'Эмитент'),
    ('i_inn', 'ИНН'),
    ('i_o_usd_rate', 'Операции - Цена,$'),
    ('i_o_405_shs3_usd_sal', '405 shs3 млн долл'),
    ('i_o_405_shs3_cnt_sal', '405 shs3 млн шт'),
    ('i_o_dr_usd_sal', '405 dr млн долл'),
    ('i_o_dr_cnt_sal', '405 dr млн шт'),
    ('i_e_emiss_size', 'Эмиссия'),
    ('i_o_405_usd_sal', 'Движение по 405 млн.$'),
    ('i_o_405_cnt_sal', 'Движение по 405 млн. шт'),
    ('i_o_oth_cnt_711_405', 'Прочие шт., сокращение разрыва 711 и 405'),
    ('i_o_oth_usd_e', 'Прочие $ Всего'),
    ('i_o_per_usd', 'переоценка (если не автомат)'),
    ('i_e_cnt_rate', 'Остаток на # млн. шт. оценка'),
    ('i_e_usd_rate', 'Остаток на #  $'));
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
  VExt: String;
  v_stE: String;
  v_d_st: String;
begin
  ClearLog;
  VLoader := TA000_File2Db.Create(nil);
  VExt := copy(FileName,pos('.',FileName)+1,length(FileName));

  // формируем название поля переоценка ...
  v_stE := StringReplace(E001_Time1.lcb.Text, 'год ', '', [rfIgnoreCase]);
  v_stE := copy(v_stE,length(v_stE)-8,length(v_stE))+'# '+v_stE;
  v_stE := StringReplace(v_stE, 'квартал#', 'кв', [rfIgnoreCase]);
  v_stE := copy(v_stE,1,length(v_stE)-9);
  FIELDS_OP_405[12, 1] := 'переоценка '+v_stE+'(если не автомат)';

  // формируем названия полей остаток ...
  v_d_st := StringReplace(FormatDateTime('dd/mm/yy',E001_Time1.odsList.FieldByName('T055_NEXT_START').AsDateTime),'.','/', [rfReplaceAll,rfIgnoreCase]);
  FIELDS_OP_405[13, 1] := StringReplace(FIELDS_OP_405[13, 1],'#',v_d_st, [rfIgnoreCase]);
  FIELDS_OP_405[14, 1] := StringReplace(FIELDS_OP_405[14, 1],'#',v_d_st, [rfIgnoreCase]);

  //showmessage(FIELDS_OP_405[12, 1]+'    '+FIELDS_OP_405[13, 1]+'    '+FIELDS_OP_405[14, 1]);

  try
    VLoader.FileName := FileName;
    VLoader.ProcName := 'PK_405_SHS_IIP.p_load_mip_to_remains';
    BeforeLoad;
    VLoader.ParserClass := TA000_ParserExcel;
    for I := 0 to FIELDS_COUNT do
      begin
        VField := VLoader.Fields.Add;
        VField.ParamName := FIELDS_OP_405[I, 0];
        VField.FieldName := FIELDS_OP_405[I, 1];
      end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
  showLog;
end;

procedure TE001_Step01.BeforeLoad;
var
 v_user: String;
 v_FIELDS_CHECK_YES_NO: String;
begin
  try
    v_FIELDS_CHECK_YES_NO := FileRead_YES_NO(FileName);
  except On E : Exception do
    begin
       ShowMessage('Ошибка чтения признаков (Да/Нет) для загружаемых столбцов. '+E.Message);
    end;
  end;

  if Matrix.MA <> nil then
    v_user := Matrix.MA.UserName
  else
    v_user := dmMain.OracleSession.LogonUsername;

  oqBeforeLoad.SetVariable('i_MIP_T055_ID', E001_Time1.lcb.Value);
  oqBeforeLoad.SetVariable('i_MIP_USER_NAME', v_user);
  oqBeforeLoad.SetVariable('i_MIP_SEC_TYPE', E001_TypeSec1.lcb.Text);
  oqBeforeLoad.SetVariable('i_MIP_FILE_NAME', ListView.Selected.Caption);
  oqBeforeLoad.Execute;

  oqArray.SetVariable('i_LIST_FIELDS_CHECK', v_FIELDS_CHECK_YES_NO);
  oqArray.Execute;

end;

function TE001_Step01.FileRead_YES_NO(ANameFile: String): String;
var
  ExlApp: OLEVariant;
  i, y:integer;
  st: String;
begin
  try
    ExlApp := CreateOleObject('Excel.Application');
    ExlApp.Visible := false;
    ExlApp.Workbooks.Open(ANameFile);
    y := ExlApp.ActiveWorkBook.WorkSheets[1].Columns.Count;
    st := '';

    for i:= 1 to y do
      if ExlApp.ActiveWorkBook.WorkSheets[1].cells[1, i].Text <> '' then
        st := st + ExlApp.ActiveWorkBook.WorkSheets[1].cells[1, i].Text+',';

    st := 'Да,Да,'+Copy(st,1,length(st)-1);
    Result := st;
  finally
    ExlApp.Quit;
    ExlApp := Unassigned;
  end;
end;

procedure TE001_Step01.showLog;
begin
  E001_LogMIP1.odsList.Close;
  E001_LogMIP1.odsList.Open;
  if not E001_LogMIP1.odsList.IsEmpty then
    E001_LogMIP1.Visible := True
  else
    E001_LogMIP1.Visible := False;
end;

procedure TE001_Step01.ClearLog;
var
  odsTemp: TOracleQuery;
begin
  odsTemp := TOracleQuery.Create(self);
  try
    try
      odsTemp.Session := E001_LogMIP1.odsList.Session;
      odsTemp.SQL.Text := 'delete t170_mip_log';
      odsTemp.Execute;
      odsTemp.Session.Commit;
      odsTemp.Close;
    except On E : Exception do
       ShowMessage('Ошибка очистки лог-таблицы. '+E.Message);
    end;
  finally
    odsTemp.Free;
  end;

end;

procedure TE001_Step01.Button1Click(Sender: TObject);
var
  vOptions: TE001_CalcOptions;
begin
  vOptions := TE001_CalcOptions(TE001_CalcOptions.Instance);
  if vOptions.ShowModal = mrOk then
    begin

    end;
end;

end.
