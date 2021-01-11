unit frm34_CouponEditForm;

interface

uses
  frm04_EditForm, StdCtrls, ComCtrls, DBDateTimePicker, Mask, DBCtrls,
  Controls, Classes, ActnList, ExtCtrls, Db, frm00_ParentForm, Graphics;
//  Windows, Messages, SysUtils, Controls, Forms, Dialogs,
//  OracleData, Oracle, ToolEdit,
//  RXDBCtrl;

type
  Tfrm34_CouponEdit = class(Tfrm04_Edit)
    paBottom: TPanel;
    gb3: TGroupBox;
    actDoOnChange: TAction;
    dtExdDate: TDBDateTimePicker;
    ed01: TDBEdit;
    chbExdDate: TCheckBox;
    Label1: TLabel;
    dtEndDate: TDBDateTimePicker;
    Label3: TLabel;
    gb1: TGroupBox;
    rb2: TRadioButton;
    rb1: TRadioButton;
    dt02: TDBDateTimePicker;
    ed03: TDBEdit;
    procedure dt02Change(Sender: TObject);
    procedure actDoOnChangeExecute(Sender: TObject);
    procedure actDoOnChangeUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chbExdDateClick(Sender: TObject);
  private
    function IsFirstCoupon: Boolean;
    function GetDataSet: TDataSet;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
    //
    property DataSet: TDataSet read GetDataSet;
  end;

var
  frm34_CouponEdit: Tfrm34_CouponEdit;

implementation

uses Forms, untMessages, frm34_CouponListForm;
// frm31_EmisInfListForm;

{$R *.DFM}

const
  COLORS: array[False..True] of TColor = (clBtnFace, clWindow);
  FONTS_COLORS: array[False..True] of TColor = (clBtnFace, clWindowText);

{ Tfrm34_CouponEdit }

function Tfrm34_CouponEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm34_CouponList.CancelChange;
end;

class function Tfrm34_CouponEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm34_CouponEdit;
end;

class function Tfrm34_CouponEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm34_CouponEdit;
end;

function Tfrm34_CouponEdit.SaveChange: Boolean;
begin
  // ѕроверка:

  // дата окончани€ начислени€
  if dtEndDate.Field.IsNull then
    begin
    if dtEndDate.CanFocus then dtEndDate.SetFocus;
    TAppMessages.Error('¬ведите дату окончани€ начислени€!');
    end;

  // ставка
  if ed01.Field.IsNull then
    begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите ставку купона!');
    end;
  if ed01.Field.AsFloat <= 0 then
    begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('«начение ставки купона должно быть больше 0%!');
    end;
  if ed01.Field.AsFloat > 100 then
    begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('«начение ставки купона не должно превышать 100%!');
    end;

  // дата фиксации номинала
  if chbExdDate.Checked then
    begin
    if dtExdDate.Field.IsNull then
      begin
      if dtExdDate.CanFocus then dtExdDate.SetFocus;
      TAppMessages.Error('¬ведите дату экс. див. периода !');
      end;
    if dtExdDate.Field.AsDateTime > dtEndDate.Field.AsDateTime then
      begin
      if dtExdDate.CanFocus then dtExdDate.SetFocus;
      TAppMessages.Error('ƒата экс. див. периода не должна быть больше даты окончани€ начислени€!');
      end;
    end;

  // дата начала начислени€ 1-го купона
  if IsFirstCoupon and rb1.Checked and dt02.Field.IsNull then
    begin
    if dt02.CanFocus then dt02.SetFocus;
    TAppMessages.Error('¬ведите дату начала начислени€!');
    end;

  // период купона
  if IsFirstCoupon and rb2.Checked then
    begin
    if ed03.Field.IsNull then
      begin
      if ed03.CanFocus then ed03.SetFocus;
      TAppMessages.Error('¬ведите период купона!');
      end;
    if ed03.Field.AsFloat <= 0 then
      begin
      if ed03.CanFocus then ed03.SetFocus;
      TAppMessages.Error('«начение периода купона должно быть больше 0!');
      end;
    end;

  if IsFirstCoupon then
    begin
    if rb1.Checked then			// дата начала начислени€
      begin
      ed03.Field.Clear;
      DataSet.FieldByName('T032_CALC_DATE_TYPE').AsFloat := 1;
      end;
    if rb2.Checked then			// период
      begin
      dt02.Field.Clear;
      DataSet.FieldByName('T032_CALC_DATE_TYPE').AsFloat := 2;
      end;
    end;

  if not chbExdDate.Checked then dtExdDate.Field.Clear;

  Result := frm34_CouponList.SaveChange;
end;

class procedure Tfrm34_CouponEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm34_CouponEdit) := AForm;
end;

procedure Tfrm34_CouponEdit.dt02Change(Sender: TObject);
begin
  // пробуем вычислить период

end;

procedure Tfrm34_CouponEdit.actDoOnChangeExecute(Sender: TObject);
begin
  //
end;

procedure Tfrm34_CouponEdit.actDoOnChangeUpdate(Sender: TObject);
begin
  // разрешаем вводить ƒату начала начислени€ только дл€ 1ого купона
  // можем ввести дату нач.н. - тогда считаем период купона
  rb1.Enabled := IsFirstCoupon;
  dt02.Enabled := IsFirstCoupon and rb1.Checked;
  dt02.Color := COLORS[dt02.Enabled];
  // можем ввести период купона - тогда считаем дату нач.н.
  rb2.Enabled := IsFirstCoupon;
  rb2.Checked := not rb1.Checked;
  ed03.Enabled := IsFirstCoupon and rb2.Checked;
  ed03.Color := COLORS[ed03.Enabled];

  // доступность пол€ End Date
  dtEndDate.Enabled := frm34_CouponList.FLastCoupon;
//  // если в карточки выпуска указан тип купона фиксированный
//  // то не даем мен€ть дату
//  dtEndDate.Enabled := (frm31_EmisInfList.odsListT031_CALC_DATE_TYPE.AsFloat = 1) or
//                       IsFirstCoupon or
//                       (GetPeriodType <> 1);
  dtEndDate.Color := COLORS[dtEndDate.Enabled];
  dtEndDate.Font.Color := FONTS_COLORS[dtEndDate.Enabled];

  // доступность пол€ ExdDate
  dtExdDate.Enabled := chbExdDate.Checked;
  dtExdDate.Color := COLORS[dtExdDate.Enabled];
  dtExdDate.Font.Color := FONTS_COLORS[dtExdDate.Enabled];
end;

function Tfrm34_CouponEdit.GetDataSet: TDataSet;
begin
  Result := dtEndDate.DataSource.DataSet;
end;

procedure Tfrm34_CouponEdit.FormShow(Sender: TObject);
begin
  inherited;
  rb1.Checked := DataSet.FieldByName('T032_CALC_DATE_TYPE').AsFloat = 1;
  chbExdDate.Checked := not dtExdDate.Field.IsNull;
end;

procedure Tfrm34_CouponEdit.chbExdDateClick(Sender: TObject);
begin
  if chbExdDate.Checked and dtExdDate.Field.IsNull then
  begin
    dtExdDate.Field.AsDateTime := dtEndDate.DateTime;
  end else
  begin
    dtExdDate.Field.Clear;
  end;
end;

function Tfrm34_CouponEdit.IsFirstCoupon: Boolean;
begin
  Result := DataSet.FieldByName('COUPON_NUMBER').AsInteger = 1;
end;

end.
