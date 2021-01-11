unit frm99_EmissSizeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm,
  System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm99_EmissSizeList = class(Tfrm04_List)
    odsListT098_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT098_START_DATE: TDateTimeField;
    odsListT098_END_DATE: TDateTimeField;
    odsListT098_EMISSION_SIZE: TFloatField;
    odsListT098_DATA_SOURCE: TStringField;
    odsListT098_UPDATE_DATE: TDateTimeField;
    odsListT098_UPDATE_USER: TStringField;
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FT098_ID: Double;
  public
    //
    class function Instance: Tfrm99_EmissSizeList;
    procedure RefreshAfterListChange; override;
  protected
    //
    procedure OnAdd; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
  end;

var
  frm99_EmissSizeList: Tfrm99_EmissSizeList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, frm99_EmissSizeEditForm, dm005_MainData,
  frm31_EmisInfListForm;

{$R *.DFM}

class function Tfrm99_EmissSizeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm99_EmissSizeList;
end;

class function Tfrm99_EmissSizeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm99_EmissSizeList;
end;

class procedure Tfrm99_EmissSizeList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm99_EmissSizeList) := AForm;
end;

class function Tfrm99_EmissSizeList.Instance: Tfrm99_EmissSizeList;
begin
  Result := Tfrm99_EmissSizeList(inherited Instance);
end;

procedure Tfrm99_EmissSizeList.RefreshAfterListChange;
begin
  RefreshData('T098_ID', FT098_ID);
end;

procedure Tfrm99_EmissSizeList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T030_ID').AsFloat := odsList.GetVariable('T030_ID');
  DataSet.FieldByName('T098_START_DATE').AsFloat := Date;
  with EditForm do
  begin
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

function Tfrm99_EmissSizeList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm99_EmissSizeEdit.Instance;
end;

function Tfrm99_EmissSizeList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_EMISS_SIZE, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_EMISS_SIZE, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_EMISS_SIZE, FALSE)
  else result:= true;
end;

function Tfrm99_EmissSizeList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T098_ID', odsList['T098_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T098_START_DATE', odsList['T098_START_DATE']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm99_EmissSizeList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T030_ID', odsList['T030_ID']);
  oqAdd.SetVariable('T098_START_DATE', odsList['T098_START_DATE']);
  oqAdd.SetVariable('T098_EMISSION_SIZE', odsList['T098_EMISSION_SIZE']);
  oqAdd.SetVariable('T098_DATA_SOURCE', odsList['T098_DATA_SOURCE']);
  oqAdd.SetVariable('USER', dmMain.GetUser);
  oqAdd.Execute;
  FT098_ID := oqAdd.GetVariable('T098_ID');
end;

procedure Tfrm99_EmissSizeList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T098_ID', odsList['T098_ID']);
  oqUpdate.SetVariable('T098_START_DATE', odsList['T098_START_DATE']);
  oqUpdate.SetVariable('T098_EMISSION_SIZE', odsList['T098_EMISSION_SIZE']);
  oqUpdate.SetVariable('T098_DATA_SOURCE', odsList['T098_DATA_SOURCE']);
  oqUpdate.SetVariable('USER', dmMain.GetUser);
  oqUpdate.Execute;
  FT098_ID := odsList['T098_ID'];
end;

procedure Tfrm99_EmissSizeList.DoDelete;
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
      oqDelete.SetVariable('T030_ID', odsList['T030_ID']);
      oqDelete.SetVariable('T098_ID', odsList['T098_ID']);
      oqDelete.SetVariable('T098_START_DATE', odsList['T098_START_DATE']);
      oqDelete.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // сморим данные
    odsList.Next;
    if odsList.Eof then odsList.Prior;
    FT098_ID := odsList['T098_ID'];

    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm99_EmissSizeList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_EMISS_SIZE, true, '');
end;

procedure Tfrm99_EmissSizeList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_EMISS_SIZE, true, '');
end;

procedure Tfrm99_EmissSizeList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_EMISS_SIZE, true, '');
end;

procedure Tfrm99_EmissSizeList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := DataSet.Active and (not frm31_EmisInfList.odsList.IsEmpty) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := DataSet.Active and (not frm31_EmisInfList.odsList.IsEmpty);
end;

end.
