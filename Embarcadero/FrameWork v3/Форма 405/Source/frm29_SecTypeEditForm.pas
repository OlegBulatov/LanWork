unit frm29_SecTypeEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, DBCtrls, StdCtrls, Mask, Controls,
  Classes, ActnList, ExtCtrls, frm00_ParentForm;

type
  Tfrm29_SecTypeEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    m01: TDBMemo;
    lcb01: TDBLookupComboBox;
    ods01: TOracleDataSet;
    ds01: TDataSource;
    ods01FLAG: TStringField;
    ods01FLAGNAME: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm29_SecTypeEdit: Tfrm29_SecTypeEdit;

implementation

uses
  Forms, untMessages, frm29_SecTypeListForm;

{$R *.DFM}

{ Tfrm29_SecTypeEdit }

class function Tfrm29_SecTypeEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm29_SecTypeEdit;
end;

class function Tfrm29_SecTypeEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm29_SecTypeEdit;
end;

function Tfrm29_SecTypeEdit.SaveChange: Boolean;
begin
  // сохран€ем изменени€
  if ed01.Field.IsNull then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('¬ведите код типа ценной бумаги!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm29_SecTypeEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm29_SecTypeEdit) := AForm;
end;

procedure Tfrm29_SecTypeEdit.FormShow(Sender: TObject);
begin
  ods01.Close;
  ods01.Open;
end;

procedure Tfrm29_SecTypeEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource := Value;
  ed02.DataSource := Value;
  lcb01.DataSource := Value;
  m01.DataSource := Value;
end;

end.
 