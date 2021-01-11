unit frm28_RezidBottomEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, DBCtrls, StdCtrls, Mask, Controls,
  Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  ComCtrls, DBDateTimePicker,
//  xxxDbLookupCheckCombo;

type
  Tfrm28_RezidBottomEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01T033_ID: TFloatField;
    ods01T033_NAME: TStringField;
    Label4: TLabel;
    lcb02: TDBLookupComboBox;
    Label5: TLabel;
    lcb03: TDBLookupComboBox;
    ods03: TOracleDataSet;
    ods03CODE: TStringField;
    ods03INDUSTRY: TStringField;
    ds02: TDataSource;
    ods02: TOracleDataSet;
    ods02KOD1: TFloatField;
    ods02NAME_RUS: TStringField;
    ds03: TDataSource;
    Label6: TLabel;
    ods04: TOracleDataSet;
    ds04: TDataSource;
    lcb04: TDBLookupComboBox;
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
  frm28_RezidBottomEdit: Tfrm28_RezidBottomEdit;

implementation

uses Forms, untMessages;
// frm28_RezidBottomForm

{$R *.DFM}

{ Tfrm28_RezidBottomEdit }

class function Tfrm28_RezidBottomEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm28_RezidBottomEdit;
end;

class function Tfrm28_RezidBottomEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm28_RezidBottomEdit;
end;

class procedure Tfrm28_RezidBottomEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm28_RezidBottomEdit) := AForm;
end;

function Tfrm28_RezidBottomEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите наименование резидента!');
  end;

  if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите ИНН резидента!');
  end;

  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите тип резидента!');
  end;

  Result := inherited SaveChange;
end;

procedure Tfrm28_RezidBottomEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource:= Value;
  ed02.DataSource:= Value;
  lcb01.DataSource:= Value;
  lcb02.DataSource:= Value;
  lcb03.DataSource:= Value;
  lcb04.DataSource:= Value;
end;

procedure Tfrm28_RezidBottomEdit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  ods02.Close;
  ods02.Open;
  ods03.Close;
  ods03.Open;
  ods04.Close;
  ods04.Open;
end;

end.
