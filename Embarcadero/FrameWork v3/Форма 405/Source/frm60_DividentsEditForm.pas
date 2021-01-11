unit frm60_DividentsEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, ComCtrls, DBDateTimePicker, DBCtrls,
  StdCtrls, Mask, Controls, Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  fm07_SelectParentFrame
//  dm005_MainData;

type
  Tfrm60_DividentsEdit = class(Tfrm04_Edit)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    lcb01: TDBLookupComboBox;
    lcb02: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods02: TOracleDataSet;
    ds02: TDataSource;
    ods02T027_ID: TFloatField;
    ods02T027_SEC_TYPE: TStringField;
    ods01T028_ID: TFloatField;
    ods01T028_SHOT_NAME: TStringField;
    ods03: TOracleDataSet;
    ds03: TDataSource;
    ods04: TOracleDataSet;
    ds04: TDataSource;
    ods03T050_ID: TFloatField;
    ods03T028_ID: TFloatField;
    ods03T027_ID: TFloatField;
    ods03T050_DATE: TDateTimeField;
    ods03T050_SUM: TFloatField;
    ods03T050_711_COUNT: TFloatField;
    ods03T050_OTH_COUNT: TFloatField;
    ods03T050_TYPE: TIntegerField;
    ods03T050_TYPE_DESC: TStringField;
    ods03T028_CODE: TStringField;
    ods03T028_SHOT_NAME: TStringField;
    ods03T025_SHOT_NAME: TStringField;
    ods03T027_SEC_TYPE: TStringField;
    ods03T050_USD_SUM: TFloatField;
    ods03T050_TAX_SUM: TFloatField;
    ods03T050_TAX_VALUE: TFloatField;
    ods03T050_TOTAL_SUM: TFloatField;
    ods04T050_ID: TFloatField;
    ods04T028_ID: TFloatField;
    ods04T027_ID: TFloatField;
    ods04T050_DATE: TDateTimeField;
    ods04T050_SUM: TFloatField;
    ods04T050_711_COUNT: TFloatField;
    ods04T050_OTH_COUNT: TFloatField;
    ods04T050_TYPE: TIntegerField;
    ods04T050_TYPE_DESC: TStringField;
    ods04T028_CODE: TStringField;
    ods04T028_SHOT_NAME: TStringField;
    ods04T025_SHOT_NAME: TStringField;
    ods04T027_SEC_TYPE: TStringField;
    ods04T050_USD_SUM: TFloatField;
    ods04T050_TAX_SUM: TFloatField;
    ods04T050_TAX_VALUE: TFloatField;
    ods04T050_TOTAL_SUM: TFloatField;
    Label5: TLabel;
    dt01: TDBDateTimePicker;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    ed01: TDBEdit;
    Label4: TLabel;
    ed02: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    ed04: TDBEdit;
    ed03: TDBEdit;
    Label12: TLabel;
    ed08: TDBEdit;
    ed07: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    ed06: TDBEdit;
    ed05: TDBEdit;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ods03ApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure ed01Change(Sender: TObject);
    procedure ed05Change(Sender: TObject);
    procedure lcb01CloseUp(Sender: TObject);
    procedure ds01DataChange(Sender: TObject; Field: TField);
//    procedure ds03DataChange(Sender: TObject; Field: TField);
  private
    DataSource: TDataSource;
    procedure RefreshIssures;
    procedure RefreshSecType;
  protected
    procedure SetDataSource(Value: TDataSource); override;
    //
    function SaveChange: Boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    edit1: boolean;
    edit2: boolean;
  end;

var
  frm60_DividentsEdit: Tfrm60_DividentsEdit;

implementation

uses Forms, untMessages;
// frm60_DividentsListForm

{$R *.DFM}

{ Tfrm44_RezidGroupEdit }

class function Tfrm60_DividentsEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm60_DividentsEdit;
end;

class function Tfrm60_DividentsEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm60_DividentsEdit;
end;

function Tfrm60_DividentsEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите эмитента!');
  end;

  if lcb02.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите тип ц.б.!');
  end;

  if dt01.Field.IsNull then
  begin
    if dt01.CanFocus then dt01.SetFocus;
    TAppMessages.Error('Выберите дату!');
  end;

{  if lcb03.Field.IsNull then
  begin
    if lcb03.CanFocus then lcb03.SetFocus;
    TAppMessages.Error('Выберите тип дивиденда!');
  end;}

  if edit1 then
  begin

    // для SHS4 разрешать выбирать только портфельные
    if (lcb02.KeyValue = 4) then
    begin
      TAppMessages.Error('Для ценных бумаг SHS4 тип портфеля не может быть Прямые!');
    end;

    if ed01.Field.IsNull then
    begin
      if ed01.CanFocus then ed01.SetFocus;
      TAppMessages.Error('Введите кол-во ц.б. (711)!');
    end;

    if ed01.Field.AsFloat < 0 then
    begin
      if ed01.CanFocus then ed01.SetFocus;
      TAppMessages.Error('Кол-во ц.б. (711) не может быть меньше нуля!');
    end;

    if ed02.Field.IsNull then
    begin
      if ed02.CanFocus then ed02.SetFocus;
      TAppMessages.Error('Введите кол-во ц.б. (прочие)!');
    end;

    if ed02.Field.AsFloat < 0 then
    begin
      if ed02.CanFocus then ed02.SetFocus;
      TAppMessages.Error('Кол-во ц.б. (прочие) не может быть меньше нуля!');
    end;

    if ed03.Field.IsNull then
    begin
      if ed03.CanFocus then ed03.SetFocus;
      TAppMessages.Error('Введите сумму!');
    end;

    if ed03.Field.AsFloat < 0 then
    begin
      if ed03.CanFocus then ed03.SetFocus;
      TAppMessages.Error('Сумма не может быть меньше нуля!');
    end;

    if ed04.Field.IsNull then
    begin
      if ed04.CanFocus then ed04.SetFocus;
      TAppMessages.Error('Введите процент налога!');
    end;

    if ed04.Field.AsFloat < 0 then
    begin
      if ed04.CanFocus then ed04.SetFocus;
      TAppMessages.Error('Процент налога не может быть меньше нуля!');
    end;

  end;

	if edit2 then
  begin

    if ed05.Field.IsNull then
    begin
      if ed05.CanFocus then ed05.SetFocus;
      TAppMessages.Error('Введите кол-во ц.б. (711)!');
    end;

    if ed05.Field.AsFloat < 0 then
    begin
      if ed05.CanFocus then ed05.SetFocus;
      TAppMessages.Error('Кол-во ц.б. (711) не может быть меньше нуля!');
    end;

    if ed06.Field.IsNull then
    begin
      if ed06.CanFocus then ed06.SetFocus;
      TAppMessages.Error('Введите кол-во ц.б. (прочие)!');
    end;

    if ed06.Field.AsFloat < 0 then
    begin
      if ed06.CanFocus then ed06.SetFocus;
      TAppMessages.Error('Кол-во ц.б. (прочие) не может быть меньше нуля!');
    end;

    if ed07.Field.IsNull then
    begin
      if ed07.CanFocus then ed07.SetFocus;
      TAppMessages.Error('Введите сумму!');
    end;

    if ed07.Field.AsFloat < 0 then
    begin
      if ed07.CanFocus then ed07.SetFocus;
      TAppMessages.Error('Сумма не может быть меньше нуля!');
    end;

    if ed08.Field.IsNull then
    begin
      if ed08.CanFocus then ed08.SetFocus;
      TAppMessages.Error('Введите процент налога!');
    end;

    if ed08.Field.AsFloat < 0 then
    begin
      if ed08.CanFocus then ed08.SetFocus;
      TAppMessages.Error('Процент налога не может быть меньше нуля!');
    end;

  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm60_DividentsEdit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm60_DividentsEdit) := AForm;
end;

procedure Tfrm60_DividentsEdit.FormShow(Sender: TObject);
begin
  RefreshIssures;
  ods03.Close;
  ods03.SetVariable('T027_ID', DataSource.Dataset['T027_ID']);
  ods03.SetVariable('T028_ID', DataSource.Dataset['T028_ID']);
  ods03.SetVariable('T050_DATE', DataSource.Dataset['T050_DATE']);
  ods03.Open;
  if ods03.RecordCount = 0 then
  begin
	  ods03.Insert;
	  ods03T050_TAX_VALUE.Value := 12.5;
  end
  else begin
   	ods03.Edit;
  end;
  ods04.Close;
  ods04.SetVariable('T027_ID', DataSource.Dataset['T027_ID']);
  ods04.SetVariable('T028_ID', DataSource.Dataset['T028_ID']);
  ods04.SetVariable('T050_DATE', DataSource.Dataset['T050_DATE']);
  ods04.Open;
  if ods04.RecordCount = 0 then
  begin
	  ods04.Insert;
	  ods04T050_TAX_VALUE.Value := 15;
  end
  else begin
   	ods04.Edit;
  end;
  edit1:= (ed01.Text <> '') or (ed02.Text <> '') or (ed03.Text <> '') or (ed04.Text <> '');
  edit2:= (ed05.Text <> '') or (ed06.Text <> '') or (ed07.Text <> '') or (ed08.Text <> '');
end;

procedure Tfrm60_DividentsEdit.SetDataSource(Value: TDataSource);
begin
  lcb01.DataSource:= Value;
  lcb02.DataSource:= Value;
//  lcb03.DataSource:= Value;
//  ed01.DataSource:= Value;
//  ed02.DataSource:= Value;
//  ed03.DataSource:= Value;
  dt01.DataSource:= Value;
  DataSource:= Value;
//
end;

{procedure Tfrm60_DividentsEdit.ds03DataChange(Sender: TObject;
  Field: TField);
begin
//
  if ods03T050_TYPE.AsInteger = 1 then
    frm60_DividentsList.DataSet.FieldByName('T050_TAX_VALUE').AsFloat := 12.5
  else if ods03T050_TYPE.AsInteger = 2 then
    frm60_DividentsList.DataSet.FieldByName('T050_TAX_VALUE').AsFloat := 15;
end;}

procedure Tfrm60_DividentsEdit.ods03ApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  inherited;
	Applied := true;
end;

procedure Tfrm60_DividentsEdit.ed01Change(Sender: TObject);
begin
	edit1 := (ed01.Text <> '') or (ed02.Text <> '') or (ed03.Text <> '') or (ed04.Text <> '');
end;

procedure Tfrm60_DividentsEdit.ed05Change(Sender: TObject);
begin
	edit2 := (ed05.Text <> '') or (ed06.Text <> '') or (ed07.Text <> '') or (ed08.Text <> '');
end;

procedure Tfrm60_DividentsEdit.RefreshSecType;
begin
  ods02.Close;
  ods02.SetVariable('T028_ID', ods01.FieldByName('T028_ID').AsFloat);
  ods02.Open;
//  ods02.First;
//  lcb02.KeyValue := ods02.FieldByName(lcb02.KeyField).AsFloat;
end;

procedure Tfrm60_DividentsEdit.lcb01CloseUp(Sender: TObject);
begin
  RefreshSecType;
  //ods02.First;
  //lcb02.KeyValue := ods02.FieldByName(lcb02.KeyField).AsFloat;
end;

procedure Tfrm60_DividentsEdit.RefreshIssures;
begin
  ods01.Close;
  ods01.Open;
//  ods01.Last;
//  lcb01.KeyValue := ods01.FieldByName(lcb01.KeyField).AsFloat;

  RefreshSecType;
end;

procedure Tfrm60_DividentsEdit.ds01DataChange(Sender: TObject;
  Field: TField);
begin
	RefreshSecType;
end;

end.
