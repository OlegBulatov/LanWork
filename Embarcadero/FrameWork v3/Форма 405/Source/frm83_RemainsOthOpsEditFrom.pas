unit frm83_RemainsOthOpsEditFrom;

interface

uses
  frm04_EditForm, StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls,
  DBDateTimePicker, Controls, Classes, ActnList, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfrm83_RemainsOthOpsEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    dtp01: TDBDateTimePicker;
    Label2: TLabel;
    ed01: TDBEdit;
    Label3: TLabel;
    ed02: TDBEdit;
    rg01: TDBRadioGroup;
  private
    { Private declarations }
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm83_RemainsOthOpsEdit: Tfrm83_RemainsOthOpsEdit;

implementation

uses Forms, untMessages;
//uses frm83_RemainsOthOpsListForm

{$R *.DFM}

function Tfrm83_RemainsOthOpsEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Введите значение в поле Количество ценных бумаг!');
  end;

  if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Введите значение в поле Сумма!');
  end;

  Result := inherited SaveChange;
end;

class function Tfrm83_RemainsOthOpsEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsOthOpsEdit;
end;

class function Tfrm83_RemainsOthOpsEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsOthOpsEdit;
end;

class procedure Tfrm83_RemainsOthOpsEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsOthOpsEdit) := AForm;
end;

end.
