unit frm05_SumMultiEditForm;

interface

uses
  frm04_EditForm, ComCtrls, DBDateTimePicker, Controls, StdCtrls, Classes,
  ActnList, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  Buttons, Db, OracleData,
//  DBCtrls, ,

type
  Tfrm05_SumMultiEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    dt01: TDBDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm05_SumMultiEdit: Tfrm05_SumMultiEdit;

implementation

uses Forms, frm05_SumListForm, untMessages;

{$R *.DFM}

{ Tfrm05_SumMultiEdit }

class function Tfrm05_SumMultiEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm05_SumMultiEdit;
end;

class function Tfrm05_SumMultiEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm05_SumMultiEdit;
end;

function Tfrm05_SumMultiEdit.SaveChange: Boolean;
begin
  Result := inherited SaveChange;
end;

class procedure Tfrm05_SumMultiEdit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm05_SumMultiEdit) := AForm;
end;

end.
