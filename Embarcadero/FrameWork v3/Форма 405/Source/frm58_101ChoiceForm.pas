unit frm58_101ChoiceForm;

interface

uses
  frm04_EditForm, Db, OracleData, DBCtrls, Controls, StdCtrls, Classes,
  ActnList, ExtCtrls, frm00_ParentForm, xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  , Mask,
//  dm005_MainData;

type
  Tfrm58_101Choice = class(Tfrm04_Edit)
    Label2: TLabel;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01T055_ID: TFloatField;
    ods01T055_LONG_NAME: TStringField;
    lFile: TLabel;
    Label1: TLabel;
    lcb01: TxxxDBLookupCheckCombo;
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
    T055_ID: Double;
  end;

var
  frm58_101Choice: Tfrm58_101Choice;

implementation

uses
  Forms;
//   untMessages;

{$R *.DFM}

{ Tfrm58_101Choice }

class function Tfrm58_101Choice.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm58_101Choice;
end;

class function Tfrm58_101Choice.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm58_101Choice;
end;

function Tfrm58_101Choice.SaveChange: Boolean;
begin
{  Result:= False;

  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите период!');
  end;}

  Result:= True;
end;

class procedure Tfrm58_101Choice.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm58_101Choice) := AForm;
end;

procedure Tfrm58_101Choice.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
  lcb01.KeyValue := ods01.FieldByName(lcb01.LookupField).AsFloat;
end;

end.
