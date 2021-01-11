unit frm78_MaturityEditForm;

interface

uses
  frm04_EditForm, Oracle, StdCtrls, Mask, DBCtrls, ComCtrls,
  DBDateTimePicker, Controls, Classes, ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  , Db,
//  OracleData,

type
  Tfrm78_MaturityEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    dt01: TDBDateTimePicker;
    Label2: TLabel;
    ed01: TDBEdit;
    oqRate: TOracleQuery;
    procedure FormShow(Sender: TObject);
  private
    FSumRate: Double;
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  end;

var
  frm78_MaturityEdit: Tfrm78_MaturityEdit;

implementation

uses Forms, frm78_MaturityListForm, untMessages, frm31_EmisInfListForm;

{$R *.DFM}

{ Tfrm78_MaturityEdit }

function Tfrm78_MaturityEdit.CancelChange: Boolean;
begin
  // отменяем изменения
  Result := frm78_MaturityList.CancelChange;
end;

class function Tfrm78_MaturityEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm78_MaturityEdit;
end;

class function Tfrm78_MaturityEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm78_MaturityEdit;
end;

function Tfrm78_MaturityEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if dt01.Field.IsNull then
  begin
    if dt01.CanFocus then dt01.SetFocus;
    TAppMessages.Error('Введите дату погашения!');
  end;

  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите ставку!');
  end;

  if ed01.Field.AsFloat <= 0 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Значение ставки должно быть больше 0%!');
  end;

  if (ed01.Field.AsFloat + FSumRate) > 100 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Суммарное ставки не должно превышать 100%!');
  end;

  Result := frm78_MaturityList.SaveChange;
end;

class procedure Tfrm78_MaturityEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm78_MaturityEdit) := AForm;
end;

procedure Tfrm78_MaturityEdit.FormShow(Sender: TObject);
begin
  oqRate.SetVariable('T030_ID', frm31_EmisInfList.odsListT030_ID.AsFloat);
  oqRate.Execute;
  if oqRate.FieldIsNull(0) then
  begin
    FSumRate := 0
  end
  else
  begin
    FSumRate := oqRate.Field(0);
  end;

  if ed01.Field.IsNull then
  begin
    // Для новых записей задаем по-умолчание остаток
    ed01.Field.Value := 100 - FSumRate;
  end
  else
  begin
    // Для изменяемых убираем из погашенных текущее значение
    FSumRate := FSumRate - ed01.Field.Value;
  end;
end;

end.
