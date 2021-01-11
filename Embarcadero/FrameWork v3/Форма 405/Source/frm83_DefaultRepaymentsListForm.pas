unit frm83_DefaultRepaymentsListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm,
  frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm04_ListForm

type
  Tfrm83_DefaultRepaymentsList = class(Tfrm04_TabListItem)
    ToolButton5: TToolButton;
    odsListT151_ID: TFloatField;
    odsListT150_ID: TFloatField;
    odsListREPAY_DATE: TDateTimeField;
    odsListREPAY_NOM_SUM: TFloatField;
    odsListREPAY_USD_SUM: TFloatField;
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FDefaultID: Double;
    FDefDate: TDateTime;
    private
  protected
    procedure OnAdd; override;
    procedure OnEdit; override;
    //
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    //
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    //
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    RefreshMaster: procedure of object;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    //
    property DefaultID: Double write FDefaultID;
    property DefDate: TDateTime write FDefDate;
  end;

var
  frm83_DefaultRepaymentsList: Tfrm83_DefaultRepaymentsList;

implementation

uses dm005_MainData, frm83_DefaultRepaymentEditForm, Matrix, A00_MatrixConst;
// frm83_DefaultRemainsListForm,
// untMessages,
// frm80_CalcRemainsForm;

{$R *.DFM}

{ Tfrm83_DefaultRepaymentsList }

procedure Tfrm83_DefaultRepaymentsList.RefreshAfterListChange;
begin
  RefreshMaster;
end;

procedure Tfrm83_DefaultRepaymentsList.DoInsert;
begin
  oqAdd.SetVariable('T150_ID', FDefaultID);
  oqAdd.SetVariable('REPAY_DATE', odsList['REPAY_DATE']);
  oqAdd.Execute;
end;

procedure Tfrm83_DefaultRepaymentsList.DoEdit;
begin
  oqUpdate.SetVariable('T150_ID', FDefaultID);
  oqUpdate.SetVariable('REPAY_DATE', odsList['REPAY_DATE']);
  oqUpdate.Execute;
end;

procedure Tfrm83_DefaultRepaymentsList.DoDelete;
begin
  oqDelete.SetVariable('T151_ID', odsList['T151_ID']);
  oqDelete.Execute;
end;

procedure Tfrm83_DefaultRepaymentsList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.SetVariable('T150_ID', FDefaultID);

  inherited;
end;

procedure Tfrm83_DefaultRepaymentsList.OnAdd;
begin
  if EditForm = nil then Exit;

  Tfrm83_DefaultRepaymentEdit(EditForm).DefDate := FDefDate;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet['REPAY_DATE'] := FDefDate;
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm83_DefaultRepaymentsList.OnEdit;
begin
  if EditForm = nil then Exit;

  Tfrm83_DefaultRepaymentEdit(EditForm).DefDate := FDefDate;

  // отображаем форму для добавления записи
  DataSet.Edit;
  EditType := etEdit;
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

class function Tfrm83_DefaultRepaymentsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_DefaultRepaymentsList;
end;

class function Tfrm83_DefaultRepaymentsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_DefaultRepaymentsList;
end;

class procedure Tfrm83_DefaultRepaymentsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_DefaultRepaymentsList) := AForm;
end;

procedure Tfrm83_DefaultRepaymentsList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_REPAYMENT, true, '');
end;

procedure Tfrm83_DefaultRepaymentsList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_REPAYMENT, true, '');
end;

procedure Tfrm83_DefaultRepaymentsList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_REPAYMENT, true, '');
end;

function Tfrm83_DefaultRepaymentsList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm83_DefaultRepaymentEdit.Instance;
end;

function Tfrm83_DefaultRepaymentsList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actAddAttributes' then
    Result := Matrix.MA.IsOperationPermitted(ADD_REPAYMENT, FALSE)
  else if Action.Name = 'actEditAttributes' then
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REPAYMENT, FALSE)
  else if Action.Name = 'actDeleteAttributes' then
    Result:= Matrix.MA.IsOperationPermitted(DELETE_REPAYMENT, FALSE)
  else Result:= True;
end;

procedure Tfrm83_DefaultRepaymentsList.actAddAttributesUpdate(
  Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes) and (DataSet.RecordCount = 0)
  else
    actAddAttributes.Enabled := DataSet.Active and (EditForm <> nil) and (DataSet.RecordCount = 0);
end;

end.
