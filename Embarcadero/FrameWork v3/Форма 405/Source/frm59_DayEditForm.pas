unit frm59_DayEditForm;

interface

uses
  frm04_EditForm, Forms, Db, OracleData, DBCtrls, StdCtrls, Mask, Controls,
  Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, xxxDateEdit, DBDateTimePicker

type
  Tfrm59_DayEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01T055_ID: TFloatField;
    ods01T055_LONG_NAME: TStringField;
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
  frm59_DayEdit: Tfrm59_DayEdit;

implementation

uses untMessages, frm59_DayListForm;

{$R *.DFM}

{ Tfrm59_DayEdit }

class function Tfrm59_DayEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm59_DayEdit;
end;

class function Tfrm59_DayEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm59_DayEdit;
end;

function Tfrm59_DayEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if lcb01.Field.IsNull then
  begin
    if lcb01.CanFocus then lcb01.SetFocus;
    TAppMessages.Error('Выберите месяц!');
  end;

  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите кол-во рабочих дней!');
  end;

  if ed01.Field.AsFloat < 1 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Кол-во рабочих дней в месяце не может быть меньше 1!');
  end;

  if ed01.Field.AsFloat > 31 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Кол-во рабочих дней в месяце не может превышать 31!');
  end;

  Result := frm59_DayList.SaveChange;
end;

class procedure Tfrm59_DayEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm59_DayEdit) := AForm;
end;

procedure Tfrm59_DayEdit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
end;

end.
