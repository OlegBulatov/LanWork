unit frm58_101EditForm;

interface

uses
  frm04_EditForm, Db, OracleData, StdCtrls, Mask, DBCtrls, Controls,
  Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  dm005_MainData;

type
  Tfrm58_101Edit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lcb01: TDBLookupComboBox;
    lcb02: TDBLookupComboBox;
    ed01: TDBEdit;
    ods01: TOracleDataSet;
    ods02: TOracleDataSet;
    ds01: TDataSource;
    ds02: TDataSource;
    ods02T055_ID: TFloatField;
    ods02T055_LONG_NAME: TStringField;
    ods01REGN: TStringField;
    ods01BANKNAME: TStringField;
    procedure FormShow(Sender: TObject);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  public
  end;

var
  frm58_101Edit: Tfrm58_101Edit;

implementation

uses
  Forms, untMessages, frm58_101ListForm;

{$R *.DFM}

{ Tfrm58_101Edit }

class function Tfrm58_101Edit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm58_101Edit;
end;

class function Tfrm58_101Edit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm58_101Edit;
end;

function Tfrm58_101Edit.SaveChange: Boolean;
begin
  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите КО!');
  end;

  if lcb02.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите период!');
  end;

  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите сумму!');
  end;

  if ed01.Field.AsFloat < 0 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Оборот кредитный организации не может быть меньше нуля!');
  end;

  Result := frm58_101List.SaveChange;
end;

class procedure Tfrm58_101Edit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm58_101Edit) := AForm;
end;

procedure Tfrm58_101Edit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  ods02.Close;
  ods02.Open;
end;

end.
