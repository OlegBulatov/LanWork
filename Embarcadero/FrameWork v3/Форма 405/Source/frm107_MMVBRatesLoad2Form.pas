unit frm107_MMVBRatesLoad2Form;

interface

uses
  frm00_ParentForm, Dialogs, Classes, ActnList, ComCtrls, Controls, ToolWin;
//  Windows, Messages, Graphics

type
  Tfrm107_MMVBRatesLoad2 = class(Tfrm00_Parent)
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
  frm107_MMVBRatesLoad2: Tfrm107_MMVBRatesLoad2;

implementation

uses
  SysUtils, Forms, A000_File2DbDM, A000_FileDescUnt, A000_ParserCsvDM, untMessages;
// dm005_MainData
//  frm54_MMVBRatesLoadForm;

{$R *.DFM}

class function Tfrm107_MMVBRatesLoad2.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm107_MMVBRatesLoad2;
end;

class function Tfrm107_MMVBRatesLoad2.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm107_MMVBRatesLoad2;
end;

class procedure Tfrm107_MMVBRatesLoad2.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm107_MMVBRatesLoad2) := AForm;
end;

procedure Tfrm107_MMVBRatesLoad2.actSelectExecute(Sender: TObject);
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

procedure Tfrm107_MMVBRatesLoad2.LoadFile(AFileName: String);
const
  MMVB_RATE_FIELD: array[0..48] of string =
    (
    'TRADEDATE',
    'SECID',
    'BOARDNAME',
    'BOARDID',
    'SHORTNAME',
    'REGNUMBER',
    'ISIN',
    'LISTNAME',
    'FACEVALUE',
    'CURRENCYID',
    'PREVLEGALCLOSEPRICE',
    'PREV',
    'LEGALOPENPRICE',
    'OPENPERIOD',
    'OPEN',
    'LOW',
    'HIGH',
    'CLOSE',
    'CLOSEPERIOD',
    'OPENVAL',
    'CLOSEVAL',
    'LEGALCLOSEPRICE',
    'TRENDCLOSE',
    'TRENDCLSPR',
    'HIGHBID',
    'BID',
    'OFFER',
    'LOWOFFER',
    'WAPRICE',
    'TRENDWAP',
    'TRENDWAPPR',
    'VOLUME',
    'MARKETPRICE',
    'MARKETPRICE2',
    'MP2VALTRD',
    'MPVALTRD',
    'VALUE',
    'NUMTRADES',
    'ISSUESIZE',
    'ADMITTEDQUOTE',
    'ADMITTEDVALUE',
    'MONTHLYCAPITALIZATION',
    'DAILYCAPITALIZATION',
    'MARKETPRICE3',
    'MARKETPRICE3TRADESVALUE',
    'DECIMALS',
    'TYPE',
    'CLOSEAUCTIONPRICE',
    'WAVAL'
    );
var
  i: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := AFileName;

    VLoader.ProcName := 'Pk_405_Rts_Mmvb_Rates.p_mmvb_add2';
    VLoader.AfterProcName := 'Pk_405_Rts_Mmvb_Rates.p_set_mmvb_links';

    VLoader.ParserClass := TA000_ParserCsv;
    for i := Low(MMVB_RATE_FIELD) to High(MMVB_RATE_FIELD) do
      begin
      VField := VLoader.Fields.Add;
      VField.ParamName := 'i_' + MMVB_RATE_FIELD[i];
      VField.FieldName := MMVB_RATE_FIELD[i];
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

function Tfrm107_MMVBRatesLoad2.RequestLoad;
begin
  Result := TAppMessages.ShowConfirmation('Загрузить записи из файла ' + ExtractFileName(FileName) +'?');
end;

procedure Tfrm107_MMVBRatesLoad2.actLoadExecute(Sender: TObject);
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

function Tfrm107_MMVBRatesLoad2.GetFileName: string;
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

procedure Tfrm107_MMVBRatesLoad2.SetFileName(const Value: string);
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
