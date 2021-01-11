unit frm30_EmissionEditForm;

interface

uses
  frm04_EditForm, fm09_IssuerFrame, fm08_SecTypeFrame, Forms,
  fm07_SelectParentFrame, fm06_RegnFrame, Classes, ActnList, StdCtrls,
  Controls, ExtCtrls, Db, frm00_ParentForm, frm30_EmissionListForm;

type
  Tfrm30_EmissionEdit = class(Tfrm04_Edit)
    fm06_Regn: Tfm06_Regn;
    fm08_SecType: Tfm08_SecType;
    fm09_Issuer: Tfm09_Issuer;
    procedure FormShow(Sender: TObject);
    procedure fm09_IssuerbtnSelectClick(Sender: TObject);
    procedure fm08_SecTypebtnSelectClick(Sender: TObject);
    procedure fm06_RegnbtnSelectClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDataSource(Value: TDataSource); override;
  public
    FSecTypeFilter: TSecTypesFilter;

    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function SaveChange: Boolean; override;
  end;

var
  frm30_EmissionEdit: Tfrm30_EmissionEdit;

implementation

uses untMessages;

{$R *.DFM}

{ Tfrm30_EmissionEdit }

class function Tfrm30_EmissionEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm30_EmissionEdit;
end;

class function Tfrm30_EmissionEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm30_EmissionEdit;
end;

function Tfrm30_EmissionEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if fm06_Regn.lcbSelect.Field.IsNull then
  begin
    if fm06_Regn.lcbSelect.CanFocus then fm06_Regn.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите Рег. номер ц.б.!');
  end;

  if fm08_SecType.lcbSelect.Field.IsNull then
  begin
    if fm08_SecType.lcbSelect.CanFocus then fm08_SecType.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите тип ц.б.!');
  end;

  if fm09_Issuer.lcbSelect.Field.IsNull then
  begin
    if fm09_Issuer.lcbSelect.CanFocus then fm09_Issuer.lcbSelect.SetFocus;
    TAppMessages.Error('Выберите эмитента!');
  end;

  Result := inherited SaveChange;
end;

class procedure Tfrm30_EmissionEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm30_EmissionEdit) := AForm;
end;

procedure Tfrm30_EmissionEdit.FormShow(Sender: TObject);
begin
  fm06_Regn.odsSelect.Close;
  fm06_Regn.odsSelect.Open;
  fm08_SecType.odsSelect.Close;
  fm08_SecType.odsSelect.Open;
  fm09_Issuer.odsSelect.Close;
  fm09_Issuer.odsSelect.Open;
end;

procedure Tfrm30_EmissionEdit.SetDataSource(Value: TDataSource);
begin
  fm06_Regn.lcbSelect.DataSource:= Value;
  fm08_SecType.lcbSelect.DataSource:= Value;
  fm09_Issuer.lcbSelect.DataSource:= Value;
  fm09_Issuer.ed01.DataSource:= Value;
  fm09_Issuer.ed02.DataSource:= Value;
end;

procedure Tfrm30_EmissionEdit.fm09_IssuerbtnSelectClick(Sender: TObject);
begin
  inherited;
  fm09_Issuer.btnSelectClick(Sender);

end;

procedure Tfrm30_EmissionEdit.fm08_SecTypebtnSelectClick(Sender: TObject);
begin
  inherited;
  fm08_SecType.btnSelectClick(Sender);

end;

procedure Tfrm30_EmissionEdit.fm06_RegnbtnSelectClick(Sender: TObject);
begin
  inherited;
  fm06_Regn.btnSelectClick(Sender);

end;

end.
