unit frm60_DividentsListForm;

interface

uses
  ActnList, Db, frm04_TabListForm, frm04_TabListItemForm, frm00_ParentForm,
  frm04_EditForm, Oracle, OracleData, Menus, Classes, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, OracleData, Menus, , fmSeach,
//  ComCtrls, ExtCtrls, Grids, DBGrids, xxxDBGrid, ToolWin, ,
//  , , StdCtrls, fm31_FilterFrame;

type
  Tfrm60_DividentsList = class(Tfrm04_TabList)
    odsListT050_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT050_DATE: TDateTimeField;
    odsListT050_SUM: TFloatField;
    odsListT050_711_COUNT: TFloatField;
    odsListT050_OTH_COUNT: TFloatField;
    odsListT050_TYPE: TIntegerField;
    odsListT050_TYPE_DESC: TStringField;
    odsListT028_CODE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT050_USD_SUM: TFloatField;
    odsListT050_TAX_SUM: TFloatField;
    odsListT050_TAX_VALUE: TFloatField;
    odsListT050_TOTAL_SUM: TFloatField;
  private
    FT050_ID: Double;
  protected
    //
    function GetListItem: Tfrm04_TabListItem; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
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
    function GetIDFieldName: string; override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm60_DividentsList: Tfrm60_DividentsList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, frm60_DividentsItemForm,
  frm60_DividentsEditForm;

{$R *.DFM}

{ Tfrm60_DividentsList }


function Tfrm60_DividentsList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm60_DividentsItem.Instance;
end;

class function Tfrm60_DividentsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm60_DividentsList;
end;

class function Tfrm60_DividentsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm60_DividentsList;
end;

class procedure Tfrm60_DividentsList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm60_DividentsList) := AForm;
end;

procedure Tfrm60_DividentsList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T050_ID', odsList['T050_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT050_ID := odsList['T050_ID'];
end;

procedure Tfrm60_DividentsList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T050_ID', odsList['T050_ID']);
  oqUpdate.SetVariable('T050_DATE', odsList['T050_DATE']);
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
//  oqUpdate.SetVariable('T050_TYPE', odsList['T050_TYPE']);
  if frm60_DividentsEdit.edit1 then
  begin
	  oqUpdate.SetVariable('T050_EDIT_1', 'Y');
    oqUpdate.SetVariable('T050_ID_1', frm60_DividentsEdit.ods03['T050_ID']);
    oqUpdate.SetVariable('T050_711_COUNT_1', frm60_DividentsEdit.ods03['T050_711_COUNT']);
    oqUpdate.SetVariable('T050_OTH_COUNT_1', frm60_DividentsEdit.ods03['T050_OTH_COUNT']);
    oqUpdate.SetVariable('T050_SUM_1', frm60_DividentsEdit.ods03['T050_SUM']);
    oqUpdate.SetVariable('T050_TAX_VALUE_1', frm60_DividentsEdit.ods03['T050_TAX_VALUE']);
  end
  else oqUpdate.SetVariable('T050_EDIT_1', 'N');
  if frm60_DividentsEdit.edit2 then
  begin
	  oqUpdate.SetVariable('T050_EDIT_2', 'Y');
    oqUpdate.SetVariable('T050_ID_2', frm60_DividentsEdit.ods04['T050_ID']);
    oqUpdate.SetVariable('T050_711_COUNT_2', frm60_DividentsEdit.ods04['T050_711_COUNT']);
    oqUpdate.SetVariable('T050_OTH_COUNT_2', frm60_DividentsEdit.ods04['T050_OTH_COUNT']);
    oqUpdate.SetVariable('T050_SUM_2', frm60_DividentsEdit.ods04['T050_SUM']);
    oqUpdate.SetVariable('T050_TAX_VALUE_2', frm60_DividentsEdit.ods04['T050_TAX_VALUE']);
  end
  else oqUpdate.SetVariable('T050_EDIT_2', 'N');
  oqUpdate.Execute;
  FT050_ID := oqUpdate.GetVariable('T050_ID_1');
end;

procedure Tfrm60_DividentsList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T050_DATE').AsDateTime := Trunc(Now);
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm60_DividentsList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T050_DATE', odsList['T050_DATE']);
  oqAdd.SetVariable('T027_ID', odsList['T027_ID']);
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
//  oqAdd.SetVariable('T050_TYPE', odsList['T050_TYPE']);
  if frm60_DividentsEdit.edit1 then
  begin
	  oqAdd.SetVariable('T050_EDIT_1', 'Y');
	  oqAdd.SetVariable('T050_ID_1', frm60_DividentsEdit.ods03['T050_ID']);
  	oqAdd.SetVariable('T050_711_COUNT_1', frm60_DividentsEdit.ods03['T050_711_COUNT']);
	  oqAdd.SetVariable('T050_OTH_COUNT_1', frm60_DividentsEdit.ods03['T050_OTH_COUNT']);
  	oqAdd.SetVariable('T050_SUM_1', frm60_DividentsEdit.ods03['T050_SUM']);
	  oqAdd.SetVariable('T050_TAX_VALUE_1', frm60_DividentsEdit.ods03['T050_TAX_VALUE']);
  end
  else oqAdd.SetVariable('T050_EDIT_1', 'N');
  if frm60_DividentsEdit.edit2 then
  begin
	  oqAdd.SetVariable('T050_EDIT_2', 'Y');
	  oqAdd.SetVariable('T050_ID_2', frm60_DividentsEdit.ods04['T050_ID']);
  	oqAdd.SetVariable('T050_711_COUNT_2', frm60_DividentsEdit.ods04['T050_711_COUNT']);
	  oqAdd.SetVariable('T050_OTH_COUNT_2', frm60_DividentsEdit.ods04['T050_OTH_COUNT']);
  	oqAdd.SetVariable('T050_SUM_2', frm60_DividentsEdit.ods04['T050_SUM']);
	  oqAdd.SetVariable('T050_TAX_VALUE_2', frm60_DividentsEdit.ods04['T050_TAX_VALUE']);
  end
  else oqAdd.SetVariable('T050_EDIT_2', 'N');
  oqAdd.Execute;
  FT050_ID := oqAdd.GetVariable('T050_ID_1');
end;

function Tfrm60_DividentsList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm60_DividentsEdit.Instance;
end;

function Tfrm60_DividentsList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actAddAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(ADD_DIVIDEND, FALSE)
  end else
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_DIVIDEND, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(DELETE_DIVIDEND, FALSE)
  end else
  begin
    Result := True;
  end;
end;

function Tfrm60_DividentsList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  result:= false;
  if frm60_DividentsEdit.edit1 then
  begin
	  oqDupl.SetVariable('T050_ID', odsList['T050_ID']);
  	oqDupl.SetVariable('T050_DATE', odsList['T050_DATE']);
	  oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
	  oqDupl.SetVariable('T050_TYPE', 1);
  	oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  	oqDupl.Execute;
//  result := false;
  	Result := oqDupl.GetVariable('o_result') > 0;
    if not Result then exit;
	end;
  if frm60_DividentsEdit.edit2 then
  begin
	  oqDupl.SetVariable('T050_ID', odsList['T050_ID']);
  	oqDupl.SetVariable('T050_DATE', odsList['T050_DATE']);
	  oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
	  oqDupl.SetVariable('T050_TYPE', 2);
  	oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  	oqDupl.Execute;
  	Result := oqDupl.GetVariable('o_result') > 0;
	end;
end;

procedure Tfrm60_DividentsList.RefreshAfterListChange;
begin
  RefreshData('T050_ID', FT050_ID);
end;

procedure Tfrm60_DividentsList.WriteLogOnDelete;
begin
  Matrix.MA.WriteToLog2(DELETE_DIVIDEND, true, '');
end;

procedure Tfrm60_DividentsList.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_DIVIDEND, true, '');
end;

procedure Tfrm60_DividentsList.WriteLogOnInsert;
begin
  Matrix.MA.WriteToLog2(ADD_DIVIDEND, true, '');
end;

function Tfrm60_DividentsList.GetIDFieldName: string;
begin
  Result := 'T050_ID';
end;



end.
