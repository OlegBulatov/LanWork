unit I001_SaveDataForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Classes, Forms, ActnList, Oracle,
  StdCtrls, Controls, Mask, DBCtrls, ExtCtrls;
//  Windows, Messages, Graphics, Dialogs,

type
  TI001_SaveData = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    LInsert: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    LUpdate: TLabel;
    BtnSave: TButton;
    oqSave: TOracleQuery;
    Bevel3: TBevel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ActionList1: TActionList;
    actProceed: TAction;
    procedure actProceedUpdate(Sender: TObject);
    procedure actProceedExecute(Sender: TObject);
  private
  protected
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function GetParentForm: TA001_0_LoadEmit;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  I001_SaveData: TI001_SaveData;

implementation

uses
  SysUtils, I001_LoadedFileForm;

{$R *.DFM}

{ TI001_SaveData }

class function TI001_SaveData.GetSelfClass: Tfrm00_Parents;
begin
  Result := TI001_SaveData;
end;

class function TI001_SaveData.GetSelfForm: Tfrm00_Parent;
begin
  Result := I001_SaveData;
end;

class procedure TI001_SaveData.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(I001_SaveData) := AForm;
end;

function TI001_SaveData.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;

procedure TI001_SaveData.DoOnShowPage(const AMainForm: TForm);
begin
  LInsert.Visible := False;
  LUpdate.Visible := False;
end;

procedure TI001_SaveData.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  GetParentForm.CancelBtn.Caption := 'Далее >';
  Applied := True;
end;

procedure TI001_SaveData.actProceedUpdate(Sender: TObject);
begin
  actProceed.Enabled := (I001_LoadedFile.dsTotal.DataSet.FieldByName('R_NEW').AsFloat > 0)
                     or (I001_LoadedFile.dsTotal.DataSet.FieldByName('R_CHANGED').AsFloat > 0)
end;

procedure TI001_SaveData.actProceedExecute(Sender: TObject);
var
  vCursor: TCursor;
  vInsert: double;
  vUpdate: double;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;

//  oqSave.SetVariable('ADD_NEW', integer(cbInsert.Checked));
//  oqSave.SetVariable('UPDATE', integer(cbUpdate.Checked));
  oqSave.Execute;

  vInsert := oqSave.GetVariable('ADDED');
  vUpdate := oqSave.GetVariable('UPDATED');

  LInsert.Caption := 'Добавлено ' + FloatToStr(vInsert);
  LUpdate.Caption := 'Обновлено ' + FloatToStr(vUpdate);
  LInsert.Visible := True;
  LUpdate.Visible := True;

  GetParentForm.CancelBtn.Caption := 'Завершить';
  GetParentForm.OKBtn.Enabled := False;

  Screen.Cursor := vCursor;
end;

end.
