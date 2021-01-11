unit M001_InnKoEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm002_EditFrame, ActnList, StdCtrls, Mask, ToolEdit, Db, DBCtrls,
  RxRichEd, DBRichEd, ComCtrls, RxToolEdit, System.Actions;

type
  TM001_InnKoEdit = class(TfmEdit)
    Label1: TLabel;
    deDateStart: TDateEdit;
    Label2: TLabel;
    deDateEnd: TDateEdit;
    lbRegn: TLabel;
    edRegn: TDBEdit;
    Label4: TLabel;
    edInn: TDBEdit;
    Label5: TLabel;
    edName: TDBEdit;
    Label6: TLabel;
    edBic: TDBEdit;
    Label3: TLabel;
    edCity: TDBEdit;
    Label7: TLabel;
    edAddr: TDBEdit;
    Label8: TLabel;
    cbActive: TDBComboBox;
    cbNko: TDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    mComment: TMemo;
  private
    { Private declarations }
  public
    procedure SetDataSource(Value: TDataSource); override;
    procedure InitFrame(Sender: TObject);  override;
    function CheckValues: Boolean; override;
  end;

var
  M001_InnKoEdit: TM001_InnKoEdit;

implementation

uses
  DateUtil, untMessages;

{$R *.DFM}

{ TM001_InnKoEdit }

procedure TM001_InnKoEdit.SetDataSource(Value: TDataSource);
begin
  inherited;

  edRegn.DataSource := Value;
  edRegn.DataField := 'T183_REGN';

  edInn.DataSource := Value;
  edInn.DataField := 'T183_INN';

  edName.DataSource := Value;
  edName.DataField := 'T183_SHORT_NAME';

  edBic.DataSource := Value;
  edBic.DataField := 'T183_BIC';

  edCity.DataSource := Value;
  edCity.DataField := 'T183_CITY';

  edAddr.DataSource := Value;
  edAddr.DataField := 'T183_ADDRESS';

  cbActive.Items.Clear;
  cbActive.Items.Add('0');
  cbActive.Items.Add('1');

  cbActive.DataSource := Value;
  cbActive.DataField := 'T183_ACTIVE';

  cbNko.Items.Clear;
  cbNko.Items.Add('Да');
  cbNko.Items.Add('Нет');

  cbNko.DataSource := Value;
  cbNko.DataField := 'T183_IS_NKO';

//  edComment.DataSource := Value;
//  edComment.DataField := 'T183_COMMENT';

end;

procedure TM001_InnKoEdit.InitFrame(Sender: TObject);
var
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
  if DataSource.DataSet.FieldByName('T183_DATE_START').IsNull then
    deDateStart.Date := NullDate
  else
    begin
    vDateSeparator := FormatSettings.DateSeparator;
    FormatSettings.DateSeparator := '.';
    vShortDateFormat := FormatSettings.ShortDateFormat;
    FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
    try
      deDateStart.Date := StrToDate(DataSource.DataSet.FieldByName('T183_DATE_START').AsString);
    finally
      FormatSettings.DateSeparator := vDateSeparator;
      FormatSettings.ShortDateFormat := vShortDateFormat;
    end;
    end;

  if DataSource.DataSet.FieldByName('T183_DATE_END').IsNull then
    deDateEnd.Date := NullDate
  else
    begin
    vDateSeparator := FormatSettings.DateSeparator;
    FormatSettings.DateSeparator := '.';
    vShortDateFormat := FormatSettings.ShortDateFormat;
    FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
    try
      deDateEnd.Date := StrToDate(DataSource.DataSet.FieldByName('T183_DATE_END').AsString);
    finally
      FormatSettings.DateSeparator := vDateSeparator;
      FormatSettings.ShortDateFormat := vShortDateFormat;
    end;
    end;

  if EditType = etEdit then
    begin
    lbRegn.Enabled := False;
    edRegn.ReadOnly := True;
    edRegn.Enabled := False;
    end
  else
    begin
    lbRegn.Enabled := True;
    edRegn.ReadOnly := False;
    edRegn.Enabled := True;
    end;

  mComment.Text := DataSource.DataSet.FieldByName('T183_COMMENT').AsString;

  inherited;
end;

function TM001_InnKoEdit.CheckValues: Boolean;
begin
  // Преобразуем даты
  if deDateStart.Date = NullDate then
    begin
    if deDateStart.CanFocus then deDateStart.SetFocus;
    TAppMessages.Error('Укажите дату начала действия.');
//    DataSource.DataSet.FieldByName('T183_DATE_START').Value := Null
    end
  else
    DataSource.DataSet.FieldByName('T183_DATE_START').Value := FormatDateTime('dd.mm.yyyy', deDateStart.Date);

  if deDateEnd.Date = NullDate then
    begin
    if deDateEnd.CanFocus then deDateEnd.SetFocus;
    TAppMessages.Error('Укажите дату окончания действия.');
//    DataSource.DataSet.FieldByName('T183_DATE_END').Value := Null
    end
  else
    DataSource.DataSet.FieldByName('T183_DATE_END').Value := FormatDateTime('dd.mm.yyyy', deDateEnd.Date);

  // REGN
  if edRegn.Field.IsNull then
    begin
    if edRegn.CanFocus then edRegn.SetFocus;
    TAppMessages.Error('Укажите рег.№ КО в КГРКО.');
    end;

  // ИНН
  if edInn.Field.IsNull then
    begin
    if edInn.CanFocus then edInn.SetFocus;
    TAppMessages.Error('Укажите ИНН КО.');
    end;

  // Название
  if edName.Field.IsNull then
    begin
    if edName.CanFocus then edName.SetFocus;
    TAppMessages.Error('Укажите название КО.');
    end;


  if cbActive.Field.IsNull then
    begin
    if cbActive.CanFocus then cbActive.SetFocus;
    TAppMessages.Error('Укажите индикатор действующего КО.');
    end;

  if cbNko.Field.IsNull then
    begin
    if cbNko.CanFocus then cbNko.SetFocus;
    TAppMessages.Error('Укажите признак небанковской КО.');
    end;

  DataSource.DataSet.FieldByName('T183_COMMENT').Value := mComment.Text;

  Result := True;
end;

end.
