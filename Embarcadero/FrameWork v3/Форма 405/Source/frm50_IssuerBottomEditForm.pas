unit frm50_IssuerBottomEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Db, OracleData, fm13_CountryFrame,
  fm42_IndustryFrame, frm00_ParentForm, fm07_SelectParentFrame, Mask,
  Controls, Classes, ActnList, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  ActnList, ExtCtrls, Db,
//  ComCtrls, DBDateTimePicker, Mask,
//  fm07_SelectParentFrame,

type
  Tfrm50_IssuerBottomEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    Label4: TLabel;
    ed02: TDBEdit;
    ods01T025_ID: TFloatField;
    ods01T025_SHOT_NAME: TStringField;
    fm13_Country: Tfm13_Country;
    lcbRegion: TDBLookupComboBox;
    Label2: TLabel;
    odsRegion: TOracleDataSet;
    odsRegionREGION_CODE: TFloatField;
    dsRegion: TDataSource;
    odsRegionREGION_NAME: TStringField;
    fm42_Industry: Tfm42_Industry;
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
  frm50_IssuerBottomEdit: Tfrm50_IssuerBottomEdit;

implementation

uses
  Graphics, untMessages;
//   frm50_IssuerBottomForm,

{$R *.DFM}

{ Tfrm50_IssuerBottomEdit }

class function Tfrm50_IssuerBottomEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm50_IssuerBottomEdit;
end;

class function Tfrm50_IssuerBottomEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm50_IssuerBottomEdit;
end;

function Tfrm50_IssuerBottomEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите наименование эмитента!');
  end;

  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите тип эмитента!');
  end;

  if (lcb01.Field.AsInteger= 9) and ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите ИНН эмитента!');
  end;

  if (lcb01.Field.AsInteger<> 9) and fm13_Country.lcbSelect.Field.IsNull then
  begin
    if fm13_Country.lcbSelect.CanFocus then fm13_Country.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите страну эмитента!');
  end;

  if fm42_Industry.lcbSelect.Field.IsNull then
  begin
    if fm42_Industry.lcbSelect.CanFocus then fm42_Industry.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите отрасль!');
  end;

  if lcb01.Field.AsInteger = 9 then // Резидент
    fm13_Country.lcbSelect.Field.Clear
  else
    begin
    ed02.Field.Clear;
    lcbRegion.Field.Clear;
    end;

  Result := inherited SaveChange;
end;

class procedure Tfrm50_IssuerBottomEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm50_IssuerBottomEdit) := AForm;
end;

procedure Tfrm50_IssuerBottomEdit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  fm13_Country.odsSelect.Close;
  fm13_Country.odsSelect.Open;
  fm42_Industry.odsSelect.Close;
  fm42_Industry.odsSelect.Open;
  fm42_Industry.fm43_Sectors1.odsSelect.Close;
  fm42_Industry.fm43_Sectors1.odsSelect.Open;
  odsRegion.Close;
  odsRegion.Open;
end;

procedure Tfrm50_IssuerBottomEdit.ds01DataChange(Sender: TObject;
  Field: TField);
begin
  if lcb01.Field.AsInteger= 9 then // Резидент
  begin
    ed02.Enabled:= true;
    ed02.Color:= clWindow;
    fm13_Country.lcbSelect.Enabled:= false;
    fm13_Country.lcbSelect.Color:= clBtnFace;
    fm13_Country.btnSelect.Enabled:= false;
    lcbRegion.Enabled := TRUE;
    lcbRegion.Color := clWindow;
  end
  else begin
    ed02.Enabled:= false;
    ed02.Color:= clBtnFace;
    fm13_Country.lcbSelect.Enabled:= true;
    fm13_Country.lcbSelect.Color:= clWindow;
    fm13_Country.btnSelect.Enabled:= true;
    lcbRegion.Enabled := FALSE;
    lcbRegion.Color := clBtnFace;
  end;
end;

procedure Tfrm50_IssuerBottomEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource := Value;
  ed02.DataSource := Value;
  lcb01.DataSource := Value;
  fm13_Country.lcbSelect.DataSource := Value;
  fm42_Industry.lcbSelect.DataSource := Value;
  fm42_Industry.fm43_Sectors1.lcbSelect.DataSource := Value;
  lcbRegion.DataSource := Value;
end;

procedure Tfrm50_IssuerBottomEdit.fm42_IndustrylcbSelectCloseUp(
  Sender: TObject);
begin
  fm42_Industry.IssuerName := ed01.Text;

  inherited;
  fm42_Industry.lcbSelectCloseUp(Sender);
end;

end.
