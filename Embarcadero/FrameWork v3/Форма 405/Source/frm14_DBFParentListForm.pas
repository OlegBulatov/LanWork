unit frm14_DBFParentListForm;

interface

uses
  frm04_TabListForm, Classes, ComCtrls, StdCtrls, ExtCtrls, ActnList, Dialogs,
  Oracle, frm14_LoadConstUnt, frm00_ParentForm, Db, OracleData, Menus,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, Variants, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Controls, Forms
//  frm04_ListForm, Db, OracleData, Menus, , fmSeach,
//  , Grids, DBGrids, xxxDBGrid, ToolWin, ,
//  Buttons, Mask, DBCtrls, , fm31_FilterFrame, , ;

type
  Tfrm14_DBFParentList = class(Tfrm04_TabList)
    Panel2: TPanel;
    Label1: TLabel;
    actSelect: TAction;
    actView: TAction;
    actLoad: TAction;
    OpenDialog: TOpenDialog;
    oqLoad: TOracleQuery;
    actDelAll: TAction;
    PkDBF: TOraclePackage;
    ToolButton10: TToolButton;
    ToolButton9: TToolButton;
    ToolBar3: TToolBar;
    tbSelectFile: TToolButton;
    tbViewFile: TToolButton;
    tbLoadFile: TToolButton;
    ListView: TListView;
    procedure actSelectExecute(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actLoadExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actDelAllExecute(Sender: TObject);
    procedure actLoadUpdate(Sender: TObject);
    procedure actViewUpdate(Sender: TObject);
  private
    FFileName: string;
    FFileCode: TDBFType;
    function GetFileName: string;
    procedure SetFileName(const Value: string);
  protected
    function FormatStrToDate(const AValue: string): TDateTime;
    //
    procedure InitFileCode; virtual;
    function RequestLoad: boolean; virtual;
    procedure LoadFile; virtual;
    procedure BeforeLoad; virtual;
    procedure AfterLoad; virtual;
    procedure DeleteAll; virtual;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function GetLoadThread: TThread; virtual;
  public
    procedure CheckFileName;
    property FileName: string read GetFileName write SetFileName;
    property FileCode: TDBFType read FFileCode write FFileCode;
  end;

var
  frm14_DBFParentList: Tfrm14_DBFParentList;

implementation

uses
  SysUtils, ShellAPI, Windows, untMessages, frm14_ProgressForm,
  dm005_MainData;

{$R *.DFM}

resourcestring
  SFileNotFound =
    'Файл ''%s'' '              + #13#10 +
    'не найден!';

{ Tfrm14_DBFParentList }

function Tfrm14_DBFParentList.GetLoadThread: TThread;
begin
  Result := TLoadThread.Create(true);
end;

class function Tfrm14_DBFParentList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm14_DBFParentList;
end;

class function Tfrm14_DBFParentList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm14_DBFParentList;
end;

class procedure Tfrm14_DBFParentList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm14_DBFParentList) := AForm;
end;

procedure Tfrm14_DBFParentList.actSelectExecute(Sender: TObject);
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

procedure Tfrm14_DBFParentList.actViewExecute(Sender: TObject);
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

procedure Tfrm14_DBFParentList.actLoadExecute(Sender: TObject);
begin
  // загрузка файла
  LoadFile;
end;

procedure Tfrm14_DBFParentList.CheckFileName;
begin
  if not FileExists(FileName) then
  begin
    TAppMessages.ShowErrorFmt(SFileNotFound, [FileName]);
  end;
end;

function Tfrm14_DBFParentList.GetFileName: string;
begin
  // читаем из БД имя последнего загруженного файла
  if FFileName = '' then
  begin
    if ListView.Items.Count = 0 then
    begin
      ListView.Items.Add;
      ListView.Items[0].SubItems.Add('');
    end;

    if ListView.Items[0].Caption = '' then
    begin
      ListView.Items[0].Caption := dmMain.GetSetting(DBF_FILE_LIST[FFileCode]);
    end;
    
    FFileName := ListView.Items[0].Caption;
  end;

  Result := FFileName;
end;

procedure Tfrm14_DBFParentList.SetFileName(const Value: string);
begin
  // сохраняем в БД имя последнего выбранного файла
  dmMain.SetSetting(DBF_FILE_LIST[FFileCode], Value);

  FFileName := Value;
  if ListView.Items.Count = 0 then
  begin
    ListView.Items.Add;
    ListView.Items[0].Caption := FFileName;
    ListView.Items[0].SubItems.Add('');
  end;
end;

procedure Tfrm14_DBFParentList.InitFileCode;
begin
  // возвращаем код DBF файла
end;

procedure Tfrm14_DBFParentList.FormCreate(Sender: TObject);
begin
  inherited;
  // инициализируем код файла
  InitFileCode;
  // инициализируем имя файла
  GetFileName;
end;

function Tfrm14_DBFParentList.RequestLoad;
begin
  Result := TAppMessages.ShowConfirmation('Загрузить записи из файла?');
end;

procedure Tfrm14_DBFParentList.BeforeLoad;
begin

end;

procedure Tfrm14_DBFParentList.LoadFile;
var
  I: Integer;
  VOldCursor: TCursor;
  ErrMessage: String;
  VThread: TThread;
begin
  if not RequestLoad then exit;
    
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    for I := 0 to ListView.Items.Count - 1 do
    begin
      if not ListView.Items[I].Checked then Continue;
	
      FileName := ListView.Items[I].Caption;

      dmMain.StartTransaction;
      BeforeLoad;

      try
        VThread := GetLoadThread;
        try
          ErrMessage := Tfrm14_Progress.ExecProc(FileName, FileCode, VThread);

          if ErrMessage <> '' then
          begin
            dmMain.Rollback;
            ListView.Items[I].SubItems[0] := ErrMessage;
            ListView.Items[I].Checked := False;
            Application.ProcessMessages;
            Exit;
          end;

          AfterLoad;
          ListView.Items[I].SubItems[0] := 'Файл успешно загружен!';
          ListView.Items[I].Checked := False;
          dmMain.Commit;
        finally
          VThread.Free;
        end;
      	Application.ProcessMessages;
      except
      	on E: Exception do
      	begin
      	  dmMain.Rollback;
      	  ListView.Items[I].SubItems[0] := ErrMessage;
      	end;
      end;
    end;
    RefreshData('', Unassigned);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm14_DBFParentList.AfterLoad;
begin

end;

procedure Tfrm14_DBFParentList.DeleteAll;
begin

end;

procedure Tfrm14_DBFParentList.actDelAllExecute(Sender: TObject);
begin
  // удалить все записи
  if TAppMessages.ShowConfirmation('Удалить все записи из БД?') then
  begin
    DeleteAll;
    RefreshData('', Unassigned);
  end;
end;

function Tfrm14_DBFParentList.FormatStrToDate(
  const AValue: string): TDateTime;
begin
  // значение в формате 'ДД.ММ.ГГ' преобразуем в дату
  // заменяем точки на DateSeparator
  Result := StrToDate(StringReplace(AValue, '.', FormatSettings.DateSeparator, [rfReplaceAll]));
end;

procedure Tfrm14_DBFParentList.actLoadUpdate(Sender: TObject);
begin
  actLoad.Enabled := ListView.Items.Count <> 0;
end;

procedure Tfrm14_DBFParentList.actViewUpdate(Sender: TObject);
begin
//  actView.Enabled := ListView.Items.Count <> 0;
  actView.Enabled := ListView.Selected <> nil;
end;

end.
