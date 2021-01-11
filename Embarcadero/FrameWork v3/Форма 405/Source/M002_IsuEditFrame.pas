unit M002_IsuEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm002_EditFrame, ActnList, StdCtrls, Mask, DBCtrls,
  xxxDbLookupCheckCombo, ComCtrls, Db, OracleData,
  ToolEdit, RXDBCtrl, Oracle, RxToolEdit, System.Actions, Variants;

type
  TM002_IsuEdit = class(TfmEdit)
    edIsuName: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    edMasterName: TDBEdit;
    Label3: TLabel;
    edMasterLic: TDBEdit;
    Label4: TLabel;
    edMasterInn: TDBEdit;
    Label5: TLabel;
    edSecRegn: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    lblSecType: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblCurrency: TLabel;
    Label12: TLabel;
    lcbIssuerType: TxxxDBLookupCheckCombo;
    odsIssuerType: TOracleDataSet;
    dsIssuerType: TDataSource;
    Label13: TLabel;
    lcbSecType: TxxxDBLookupCheckCombo;
    odsSecType: TOracleDataSet;
    dsSecType: TDataSource;
    lcbCurrency: TxxxDBLookupCheckCombo;
    odsCurrency: TOracleDataSet;
    dsCurrency: TDataSource;
    deAnnDate: TDateEdit;
    deRegDate: TDateEdit;
    deChangeDate: TDateEdit;
    deUpdateDate: TDateEdit;
    cbActual: TDBComboBox;
    oqCheckInn: TOracleQuery;
  private
    { Private declarations }
  public
    procedure SetDataSource(Value: TDataSource); override;
    procedure InitFrame(Sender: TObject);  override;
    function CheckValues: Boolean; override;
  end;

var
  M002_IsuEdit: TM002_IsuEdit;

implementation

uses
  DateUtil, untMessages;

{$R *.DFM}

{ TM002_IsuEdit }

procedure TM002_IsuEdit.SetDataSource(Value: TDataSource);
begin
  inherited;

  edIsuName.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    edIsuName.DataField := 'T185_ISU_NAME'
  else
    edIsuName.DataField := 'T186_ISU_NAME';

  edMasterName.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    edMasterName.DataField := 'T185_MASTER_COMPANY_NAME'
  else
    edMasterName.DataField := 'T186_MASTER_COMPANY_NAME';

  edMasterLic.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    edMasterLic.DataField := 'T185_MASTER_COMPANY_LIC'
  else
    edMasterLic.DataField := 'T186_MASTER_COMPANY_LIC';

  edMasterInn.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    edMasterInn.DataField := 'T185_MASTER_COMPANY_INN'
  else
    edMasterInn.DataField := 'T186_MASTER_COMPANY_INN';

  edSecRegn.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    edSecRegn.DataField := 'T185_SEC_REGN'
  else
    edSecRegn.DataField := 'T186_SEC_REGN';

  odsIssuerType.Close;
  lcbIssuerType.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    lcbIssuerType.DataField := 'T037_ID';
    lcbIssuerType.LookupField := 'T037_ID';
    end
  else
    begin
    lcbIssuerType.DataField := 'T186_ISSUER_TYPE';
    lcbIssuerType.LookupField := 'T037_SHOT_NAME';
    end;

  lcbSecType.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    lblSecType.Enabled := False;
    lcbSecType.Enabled := False;
    lcbSecType.DataField := 'T027_ID';
    lcbSecType.LookupField := 'T027_ID';
    end
  else
    begin
    lblSecType.Enabled := True;
    lcbSecType.Enabled := True;
    lcbSecType.DataField := 'T186_SEC_TYPE';
    lcbSecType.LookupField := 'T027_SEC_TYPE';
    end;

  cbActual.Items.Clear;
  cbActual.Items.Add('0');
  cbActual.Items.Add('1');
  cbActual.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    cbActual.DataField := 'T185_ACTUAL_BANK';
    end
  else
    begin
    cbActual.DataField := 'T186_ACTUAL_BANK';
    end;

  lcbCurrency.DataSource := Value;
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    lblCurrency.Enabled := False;
    lcbCurrency.Enabled := False;
    lcbCurrency.DataField := 'T185_CURRENCY';
    end
  else
    begin
    lblCurrency.Enabled := True;
    lcbCurrency.Enabled := True;
    lcbCurrency.DataField := 'T186_CURRENCY';
    end;
end;

procedure TM002_IsuEdit.InitFrame(Sender: TObject);
var
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
  odsIssuerType.Close;
  odsIssuerType.Open;

  odsSecType.Close;
  odsSecType.Open;

  odsCurrency.Close;
  odsCurrency.Open;

  if Owner.ClassName = 'TM002_IsuList' then
    begin
    if DataSource.DataSet.FieldByName('T185_REG_DATE').IsNull then
      deRegDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deRegDate.Date := StrToDate(DataSource.DataSet.FieldByName('T185_REG_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end
  else
    begin
    if DataSource.DataSet.FieldByName('T186_REG_DATE').IsNull or
      (DataSource.DataSet.FieldByName('T186_REG_DATE_ERR').AsFloat = 1) then
      deRegDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deRegDate.Date := StrToDate(DataSource.DataSet.FieldByName('T186_REG_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end;

  if Owner.ClassName = 'TM002_IsuList' then
    begin
    if DataSource.DataSet.FieldByName('T185_MASTER_CHANGE_DATE').IsNull then
      deChangeDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deChangeDate.Date := StrToDate(DataSource.DataSet.FieldByName('T185_MASTER_CHANGE_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end
  else
    begin
    if DataSource.DataSet.FieldByName('T186_MASTER_CHANGE_DATE').IsNull or
      (DataSource.DataSet.FieldByName('T186_MASTER_CHANGE_DATE_ERR').AsFloat = 1) then
      deChangeDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deChangeDate.Date := StrToDate(DataSource.DataSet.FieldByName('T186_MASTER_CHANGE_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
   end;

  if Owner.ClassName = 'TM002_IsuList' then
    begin
    if DataSource.DataSet.FieldByName('T185_ANNUAL_DATE').IsNull then
      deAnnDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deAnnDate.Date := StrToDate(DataSource.DataSet.FieldByName('T185_ANNUAL_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end
  else
    begin
    if DataSource.DataSet.FieldByName('T186_ANN_DATE').IsNull or
      (DataSource.DataSet.FieldByName('T186_ANN_DATE_ERR').AsFloat = 1) then
      deAnnDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deAnnDate.Date := StrToDate(DataSource.DataSet.FieldByName('T186_ANN_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end;

  if Owner.ClassName = 'TM002_IsuList' then
    begin
    if DataSource.DataSet.FieldByName('T185_DATA_CHANGE_DATE').IsNull then
      deUpdateDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deUpdateDate.Date := StrToDate(DataSource.DataSet.FieldByName('T185_DATA_CHANGE_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end
  else
    begin
    if DataSource.DataSet.FieldByName('T186_DATA_CHANGE_DATE').IsNull or
      (DataSource.DataSet.FieldByName('T186_DATA_CHANGE_DATE_ERR').AsFloat = 1) then
      deUpdateDate.Date := NullDate
    else
      begin
      vDateSeparator := FormatSettings.DateSeparator;
      FormatSettings.DateSeparator := '.';
      vShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
      try
        deUpdateDate.Date := StrToDate(DataSource.DataSet.FieldByName('T186_DATA_CHANGE_DATE').AsString);
      finally
        FormatSettings.DateSeparator := vDateSeparator;
        FormatSettings.ShortDateFormat := vShortDateFormat;
      end;
      end;
    end;

  inherited;
end;

function TM002_IsuEdit.CheckValues: Boolean;
var
  i: integer;
  s: string;
begin
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    s := UpperCase(edSecRegn.Text);
    i := Pos('ISU', UpperCase(edSecRegn.Text));
    if (i = 0) or (i <> 1) then
      begin
      if edSecRegn.CanFocus then edSecRegn.SetFocus;
      TAppMessages.Error('Неправильный рег.№ правил ДУ');
      end;

    s := Copy(edSecRegn.Text, 4, Length(edSecRegn.Text));
    try
      StrToInt(Copy(edSecRegn.Text, 4, Length(edSecRegn.Text)))
    except
      if edSecRegn.CanFocus then edSecRegn.SetFocus;
      TAppMessages.Error('Неправильный рег.№ правил ДУ');
    end;
    end;

  oqCheckInn.SetVariable('INN', edMasterInn.Text);
  oqCheckInn.Execute;
  if oqCheckInn.GetVariable('RESULT') <> 1 THEN
    begin
    if edMasterInn.CanFocus then edMasterInn.SetFocus;
      TAppMessages.Error('Неправильный ИНН');
    end;

  // Преобразуем даты
  if Owner.ClassName = 'TM002_IsuList' then
    begin
    if deRegDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T185_REG_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T185_REG_DATE').Value := FormatDateTime('dd.mm.yyyy', deRegDate.Date);

    if deChangeDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T185_MASTER_CHANGE_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T185_MASTER_CHANGE_DATE').Value := FormatDateTime('dd.mm.yyyy', deChangeDate.Date);

    if deAnnDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T185_ANNUAL_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T185_ANNUAL_DATE').Value := FormatDateTime('dd.mm.yyyy', deAnnDate.Date);

    if deUpdateDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T185_DATA_CHANGE_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T185_DATA_CHANGE_DATE').Value := FormatDateTime('dd.mm.yyyy', deUpdateDate.Date);
    end
  else
    begin
    if deRegDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T186_REG_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T186_REG_DATE').Value := FormatDateTime('dd.mm.yyyy', deRegDate.Date);

    if deChangeDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T186_MASTER_CHANGE_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T186_MASTER_CHANGE_DATE').Value := FormatDateTime('dd.mm.yyyy', deChangeDate.Date);

    if deAnnDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T186_ANN_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T186_ANN_DATE').Value := FormatDateTime('dd.mm.yyyy', deAnnDate.Date);

    if deUpdateDate.Date = NullDate then
      DataSource.DataSet.FieldByName('T186_DATA_CHANGE_DATE').Value := Null
    else
      DataSource.DataSet.FieldByName('T186_DATA_CHANGE_DATE').Value := FormatDateTime('dd.mm.yyyy', deUpdateDate.Date);
    end;

  Result := True;
end;

end.

