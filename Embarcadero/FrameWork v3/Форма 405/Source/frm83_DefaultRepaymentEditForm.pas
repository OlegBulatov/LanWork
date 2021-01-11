unit frm83_DefaultRepaymentEditForm;

interface

uses
  frm04_EditForm, ComCtrls, DBDateTimePicker, Controls, StdCtrls, Classes,
  ActnList, ExtCtrls, Db, frm00_ParentForm;
//  Windows, Messages, SysUtils, Dialogs,
//  OracleData, DBCtrls, Mask, Oracle;

type
  Tfrm83_DefaultRepaymentEdit = class(Tfrm04_Edit)
    paBottom: TPanel;
    actDoOnChange: TAction;
    Label1: TLabel;
    dtRepayDate: TDBDateTimePicker;
  private
    FDefDate: TDateTime;
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    //
    property DefDate: TDateTime write FDefDate;
  end;

var
  frm83_DefaultRepaymentEdit: Tfrm83_DefaultRepaymentEdit;

implementation

uses
  Forms, Graphics, untMessages;
//uses frm83_DefaultRepaymentsListForm, , frm83_DefaultRemainsListForm,
//     frm83_DefaultSetListForm, Math;

{$R *.DFM}

const
  COLORS: array[False..True] of TColor = (clBtnFace, clWindow);

{ Tfrm83_DefaultRepaymentEdit }

class function Tfrm83_DefaultRepaymentEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_DefaultRepaymentEdit;
end;

class function Tfrm83_DefaultRepaymentEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_DefaultRepaymentEdit;
end;

class procedure Tfrm83_DefaultRepaymentEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_DefaultRepaymentEdit) := AForm;
end;

function Tfrm83_DefaultRepaymentEdit.SaveChange: Boolean;
begin
  // Проверка:
  // дата погашения
  if dtRepayDate.Field.IsNull then
  begin
    if dtRepayDate.CanFocus then dtRepayDate.SetFocus;
      TAppMessages.Error('Введите дату погашения!');
  end;

  if dtRepayDate.Field.AsDateTime < FDefDate then
  begin
    if dtRepayDate.CanFocus then dtRepayDate.SetFocus;
      TAppMessages.Error('Дата погашения дефолта не может быть меньше даты его объявления!');
  end;

  Result :=  inherited SaveChange;
end;

procedure Tfrm83_DefaultRepaymentEdit.SetDataSource(Value: TDataSource);
begin
  dtRepayDate.DataSource:= Value;
end;

end.
