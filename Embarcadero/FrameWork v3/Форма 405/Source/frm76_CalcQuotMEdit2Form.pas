unit frm76_CalcQuotMEdit2Form;

interface

uses
  frm04_EditForm, StdCtrls, Mask, DBCtrls, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , Db,
//  OracleData, frm76_CalcQuotMItemsForm

type
  Tfrm76_CalcQuotMEdit2 = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
  private
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    //
  end;

var
  frm76_CalcQuotMEdit2: Tfrm76_CalcQuotMEdit2;

implementation

uses
  Forms, untMessages;

{$R *.DFM}

{ Tfrm76_CalcQuotEdit }

class function Tfrm76_CalcQuotMEdit2.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm76_CalcQuotMEdit2;
end;

class function Tfrm76_CalcQuotMEdit2.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm76_CalcQuotMEdit2;
end;

function Tfrm76_CalcQuotMEdit2.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите значение!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm76_CalcQuotMEdit2.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm76_CalcQuotMEdit2) := AForm;
end;

end.
 