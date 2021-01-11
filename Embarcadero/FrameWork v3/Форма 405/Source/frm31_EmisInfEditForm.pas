unit frm31_EmisInfEditForm;

interface

uses
//  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,
  StdCtrls, Db, OracleData, ActnList, DBCtrls, frm04_EditForm, fm06_RegnFrame,
  fm08_SecTypeFrame, fm09_IssuerFrame, xxxDbLookupCheckCombo, Buttons,
  ComCtrls, DBDateTimePicker, Forms, fm07_SelectParentFrame, Mask,
  Controls, Classes, ExtCtrls, frm00_ParentForm;
//  ComCtrls, DBDateTimePicker, Mask, Db, ,
//  , fm07_SelectParentFrame, , dm005_MainData, Oracle,
//  Buttons, xxxDbLookupCheckCombo;

type
  Tfrm31_EmisInfEdit = class(Tfrm04_Edit)
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    actCheckFormState: TAction;
    ods08: TOracleDataSet;
    ds08: TDataSource;
    gb1: TGroupBox;
    Label6: TLabel;
    lcb07: TDBLookupComboBox;
    ds07: TDataSource;
    ods07: TOracleDataSet;
    ods07TYPE_ID: TFloatField;
    ods07TYPE_NAME: TStringField;
    Label7: TLabel;
    lcb08: TDBLookupComboBox;
    ed02: TDBEdit;
    Label1: TLabel;
    gb2: TGroupBox;
    fm06_Regn: Tfm06_Regn;
    fm08_SecType: Tfm08_SecType;
    fm09_Issuer: Tfm09_Issuer;
    Label2: TLabel;
    Label8: TLabel;
    dt01: TDBDateTimePicker;
    dt03: TDBDateTimePicker;
    ds06: TDataSource;
    Label3: TLabel;
    Label9: TLabel;
    ed01: TDBEdit;
    lcb06: TDBLookupComboBox;
    ods06: TOracleDataSet;
    ods06ISO_ID: TStringField;
    ods06CURR_DESC: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    lcb04: TDBLookupComboBox;
    lcb05: TDBLookupComboBox;
    ed03: TDBEdit;
    ods04: TOracleDataSet;
    ods04T024_ID: TFloatField;
    ods04T024_NAME: TStringField;
    ds04: TDataSource;
    ods05: TOracleDataSet;
    ods05T023_ID: TFloatField;
    ods05T023_NAME: TStringField;
    ds05: TDataSource;
    Label14: TLabel;
    cb01: TComboBox;
    ods08TYPE_ID: TFloatField;
    ods08TYPE_NAME: TStringField;
    Label11: TLabel;
    lcb09: TDBLookupComboBox;
    ods09: TOracleDataSet;
    ds09: TDataSource;
    gb3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    ed04: TDBEdit;
    ed05: TDBEdit;
    cbAutoload: TDBCheckBox;
    GroupBox1: TGroupBox;
    odsDrSource: TOracleDataSet;
    dsDrSource: TDataSource;
    Label15: TLabel;
    ed06: TDBEdit;
    SpeedButton1: TSpeedButton;
    lcbDrSource: TxxxDBLookupCheckCombo;
    Label16: TLabel;
    ed07: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure actCheckFormStateExecute(Sender: TObject);
    procedure fm08_SecTypelcbSelectCloseUp(Sender: TObject);
  private
    FT031_RATES_TYPE: Integer;
    FT031_CALC_METHOD: Integer;
    procedure EnableCouponsBlock(Value: boolean);
    procedure Enable_T030_TYPE_Block(Value: boolean);
    procedure EnableTickersBlock(Value: boolean);
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    NeedRecalc: boolean;
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm31_EmisInfEdit: Tfrm31_EmisInfEdit;

implementation

uses Graphics, untMessages, frm31_EmisInfListForm, frm34_CouponListForm;

{$R *.DFM}

const
  COLORS: array[False..True] of TColor = (clBtnFace, clWindow);

{ Tfrm31_EmisInfEdit }

class function Tfrm31_EmisInfEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm31_EmisInfEdit;
end;

class function Tfrm31_EmisInfEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm31_EmisInfEdit;
end;

function Tfrm31_EmisInfEdit.SaveChange: Boolean;
begin
  NeedRecalc := FALSE;
  // сохраняем изменения
  // Рег №
  if fm06_Regn.lcbSelect.Field.IsNull then
  begin
    if fm06_Regn.lcbSelect.CanFocus then fm06_Regn.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите регистрационный номер ц.б.!');
  end;

  // Тип ц.б.
  if fm08_SecType.lcbSelect.Field.IsNull then
  begin
    if fm08_SecType.lcbSelect.CanFocus then fm08_SecType.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите тип ц.б.!');
  end;

  // Эмитент
  if fm09_Issuer.lcbSelect.Field.IsNull then
  begin
    if fm09_Issuer.lcbSelect.CanFocus then fm09_Issuer.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите эмитента!');
  end;

  // Тип (рез-нерез)
  // Код

  // Дата регистрации и дата аннулирования
  // если сняты чекиты с дат
  if (not dt01.Checked) and (not dt01.Field.IsNull)  then
  begin
    dt01.Field.Clear;
  end;
  if (not dt03.Checked) and (not dt03.Field.IsNull)   then
  begin
    dt03.Field.Clear;
  end;

  // ISIN
  // Валюта
  // Номинал

  // Размещение
  if lcb04.Field.IsNull then
  begin
    if lcb04.CanFocus then lcb04.SetFocus;
    TAppMessages.Error('Выберите способ размещения!');
  end;

  // Состояние выплат
  if lcb05.Field.IsNull then
  begin
    if lcb05.CanFocus then lcb05.SetFocus;
    TAppMessages.Error('Выберите состояние выплат!');
  end;

  // Купонный блок:
  if frm31_EmisInfList.CouponsEnabled then
    begin
    // Ставка
    if lcb07.Field.IsNull then
      begin
      if lcb07.CanFocus then lcb07.SetFocus;
      TAppMessages.Error('Укажите ставку купонов!');
      end;

    // Метод расчета
    if lcb08.Field.IsNull then
      begin
      if lcb08.CanFocus then lcb08.SetFocus;
      TAppMessages.Error('Укажите метод расчета купонов!');
      end;

    // Изменение ставки и метода расчета - если есть купоны
    if (Assigned(frm34_CouponList) and not frm34_CouponList.odsList.IsEmpty) then
      if ( ((lcb07.Field.AsInteger <> FT031_RATES_TYPE) and (FT031_RATES_TYPE <> 0))
	   or
	   ((lcb08.Field.AsInteger <> FT031_CALC_METHOD) and (FT031_CALC_METHOD <> 0))
	 ) then
	 begin
	 if TAppMessages.ShowConfirmation('Параметры купонов изменены.'#13#10'Купонная матрица и НКД будут пересчитаны.'#13#10'Продолжить?') then
//          NeedRecalc := TRUE
	    NeedRecalc := FALSE // Пока что заглушка!!!
	 else
	   begin
	   Result := False;
	   Exit;
	   end;
	 end;

    // [Плав. ставка]

    // Выплат в год
    end
  else
    begin
    lcb07.Field.Clear;
    lcb08.Field.Clear;
    ed02.Field.Clear;
    end;

  Result := inherited SaveChange;
end;

class procedure Tfrm31_EmisInfEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm31_EmisInfEdit) := AForm;
end;

procedure Tfrm31_EmisInfEdit.FormShow(Sender: TObject);
begin
  // если сняты чекиты
  dt01.Checked := not dt01.Field.IsNull;
  dt03.Checked := not dt03.Field.IsNull;

  // Купонный блок
  EnableCouponsBlock(frm31_EmisInfList.CouponsEnabled);

  // Плав. ставка - на будущее, плка disabled
  Label14.Enabled := FALSE;
  cb01.Enabled := FALSE;

  FT031_RATES_TYPE := frm31_EmisInfList.odsListT031_RATES_TYPE.Value;
  FT031_CALC_METHOD := frm31_EmisInfList.odsListT031_CALC_METHOD.Value;

  fm06_Regn.odsSelect.Close;
  fm06_Regn.odsSelect.Open;
  fm08_SecType.odsSelect.Close;
  fm08_SecType.odsSelect.Open;
  fm09_Issuer.odsSelect.Close;
  fm09_Issuer.odsSelect.Open;
  ods04.Close;
  ods04.Open;
  ods05.Close;
  ods05.Open;
  ods06.Close;
  ods06.Open;
  ods07.Close;
  ods07.Open;
  ods08.Close;
  ods08.Open;
  ods09.Close;
  ods09.Open;

  odsDrSource.Close;
  odsDrSource.Open;

  // Вид ц.б.
  if (Pos('BON', fm08_SecType.lcbSelect.Text) = 0) and
     (Pos('SHS', fm08_SecType.lcbSelect.Text) = 0) and
     (Pos('DR1', fm08_SecType.lcbSelect.Text) = 0) and
     (Pos('DR2', fm08_SecType.lcbSelect.Text) = 0) then
    Enable_T030_TYPE_Block(False)
  else
    Enable_T030_TYPE_Block(True);

  // Тикеры
  if ((fm08_SecType.lcbSelect.KeyValue = 3) or (fm08_SecType.lcbSelect.KeyValue = 3)) and
     (ed04.DataSource.DataSet.FieldByName('T030_RECORD_TYPE').AsInteger = 1) then
    EnableTickersBlock(True)
  else
    EnableTickersBlock(False);

  NeedRecalc := FALSE;
end;
procedure Tfrm31_EmisInfEdit.SetDataSource(Value: TDataSource);
begin
  fm06_Regn.lcbSelect.DataSource:= Value;
  fm08_SecType.lcbSelect.DataSource:= Value;
  fm09_Issuer.lcbSelect.DataSource:= Value;
  fm09_Issuer.ed01.DataSource:= Value;
  fm09_Issuer.ed02.DataSource:= Value;
  ed01.DataSource:= Value;
  ed02.DataSource:= Value;
  ed03.DataSource:= Value;
  lcb04.DataSource:= Value;
  lcb05.DataSource:= Value;
  lcb06.DataSource:= Value;
  dt01.DataSource:= Value;
  dt03.DataSource:= Value;
  lcb07.DataSource := Value;
  lcb08.DataSource := Value;
  lcb09.DataSource := Value;
  ed04.DataSource := Value;
  ed05.DataSource := Value;
  cbAutoload.DataSource := Value;
end;

procedure Tfrm31_EmisInfEdit.actCheckFormStateExecute(Sender: TObject);
begin
//
end;

//procedure Tfrm31_EmisInfEdit.ClearCoupons;
//begin
//  frm31_EmisInfList.oqDeleteCoupons.SetVariable('T030_ID', frm31_EmisInfList.odsList['T030_ID']);
//  frm31_EmisInfList.oqDeleteCoupons.Execute;
//end;

procedure Tfrm31_EmisInfEdit.EnableCouponsBlock(Value: boolean);
var
  i: integer;
begin
  for i := 0 to gb1.ControlCount - 1 do
    begin
    gb1.Controls[i].Enabled := Value;
    if gb1.Controls[i].ClassName = 'TDBLookupComboBox' then
      TDBLookupComboBox(gb1.Controls[i]).Color := COLORS[Value];
    if gb1.Controls[i].ClassName = 'TDBEdit' then
      TDBEdit(gb1.Controls[i]).Color := COLORS[Value];
    end;
end;

procedure Tfrm31_EmisInfEdit.fm08_SecTypelcbSelectCloseUp(Sender: TObject);
begin
  with Sender as TDBLookupComboBox do
    begin
    EnableCouponsBlock(frm31_EmisInfList.CanHaveCoupons(Text));
    Enable_T030_TYPE_Block(not ((Pos('BON', Text) = 0) and (Pos('SHS', Text) = 0)));
    end;
end;

procedure Tfrm31_EmisInfEdit.Enable_T030_TYPE_Block(Value: boolean);
begin
  Label11.Enabled := Value;
  lcb09.Enabled := Value;
end;

procedure Tfrm31_EmisInfEdit.EnableTickersBlock(Value: boolean);
begin
  Label12.Enabled := Value;
  ed04.Enabled := Value;
  Label13.Enabled := Value;
  ed05.Enabled := Value;
  cbAutoload.Enabled := Value;
end;

end.
