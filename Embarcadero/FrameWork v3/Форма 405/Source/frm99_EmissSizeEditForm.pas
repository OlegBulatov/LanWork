unit frm99_EmissSizeEditForm;

interface

uses
//  Windows, Messages, SysUtils, Graphics, Dialogs,
  frm04_EditForm, StdCtrls, Mask, DBCtrls, ComCtrls, DBDateTimePicker,
  Controls, Classes, ActnList, ExtCtrls, frm00_ParentForm, Db, Forms, Variants,
  System.Actions;

type
  Tfrm99_EmissSizeEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    dtp01: TDBDateTimePicker;
    ed01: TDBEdit;
    Label3: TLabel;
    ed02: TDBEdit;
  private
    { Private declarations }
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  protected
    procedure SetDataSource(Value: TDataSource); override;
  end;

var
  frm99_EmissSizeEdit: Tfrm99_EmissSizeEdit;

implementation

uses
  untMessages, frm31_EmisInfListForm, SysUtils;

{$R *.DFM}

class function Tfrm99_EmissSizeEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm99_EmissSizeEdit;
end;

class function Tfrm99_EmissSizeEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm99_EmissSizeEdit;
end;

class procedure Tfrm99_EmissSizeEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm99_EmissSizeEdit) := AForm;
end;

function Tfrm99_EmissSizeEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите значение в поле размер эмиссии!');
  end;

  if not VarIsNull(frm31_EmisInfList.odsList['T031_DATE_ANNUL']) then
  begin
    if dtp01.Field.AsDateTime > frm31_EmisInfList.odsList['T031_DATE_ANNUL'] then
    begin
      if dtp01.CanFocus then dtp01.SetFocus;
      TAppMessages.Error('Дата начала действия не может быть больше даты аннулирования эмиссии!');
    end;
  end;

  ed02.Field.Value := Trim(ed02.Text);

  Result := inherited SaveChange;
end;

procedure Tfrm99_EmissSizeEdit.SetDataSource(Value: TDataSource);
begin
  dtp01.DataSource := Value;
end;

end.
