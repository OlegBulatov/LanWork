unit frm78_MaturityListForm;

interface

uses
//  Windows, Messages, SysUtils,  Graphics, Dialogs,
//  frm04_ListForm, 
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm,
  System.Actions;

type
  Tfrm78_MaturityList = class(Tfrm04_TabListItem)
    odsListT092_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT092_DATE: TDateTimeField;
    odsListT092_RATE: TFloatField;
    actFill: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    oqFill: TOracleQuery;
    procedure actFillExecute(Sender: TObject);
    procedure actFillUpdate(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FT092_ID: Double;
  protected
    //
    procedure OnAdd; override;
    //
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

  public
    procedure RefreshAfterListChange; override;

    class function Instance: Tfrm78_MaturityList;
  end;

var
  frm78_MaturityList: Tfrm78_MaturityList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, frm31_EmisInfListForm, frm78_MaturityEditForm,
  dm005_MainData;
// dm005_MainData;

{$R *.DFM}

{ Tfrm78_MaturityList }

class function Tfrm78_MaturityList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm78_MaturityList;
end;

class function Tfrm78_MaturityList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm78_MaturityList;
end;

class procedure Tfrm78_MaturityList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm78_MaturityList) := AForm;
end;

class function Tfrm78_MaturityList.Instance: Tfrm78_MaturityList;
begin
  Result := Tfrm78_MaturityList(inherited Instance);
end;

procedure Tfrm78_MaturityList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T092_DATE').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T030_ID').AsFloat := frm31_EmisInfList.odsListT030_ID.AsFloat;
//  DataSet.FieldByName('T092_RATE').AsFloat := 100;
  with EditForm do
  begin
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm78_MaturityList.DoDelete;
var
  i: Integer;
begin
  odsList.DisableControls;
  try
    // Проставляем признак для каждой выделенной записи
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;

    for i := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      oqDelete.SetVariable('T092_ID', odsList['T092_ID']);
      oqDelete.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // сморим данные
    odsList.Next;
    if odsList.Eof then odsList.Prior;
    FT092_ID := odsList['T092_ID'];

    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm78_MaturityList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T092_ID', odsList['T092_ID']);
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T092_DATE', odsList['T092_DATE']);
  oqUpdate.SetVariable('T092_RATE', odsList['T092_RATE']);
  oqUpdate.Execute;
  FT092_ID := odsList['T092_ID'];
end;

procedure Tfrm78_MaturityList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T030_ID', odsList['T030_ID']);
  oqAdd.SetVariable('T092_DATE', odsList['T092_DATE']);
  oqAdd.SetVariable('T092_RATE', odsList['T092_RATE']);
  oqAdd.Execute;
  FT092_ID := oqAdd.GetVariable('T092_ID');
end;

procedure Tfrm78_MaturityList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_MATURITY_DATE, true, '');
end;

procedure Tfrm78_MaturityList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_MATURITY_DATE, true, '');
end;

procedure Tfrm78_MaturityList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_MATURITY_DATE, true, '');
end;

function Tfrm78_MaturityList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm78_MaturityEdit.Instance;
end;

function Tfrm78_MaturityList.EnableAction(Action: TAction): boolean;
var
  VEnabled: Boolean;
begin
  if Assigned(frm31_EmisInfList) then
    // даем редактировать только купоны бумаг типов BON1, BON2, ... , BON7
    VEnabled := frm31_EmisInfList.CouponsEnabled
  else
    VEnabled := False;

  if Action.Name = 'actAddAttributes' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(ADD_MATURITY_DATE, FALSE)
  end else
  if Action.Name = 'actEditAttributes' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(CHANGE_MATURITY_DATE, FALSE)
  end else
  if Action.Name = 'actFill' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(CHANGE_MATURITY_DATE, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result:= VEnabled and Matrix.MA.IsOperationPermitted(DELETE_MATURITY_DATE, FALSE)
  end else
  begin
    Result:= True;
  end;
end;

function Tfrm78_MaturityList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T092_ID', odsList['T092_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T092_DATE', odsList['T092_DATE']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm78_MaturityList.RefreshAfterListChange;
begin
  RefreshData('T092_ID', FT092_ID);
end;

procedure Tfrm78_MaturityList.actFillExecute(Sender: TObject);
begin
  oqFill.SetVariable('T092_ID', odsList['T092_ID']);
  oqFill.SetVariable('T030_ID', odsList['T030_ID']);
  oqFill.Execute;
  RefreshAfterListChange;
end;

procedure Tfrm78_MaturityList.actFillUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actFill.Enabled := not DataSet.IsEmpty and EnableAction(actFill)
  else
    actFill.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm78_MaturityList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := not frm31_EmisInfList.odsList.IsEmpty and DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := not frm31_EmisInfList.odsList.IsEmpty and DataSet.Active and (EditForm <> nil);
end;

end.
