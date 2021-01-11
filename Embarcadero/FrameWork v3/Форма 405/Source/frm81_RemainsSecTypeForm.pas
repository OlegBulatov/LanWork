unit frm81_RemainsSecTypeForm;

interface

uses
  frm00_ParentForm, frm80_CalcRemainsForm, Db, OracleData, Controls,
  DBCtrls, Classes, StdCtrls, Forms;

type
  Tfrm81_RemainsSecType = class(Tfrm00_Parent, TCalcStepPage)
    Label1: TLabel;
    lcbSecType: TDBLookupComboBox;
    odsSecType: TOracleDataSet;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    dsSecType: TDataSource;
  private
    function GetT027_ID(): Double;
    function GetSEC_TYPE_NAME(): String;
  protected

    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    property T027_ID: Double read GetT027_ID;
    property SEC_TYPE_NAME: String read GetSEC_TYPE_NAME;
  end;

var
  frm81_RemainsSecType: Tfrm81_RemainsSecType;

implementation

{$R *.DFM}

{ Tfrm81_RemainsSecType }

class function Tfrm81_RemainsSecType.GetSelfClass(): Tfrm00_Parents;
begin
  Result := Tfrm81_RemainsSecType;
end;

class function Tfrm81_RemainsSecType.GetSelfForm(): Tfrm00_Parent;
begin
  Result := frm81_RemainsSecType;
end;

class procedure Tfrm81_RemainsSecType.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm81_RemainsSecType) := AForm;
end;

function Tfrm81_RemainsSecType.GetT027_ID(): Double;
begin
  Result := odsSecType.FieldByName('T027_ID').AsFloat;
end;

procedure Tfrm81_RemainsSecType.DoOnShowPage(const AMainForm: TForm);
begin
  if odsSecType.Active then Exit;

  odsSecType.Close;
  odsSecType.Open;
  lcbSecType.KeyValue := '8';
end;

procedure Tfrm81_RemainsSecType.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).SetStep1Desc(SEC_TYPE_NAME);

  Applied := True;
end;

function Tfrm81_RemainsSecType.GetSEC_TYPE_NAME(): String;
begin
  Result := odsSecTypeT027_SEC_TYPE.AsString;
end;

end.
