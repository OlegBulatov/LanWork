unit frm54_MMVBRatesLoadForm;

interface

uses
  frm00_ParentForm, Dialogs, Classes, ActnList, ComCtrls, Controls, ToolWin;
//  Windows, Messages, Graphics

type
  Tfrm54_MMVBRatesLoad = class(Tfrm00_Parent)
    ToolBar3: TToolBar;
    tbSelectFile: TToolButton;
    tbLoadFile: TToolButton;
    ListView: TListView;
    ActionList: TActionList;
    actSelect: TAction;
    actLoad: TAction;
    OpenDialog: TOpenDialog;
    procedure actSelectExecute(Sender: TObject);
    procedure actLoadExecute(Sender: TObject);
  private
    FFileName: String;
    //
    procedure LoadFile(AFileName: String);
    function GetFileName: string;
    procedure SetFileName(const Value: string);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function RequestLoad: boolean;
  public
    property FileName: string read GetFileName write SetFileName;
  end;

var
  frm54_MMVBRatesLoad: Tfrm54_MMVBRatesLoad;

implementation

uses
  SysUtils, Forms, A000_File2DbDM, A000_FileDescUnt, A000_ParserCsvDM, untMessages;
// dm005_MainData, ,

{$R *.DFM}

class function Tfrm54_MMVBRatesLoad.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm54_MMVBRatesLoad;
end;

class function Tfrm54_MMVBRatesLoad.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm54_MMVBRatesLoad;
end;

class procedure Tfrm54_MMVBRatesLoad.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm54_MMVBRatesLoad) := AForm;
end;

procedure Tfrm54_MMVBRatesLoad.actSelectExecute(Sender: TObject);
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

procedure Tfrm54_MMVBRatesLoad.LoadFile(AFileName: String);
const
  MMVB_RATE_FIELD: array[0..46, 0..1] of string =
    (
    ('i_BOARDID', 'BOARDID'),
    ('i_BOARDNAME', 'BOARDNAME'),
    ('i_TRADEDATE', 'TRADEDATE'),
    ('i_SHORTNAME', 'SHORTNAME'),
    ('i_SECURITYID', 'SECID'),
    ('i_TYPE', 'TYPE'),
    ('i_REGNUMBER', 'REGNUMBER'),
    ('i_FACEVALUE', 'FACEVALUE'),
    ('i_VOLUME', 'VOLUME'),
    ('i_VALUE', 'VALUE'),
    ('i_CURRENCYID', 'CURRENCYID'),
    ('i_OPENPERIOD', 'OPENPERIOD'),
    ('i_OPEN', 'OPEN'),
    ('i_LOW', 'LOW'),
    ('i_HIGH', 'HIGH'),
    ('i_CLOSE', 'CLOSE'),
    ('i_LOWOFFER', 'LOWOFFER'),
    ('i_HIGHBID', 'HIGHBID'),
    ('i_WAPRICE', 'WAPRICE'),
    ('i_CLOSEPER', 'CLOSEPERIOD'),
    ('i_TRENDCLOSE', 'TRENDCLOSE'),
    ('i_TRENDWAP', 'TRENDWAP'),
    ('i_BID', 'BID'),
    ('i_OFFER', 'OFFER'),
    ('i_PREV', 'PREV'),
    ('i_YIELDATWAP', 'YIELDATWAP'),
    ('i_YIELDCLOSE', 'YIELDCLOSE'),
    ('i_ACCINT', 'ACCINT'),
    ('i_MARKETPRC', 'MARKETPRICE'),
    ('i_NUMTRADES', 'NUMTRADES'),
    ('i_ISSUESIZE', 'ISSUESIZE'),
    ('i_TRENDCLSPR', 'TRENDCLSPR'),
    ('i_TRENDWAPPR', 'TRENDWAPPR'),
    ('i_MATDATE', 'MATDATE'),
    ('i_MARKETPRC2', 'MARKETPRICE2'),
    ('i_ADMQUOTE', 'ADMITTEDQUOTE'),
    ('i_LISTNAME', 'LISTNAME'),
    ('i_PRLEGCLPRC', 'PREVLEGALCLOSEPRICE'),
    ('i_LEGOPPRICE', 'LEGALOPENPRICE'),
    ('i_LEGCLPRICE', 'LEGALCLOSEPRICE'),
    ('i_OPENVAL', 'OPENVAL'),
    ('i_CLOSEVAL', 'CLOSEVAL'),
    ('i_ISIN', 'ISIN'),
    ('i_DURATION', 'DURATION'),
    ('i_MPVALTRD', 'MPVALTRD'),
    ('i_MP2VALTRD', 'MP2VALTRD'),
    ('i_ADMVALUE', 'ADMITTEDVALUE')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := AFileName;

    VLoader.ProcName := 'Pk_405_Rts_Mmvb_Rates.p_mmvb_add';
    VLoader.AfterProcName := 'Pk_405_Rts_Mmvb_Rates.p_set_mmvb_links';

    VLoader.ParserClass := TA000_ParserCsv;
    for I := Low(MMVB_RATE_FIELD) to High(MMVB_RATE_FIELD) do
    begin
      VField := VLoader.Fields.Add;
      VField.ParamName := MMVB_RATE_FIELD[I, 0];
      VField.FieldName := MMVB_RATE_FIELD[I, 1];
    end;

    VLoader.LoadFile;
  except
    on E: Exception do
    begin
      try
        VLoader.Free;
      except
      end;
      raise;
    end;
  end;
end;

function Tfrm54_MMVBRatesLoad.RequestLoad;
begin
  Result := TAppMessages.ShowConfirmation('Загрузить записи из файла ' + ExtractFileName(FileName) +'?');
end;

procedure Tfrm54_MMVBRatesLoad.actLoadExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  I: Integer;
begin
  if not RequestLoad then exit;

  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;

  for I := 0 to ListView.Items.Count - 1 do
  begin
    try
      if not ListView.Items[I].Checked then Continue;

      FileName := ListView.Items[I].Caption;

      LoadFile(FileName);

      ListView.Items[I].SubItems[0] := 'Файл успешно загружен!';
    	ListView.Items[I].Checked := False;
    	Application.ProcessMessages;
    except
      on E: Exception do
      begin
        ListView.Items[I].SubItems[0] := E.Message;
        Break;
      end;
    end;
  end;

  Screen.Cursor:= VOldCursor;
end;

function Tfrm54_MMVBRatesLoad.GetFileName: string;
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

procedure Tfrm54_MMVBRatesLoad.SetFileName(const Value: string);
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

end.
