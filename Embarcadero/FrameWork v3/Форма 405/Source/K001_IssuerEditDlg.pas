unit K001_IssuerEditDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Db, Mask, DBCtrls, OracleData, xxxDbLookupCheckCombo;

type
  TK001_IssuerEdit = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edName: TDBEdit;
    lcbType: TxxxDBLookupCheckCombo;
    odsType: TOracleDataSet;
    dsType: TDataSource;
    lcbCountry: TxxxDBLookupCheckCombo;
    odsCountry: TOracleDataSet;
    dsCountry: TDataSource;
    cbIsBank: TDBCheckBox;
    edRegn: TDBEdit;
    lblRegn: TLabel;
    lblOgrn: TLabel;
    edOgrn: TDBEdit;
    dsList: TDataSource;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  K001_IssuerEdit: TK001_IssuerEdit;

implementation

{$R *.DFM}

{ TK001_IssuerEdit }

constructor TK001_IssuerEdit.Create(AOwner: TComponent);
begin
  inherited;
  odsType.Open;
  odsCountry.Open;
end;

end.
