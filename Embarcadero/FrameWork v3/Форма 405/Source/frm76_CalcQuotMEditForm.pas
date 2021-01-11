unit frm76_CalcQuotMEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, StdCtrls, DBCtrls, Controls, Classes,
  ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfrm76_CalcQuotMEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    lcb02: TDBLookupComboBox;
    ods02: TOracleDataSet;
    ds02: TDataSource;
    ods01T083_ID: TFloatField;
    ods01T055_ID: TFloatField;
    ods01T055_LONG_NAME: TStringField;
    ods02T083_ID: TFloatField;
    ods02T055_ID: TFloatField;
    ods02T055_LONG_NAME: TStringField;
    ods01T055_END_DATE: TDateTimeField;
    ods02T055_END_DATE: TDateTimeField;
    GroupBox1: TGroupBox;
    rbCalcAll: TRadioButton;
    rbCalcSel: TRadioButton;
    ods01a: TOracleDataSet;
    ods02a: TOracleDataSet;
    ods01aT083_ID: TStringField;
    ods01aT055_ID: TFloatField;
    ods01aT055_END_DATE: TDateTimeField;
    ods01aT055_LONG_NAME: TStringField;
    ods02aT083_ID: TStringField;
    ods02aT055_ID: TFloatField;
    ods02aT055_END_DATE: TDateTimeField;
    ods02aT055_LONG_NAME: TStringField;
    procedure FormShow(Sender: TObject);
  private
    FT030_ID: Double;
    FT083_ID: Double;
    FT027_ID: Double;
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    //
    property T030_ID: Double read FT030_ID write FT030_ID;
    property T083_ID: Double read FT083_ID write FT083_ID;
    property T027_ID: Double read FT027_ID write FT027_ID;
  end;

var
  frm76_CalcQuotMEdit: Tfrm76_CalcQuotMEdit;

implementation

uses
  Forms; //untMessages;

{$R *.DFM}

{ Tfrm76_CalcQuotEdit }

class function Tfrm76_CalcQuotMEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm76_CalcQuotMEdit;
end;

class function Tfrm76_CalcQuotMEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm76_CalcQuotMEdit;
end;

function Tfrm76_CalcQuotMEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  (*
  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите квартал!');
  end;

  if lcb02.Field.IsNull then
  begin
    if lcb02.CanFocus then lcb02.SetFocus;
    TAppMessages.Error('Выберите квартал!');
  end;
  *)

  Result := inherited SaveChange;
end;

class procedure Tfrm76_CalcQuotMEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm76_CalcQuotMEdit) := AForm;
end;

procedure Tfrm76_CalcQuotMEdit.FormShow(Sender: TObject);
begin
//  if FT027_ID = 5 then { BON1 }
//    begin
    ods01a.Close;
    ds01.DataSet := ods01a;
    ods01a.Open;
//    ods01a.First;
    ods01a.Last;
    lcb01.KeyValue := ods01aT055_ID.AsFloat;

    ods02a.Close;
    ds02.DataSet := ods02a;
    ods02a.Open;
    ods02a.Last;
    lcb02.KeyValue := ods02aT055_ID.AsFloat;
//    end
{
  else
    begin
    ods01.Close;
    ds01.DataSet := ods01;
    ods01.SetVariable('T030_ID', FT030_ID);
    ods01.Open;
    ods01.Locate('T083_ID', FT083_ID, []);
    lcb01.KeyValue := ods01T055_ID.AsFloat;

    ods02.Close;
    ds02.DataSet := ods02;
    ods02.SetVariable('T030_ID', FT030_ID);
    ods02.Open;
    ods02.Locate('T083_ID', FT083_ID, []);
    lcb02.KeyValue := ods02T055_ID.AsFloat;
    end;
}
  rbCalcSel.Checked := TRUE;
end;

end.
