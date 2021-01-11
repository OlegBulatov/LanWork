unit frm29_SecTypeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;

type
  Tfrm29_SecTypeList = class(Tfrm04_List)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
    odsListT027_INCL_FICT1: TStringField;
    odsListT027_ORDER_NO: TFloatField;
    odsListT027_INCL_FICT1_NAME: TStringField;
  private
    FT027_ID: Double;
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
    //
    function GetIDFieldName: string; override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm29_SecTypeList: Tfrm29_SecTypeList;

implementation

uses
  Matrix, A00_MatrixConst, frm29_SecTypeEditForm;

{$R *.DFM}

{ Tfrm29_SecTypeList }

class function Tfrm29_SecTypeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm29_SecTypeList;
end;

class function Tfrm29_SecTypeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm29_SecTypeList;
end;

class procedure Tfrm29_SecTypeList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm29_SecTypeList) := AForm;
end;

procedure Tfrm29_SecTypeList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T027_INCL_FICT1').AsString := 'F';
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm29_SecTypeList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T027_ID', odsList['T027_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT027_ID := odsList['T027_ID'];
end;

procedure Tfrm29_SecTypeList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']);
  oqUpdate.SetVariable('T027_COMMENTS', odsList['T027_COMMENTS']);
  oqUpdate.SetVariable('T027_ORDER_NO', odsList['T027_ORDER_NO']);
  oqUpdate.SetVariable('T027_INCL_FICT1', odsList['T027_INCL_FICT1']);
  oqUpdate.Execute;
  FT027_ID := odsList['T027_ID'];
end;

procedure Tfrm29_SecTypeList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']);
  oqAdd.SetVariable('T027_COMMENTS', odsList['T027_COMMENTS']);
  oqAdd.SetVariable('T027_ORDER_NO', odsList['T027_ORDER_NO']);
  oqAdd.SetVariable('T027_INCL_FICT1', odsList['T027_INCL_FICT1']);
  oqAdd.Execute;
  FT027_ID := oqAdd.GetVariable('T027_ID');
end;

procedure Tfrm29_SecTypeList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_SECTYPE, true, '');
end;

procedure Tfrm29_SecTypeList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_SECTYPE, true, '');
end;

procedure Tfrm29_SecTypeList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_SECTYPE, true, '');
end;

function Tfrm29_SecTypeList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm29_SecTypeEdit.Instance;
end;

function Tfrm29_SecTypeList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_SECTYPE, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_SECTYPE, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_SECTYPE, FALSE)
  else result:= true;
end;

function Tfrm29_SecTypeList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']);
  oqDupl.SetVariable('T027_ORDER_NO', odsList['T027_ORDER_NO']);
  oqDupl.SetVariable('T027_COMMENTS', odsList['T027_COMMENTS']);
  oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm29_SecTypeList.RefreshAfterListChange;
begin
  RefreshData('T027_ID', FT027_ID);
end;

function Tfrm29_SecTypeList.GetIDFieldName: string;
begin
  Result := 'T027_ID';
end;

end.
