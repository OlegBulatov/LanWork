unit frm64_711EditForm;

interface

uses
  frm04_EditForm, Db, OracleData, fm12_CurrencyFrame, Forms,
  fm07_SelectParentFrame, fm05_EmissionFrame, StdCtrls, DBCtrls, Mask,
  Controls, Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm64_711Edit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    ed01: TDBEdit;
    lcb01: TDBLookupComboBox;
    ed02: TDBEdit;
    ed05: TDBEdit;
    ed06: TDBEdit;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    Label2: TLabel;
    lcb02: TDBLookupComboBox;
    ods02: TOracleDataSet;
    ds02: TDataSource;
    ods01T051_NUMB_IN_YEA: TStringField;
    ods01T051_NUMB_IN_YEA_DESC: TStringField;
    ods02REGN: TStringField;
    ods02BANKNAME: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    ed03: TDBEdit;
    ed04: TDBEdit;
    Label13: TLabel;
    m01: TDBMemo;
    GroupBox1: TGroupBox;
    fm05_Emission: Tfm05_Emission;
    fm12_Currency: Tfm12_Currency;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    ed07: TDBEdit;
    Label9: TLabel;
    ed08: TDBEdit;
    ed09: TDBEdit;
    Label17: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    ed12: TDBEdit;
    ed11: TDBEdit;
    ed10: TDBEdit;
    Label14: TLabel;
    mDPBCmt: TDBMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  end;

var
  frm64_711Edit: Tfrm64_711Edit;

implementation

uses frm64_711ListForm, untMessages, frm30_EmissionListForm;

{$R *.DFM}

{ Tfrm64_711Edit }

function Tfrm64_711Edit.CancelChange: Boolean;
begin
  // отменяем изменения
  Result := frm64_711List.CancelChange;
end;

class function Tfrm64_711Edit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm64_711Edit;
end;

class function Tfrm64_711Edit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm64_711Edit;
end;

function Tfrm64_711Edit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите наименование ТУ!');
  end;

  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите отчетный период!');
  end;

  if lcb02.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите регистрационный номер КО!');
  end;

  {if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите номер лицензии!');
  end;}

  if fm05_Emission.lcbSelect.Field.IsNull then
  begin
    if fm05_Emission.lcbSelect.CanFocus then fm05_Emission.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите эмиссию ц.б.!');
  end;

  if fm12_Currency.lcbSelect.Field.IsNull then
  begin
    if fm12_Currency.lcbSelect.CanFocus then fm12_Currency.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите валюту!');
  end;

  if ed05.Field.IsNull then
  begin
    if ed05.CanFocus then ed05.SetFocus;
    TAppMessages.Error('Введите целую часть!');
  end;

  if ed05.Field.AsFloat < 0 then
  begin
    if ed05.CanFocus then ed05.SetFocus;
    TAppMessages.Error('Целая часть не может быть меньше нуля!');
  end;

  if ed06.Field.IsNull then
  begin
    if ed06.CanFocus then ed06.SetFocus;
    TAppMessages.Error('Введите дробную часть!');
  end;

  if ed06.Field.AsFloat < 0 then
  begin
    if ed06.CanFocus then ed06.SetFocus;
    TAppMessages.Error('Дробная часть не может быть меньше нуля!');
  end;

  if ed07.Field.IsNull then
  begin
    if ed07.CanFocus then ed07.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_S!');
  end;

  if ed07.Field.AsFloat < 0 then
  begin
    if ed07.CanFocus then ed07.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_S не может быть меньше нуля!');
  end;

  if ed08.Field.IsNull then
  begin
    if ed08.CanFocus then ed08.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_ZG!');
  end;

  if ed08.Field.AsFloat < 0 then
  begin
    if ed08.CanFocus then ed08.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_ZG не может быть меньше нуля!');
  end;

  if ed09.Field.IsNull then
  begin
    if ed09.CanFocus then ed09.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_DU!');
  end;

  if ed09.Field.AsFloat < 0 then
  begin
    if ed09.CanFocus then ed09.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_DU не может быть меньше нуля!');
  end;

  if ed10.Field.IsNull then
  begin
    if ed10.CanFocus then ed10.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_ES!');
  end;

  if ed10.Field.AsFloat < 0 then
  begin
    if ed10.CanFocus then ed10.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_ES не может быть меньше нуля!');
  end;

  if ed11.Field.IsNull then
  begin
    if ed11.CanFocus then ed11.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_EM!');
  end;

  if ed11.Field.AsFloat < 0 then
  begin
    if ed11.CanFocus then ed11.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_EM не может быть меньше нуля!');
  end;

  if ed12.Field.IsNull then
  begin
    if ed12.CanFocus then ed12.SetFocus;
    TAppMessages.Error('Введите кол-во ц.б. KO_IN!');
  end;

  if ed12.Field.AsFloat < 0 then
  begin
    if ed12.CanFocus then ed12.SetFocus;
    TAppMessages.Error('Кол-во ц.б. KO_IN не может быть меньше нуля!');
  end;

  Result := frm64_711List.SaveChange;
end;

class procedure Tfrm64_711Edit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm64_711Edit) := AForm;
end;

procedure Tfrm64_711Edit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  ods02.Close;
  ods02.Open;
  fm05_Emission.FSearchBy := tsbSecRegn;
  fm05_Emission.FSecTypes := tstAll; // Все
  fm05_Emission.odsSelect.Close;
  fm05_Emission.odsSelect.Open;
  fm12_Currency.odsSelect.Close;
  fm12_Currency.odsSelect.Open;
end;

end.
