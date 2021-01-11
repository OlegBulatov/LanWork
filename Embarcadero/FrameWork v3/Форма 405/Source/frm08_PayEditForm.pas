unit frm08_PayEditForm;

interface

uses
  frm04_EditForm, Forms, StdCtrls, DBCtrls, Mask, Controls, Classes, ActnList,
  ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ActnList, ExtCtrls,
//  ComCtrls, xxxDateEdit, DBDateTimePicker;

type
  Tfrm08_PayEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
    Label3: TLabel;
    m01: TDBMemo;
    Label2: TLabel;
    cb01: TComboBox;
    procedure FormShow(Sender: TObject);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  public
  end;

var
  frm08_PayEdit: Tfrm08_PayEdit;

implementation

uses
  frm08_PayListForm, untMessages;

{$R *.DFM}

{ Tfrm08_PayEdit }

function Tfrm08_PayEdit.CancelChange: Boolean;
begin
  // отмен€ем изменени€
  Result := frm08_PayList.CancelChange;
end;

class function Tfrm08_PayEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm08_PayEdit;
end;

class function Tfrm08_PayEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm08_PayEdit;
end;

function Tfrm08_PayEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите код направлени€ платежа!');
  end;

  if m01.Field.IsNull then
  begin
    if m01.CanFocus then m01.SetFocus;
    TAppMessages.Error('¬ведите описание направлени€ платежа!');
  end;

  frm08_PayList.odsList.FieldByName('T006_DIRECTION').AsInteger := cb01.ItemIndex;
  Result := frm08_PayList.SaveChange;
end;

class procedure Tfrm08_PayEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm08_PayEdit) := AForm;
end;

procedure Tfrm08_PayEdit.FormShow(Sender: TObject);
begin
  cb01.ItemIndex := frm08_PayList.odsListT006_DIRECTION.AsInteger;
end;

end.
