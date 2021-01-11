unit frm05_SecTypeEditDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Db, OracleData, xxxDbLookupCheckCombo;

type
  Tfrm05_SecTypeEdit = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    lcb: TxxxDBLookupCheckCombo;
    odsList: TOracleDataSet;
    dsList: TDataSource;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    constructor Create(Owner: TComponent); override;
  end;

var
  frm05_SecTypeEdit: Tfrm05_SecTypeEdit;

implementation

{$R *.DFM}

{ Tfrm05_SecTypeEdit }

constructor Tfrm05_SecTypeEdit.Create(Owner: TComponent);
begin
  inherited;
  odsList.Open;
  lcb.KeyValue := odsListT027_ID.AsFloat;
end;

end.
