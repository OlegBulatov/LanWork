unit frm34_CouponFillForm;

interface

uses
  Oracle, Db, OracleData, Controls, DBCtrls, StdCtrls, Mask, Classes, Forms,
  ExtCtrls;
// Windows, SysUtils, Graphics
//  Buttons,

type
  Tfrm34_CouponFillDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ed01: TDBEdit;
    ods1: TOracleDataSet;
    ods1TYPE_ID: TFloatField;
    ods1TYPE_NAME: TStringField;
    ds1: TDataSource;
    lcb1: TDBLookupComboBox;
    oqUpdate: TOracleQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ods1AfterScroll(DataSet: TDataSet);
    procedure OKBtnClick(Sender: TObject);
  private
  public
  end;

var
  frm34_CouponFillDlg: Tfrm34_CouponFillDlg;

implementation

uses Graphics, untMessages, frm31_EmisInfListForm;
//, Dialogs, dm005_MainData;

{$R *.DFM}

const
  COLORS: array[False..True] of TColor = (clBtnFace, clWindow);

{ Tfrm34_CouponFillDlg }

procedure Tfrm34_CouponFillDlg.FormCreate(Sender: TObject);
begin
  lcb1.DataSource := frm31_EmisInfList.dsList;
  lcb1.DataField := 'T031_CALC_DATE_TYPE';
  ed01.DataSource := frm31_EmisInfList.dsList;
  ed01.DataField := 'T031_COUPON_PERIOD'
end;

procedure Tfrm34_CouponFillDlg.FormShow(Sender: TObject);
begin
  ods1.Close;
  ods1.Open;
end;

procedure Tfrm34_CouponFillDlg.ods1AfterScroll(DataSet: TDataSet);
var
  vEnabled:  boolean;
begin
  vEnabled := (frm31_EmisInfList.odsListT031_CALC_DATE_TYPE.AsInteger = 2); // ѕовтором дат
  Label2.Enabled := vEnabled;
  ed01.Enabled := vEnabled;
  ed01.Color := COLORS[vEnabled];
  if not vEnabled then
    ed01.Text := ''
  else
    ed01.Text := ed01.Field.AsString;
end;

procedure Tfrm34_CouponFillDlg.OKBtnClick(Sender: TObject);
begin
  // ѕроверка метода заполнени€
  if lcb1.Text = '' then
    begin
    if lcb1.CanFocus then lcb1.SetFocus;
      try
        TAppMessages.Error('”кажите метод заполнени€!');
      finally
        ModalResult := mrNone;
      end;
    end;

  // ѕроверка метода заполнени€ и купонного периода
  if (lcb1.Field.AsFloat = 2) and (ed01.Field.IsNull) then  // по периоду
    begin
    if ed01.CanFocus then ed01.SetFocus;
      try
        TAppMessages.Error('”кажите купонный период!');
      finally
        ModalResult := mrNone;
      end;
    end;

  if lcb1.Field.AsFloat = 3 then // повтором дат
    ed01.Field.Clear;

  // «аписываем значени€ метода заполнени€  и купонного периода
  oqUpdate.SetVariable('T031_ID', frm31_EmisInfList.odsListT031_ID.Value);
  oqUpdate.SetVariable('DATEMETHOD', lcb1.KeyValue);
  oqUpdate.SetVariable('PERIOD', ed01.Field.Value);
  oqUpdate.Execute;
end;

end.
