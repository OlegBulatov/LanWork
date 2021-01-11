unit frm49_NRezidBottomEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, Forms, fm07_SelectParentFrame,
  fm13_CountryFrame, DBCtrls, StdCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, DBDateTimePicker

type
  Tfrm49_NRezidBottomEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01T034_ID: TFloatField;
    ods01T034_NAME: TStringField;
    fm13_Country: Tfm13_Country;
    procedure FormShow(Sender: TObject);
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
  frm49_NRezidBottomEdit: Tfrm49_NRezidBottomEdit;

implementation

uses untMessages;
// frm49_NRezidBottomForm,

{$R *.DFM}

{ Tfrm49_NRezidBottomEdit }

class function Tfrm49_NRezidBottomEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm49_NRezidBottomEdit;
end;

class function Tfrm49_NRezidBottomEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm49_NRezidBottomEdit;
end;

function Tfrm49_NRezidBottomEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите наименование нерезидента!');
  end;

  if fm13_Country.lcbSelect.Field.IsNull then
  begin
    if fm13_Country.lcbSelect.CanFocus then fm13_Country.lcbSelect.SetFocus;
    TAppMessages.Error('¬ыберите страну нерезидента!');
  end;

  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('¬ыберите тип нерезидента!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm49_NRezidBottomEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm49_NRezidBottomEdit) := AForm;
end;

procedure Tfrm49_NRezidBottomEdit.FormShow(Sender: TObject);
begin
  fm13_Country.odsSelect.Close;
  fm13_Country.odsSelect.Open;
  ods01.Close;
  ods01.Open;
end;

procedure Tfrm49_NRezidBottomEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource:= Value;
  lcb01.DataSource:= Value;
  fm13_Country.lcbSelect.DataSource:= Value;  
//
end;


end.
