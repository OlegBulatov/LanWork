unit frm32_IssuerEditForm;

interface

uses
  frm04_EditForm, OracleData, Db, ComCtrls, DbCtrls, StdCtrls,
  frm00_ParentForm, fm42_IndustryFrame, Forms, fm07_SelectParentFrame,
  Mask, Controls, Classes, ActnList, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , , ActnList, ExtCtrls
//  Mask, fm07_SelectParentFrame, , Buttons,

type
  Tfrm32_IssuerEdit = class(Tfrm04_Edit)
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01T025_ID: TFloatField;
    ods01T025_LONG_NAME: TStringField;
    ods02: TOracleDataSet;
    ods02ID: TFloatField;
    ods02ISO_DIG: TFloatField;
    ods02SHORT_NAME: TStringField;
    ods02FULL_NAME: TStringField;
    ds02: TDataSource;
    odsSelectRgn: TOracleDataSet;
    dsSelectRgn: TDataSource;
    odsSelectRgnREGION_CODE: TFloatField;
    odsSelectRgnREGION_NAME: TStringField;
    ods02T028_COUNTRY_ID: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ed01: TDBEdit;
    Label1: TLabel;
    Label11: TLabel;
    ed06: TDBEdit;
    Label4: TLabel;
    lcb01: TDBLookupComboBox;
    Label5: TLabel;
    ed02: TDBEdit;
    Label2: TLabel;
    lcb02: TDBLookupComboBox;
    Label7: TLabel;
    lcbSelectRgn: TDBLookupComboBox;
    Label6: TLabel;
    lcb03: TDBLookupComboBox;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ed03: TDBEdit;
    cb01: TDBCheckBox;
    cb02: TDBCheckBox;
    ed04: TDBEdit;
    ed05: TDBEdit;
    chNotFP: TDBCheckBox;
    edSparkID: TDBEdit;
    ed07: TDBEdit;
    ed08: TDBEdit;
    ed09: TDBEdit;
    ed10: TDBEdit;
    cb03: TDBCheckBox;
    cb04: TDBCheckBox;
    ed11: TDBEdit;
    ed12: TDBEdit;
    ed13: TDBEdit;
    ed14: TDBEdit;
    ed15: TDBEdit;
    ods03: TOracleDataSet;
    ods03T037_ID: TFloatField;
    ods03T037_LONG_NAME: TStringField;
    ds03: TDataSource;
    fm42_Industry: Tfm42_Industry;
    Label21: TLabel;
    m03: TDBMemo;
    Label12: TLabel;
    m02: TDBMemo;
    Label22: TLabel;
    ed16: TDBEdit;
    lcb04: TDBLookupComboBox;
    ods04: TOracleDataSet;
    DataSource1: TDataSource;
    ds04: TDataSource;
    Label23: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ds01DataChange(Sender: TObject; Field: TField);
    procedure fm42_IndustrylcbSelectCloseUp(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm32_IssuerEdit: Tfrm32_IssuerEdit;

implementation

uses
  Graphics, untMessages;
//frm32_IssuerListForm,
{$R *.DFM}

{ Tfrm32_IssuerEdit }

class function Tfrm32_IssuerEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm32_IssuerEdit;
end;

class function Tfrm32_IssuerEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm32_IssuerEdit;
end;

function Tfrm32_IssuerEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите наименование эмитента!');
  end;

  if lcb01.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите тип эмитента!');
  end;

  if lcb04.Field.IsNull then
  begin
    if lcb04.CanFocus then lcb04.SetFocus;
    TAppMessages.Error('Выберите вид эмитента!');
  end;

  if (lcb01.Field.AsInteger = 9) and ed02.Field.IsNull then  // Резидент
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите ИНН эмитента!');
  end;

  if (lcb01.Field.AsInteger <> 9) and lcb02.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите страну эмитента!');
  end;

  if lcb01.Field.AsInteger = 9 then // Резидент
    lcb02.Field.Clear
  else // Нерезидент
    begin
    lcbSelectRgn.Field.AsFloat := -1000;
    ed02.Field.AsString := '-';
    end;

   // ОКОПФ - ???
//  if lcb03.Field.IsNull then
//  begin
//    if lcb03.CanFocus then lcb03.SetFocus;
//    TAppMessages.Error('Выберите код эмитента!');
//  end;

  // Отрасль - ???
//  if fm42_Industry.lcbSelect.Field.IsNull then
//  begin
//    if fm42_Industry.lcbSelect.CanFocus then fm42_Industry.lcbSelect.SetFocus;
//    TAppMessages.Error('Выберите отрасль!');
//  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm32_IssuerEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm32_IssuerEdit) := AForm;
end;

procedure Tfrm32_IssuerEdit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  ods04.Close;
  ods04.Open;
  ods02.Close;
  ods02.Open;
  ods03.Close;
  ods03.Open;
  odsSelectRgn.Close;
  odsSelectRgn.Open;
  fm42_Industry.odsSelect.Close;
  fm42_Industry.odsSelect.Open;
  fm42_Industry.fm43_Sectors1.odsSelect.Close;
  fm42_Industry.fm43_Sectors1.odsSelect.Open;
end;

procedure Tfrm32_IssuerEdit.ds01DataChange(Sender: TObject; Field: TField);
begin
  if lcb01.Field.AsInteger= 9 then
    // Резидент
    begin
    ed02.Enabled:= true;
    lcb02.Enabled:= false;
    ed02.Color:= clWindow;
    lcb02.Color:= clBtnFace;
    lcbSelectRgn.Enabled := TRUE;
    lcbSelectRgn.Color := clWindow;
    end
  else
    // Все остальные
    begin
    ed02.Enabled:= false;
    lcb02.Enabled:= true;
    ed02.Color:= clBtnFace;
    lcb02.Color:= clWindow;
    lcbSelectRgn.Enabled := FALSE;
    lcbSelectRgn.Color := clBtnFace;
    end;
end;

procedure Tfrm32_IssuerEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource:= Value;
  ed02.DataSource:= Value;
  ed03.DataSource:= Value;
  ed04.DataSource:= Value;
  ed05.DataSource:= Value;
  ed06.DataSource:= Value;
  ed07.DataSource:= Value;
  ed08.DataSource:= Value;
  ed09.DataSource:= Value;
  ed10.DataSource:= Value;
  ed11.DataSource:= Value;
  lcb01.DataSource:= Value;
  lcb04.DataSource:= Value;
  lcb02.DataSource:= Value;
  lcb03.DataSource:= Value;
  lcbSelectRgn.DataSource := Value;
  cb01.DataSource:= Value;
  cb02.DataSource:= Value;
  cb03.DataSource:= Value;
  cb04.DataSource:= Value;
  m02.DataSource:= Value;
  fm42_Industry.lcbSelect.DataSource := Value;
  fm42_Industry.fm43_Sectors1.lcbSelect.DataSource := Value;
  chNotFP.DataSource:= Value;
  edSparkID.DataSource := Value;
  ed12.DataSource:= Value;
  ed13.DataSource:= Value;
  ed14.DataSource:= Value;
  ed15.DataSource:= Value;
  m03.DataSource := Value;
end;

procedure Tfrm32_IssuerEdit.fm42_IndustrylcbSelectCloseUp(Sender: TObject);
begin
  fm42_Industry.IssuerName := ed01.Text;

  inherited;
  fm42_Industry.lcbSelectCloseUp(Sender);
end;

end.
