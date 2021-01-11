unit frm07_OperListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm07_OperList = class(Tfrm04_List)
    odsListT011_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT011_OPERATION_DESC: TStringField;
  private
    FT011_ID: Double;
  protected
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
  end;

var
  frm07_OperList: Tfrm07_OperList;

implementation

uses
  Matrix, A00_MatrixConst, frm07_OperEditForm;

{$R *.DFM}

{ Tfrm07_OperList }

class function Tfrm07_OperList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm07_OperList;
end;

class function Tfrm07_OperList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm07_OperList;
end;

class procedure Tfrm07_OperList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm07_OperList) := AForm;
end;

procedure Tfrm07_OperList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T011_ID', odsList['T011_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT011_ID := odsList['T011_ID'];
end;

procedure Tfrm07_OperList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T011_ID', odsList['T011_ID']);
  oqUpdate.SetVariable('T011_TYPE_ID', odsList['T011_TYPE_ID']);
  oqUpdate.SetVariable('T011_OPERATION_DESC', odsList['T011_OPERATION_DESC']);
  oqUpdate.Execute;
  FT011_ID := odsList['T011_ID'];
end;

procedure Tfrm07_OperList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T011_TYPE_ID', odsList['T011_TYPE_ID']);
  oqAdd.SetVariable('T011_OPERATION_DESC', odsList['T011_OPERATION_DESC']);
  oqAdd.Execute;
  FT011_ID := oqAdd.GetVariable('T011_ID');
end;

procedure Tfrm07_OperList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_OPER, true, '');
end;

procedure Tfrm07_OperList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_OPER, true, '');
end;

procedure Tfrm07_OperList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_OPER, true, '');
end;

function Tfrm07_OperList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm07_OperEdit.Instance;
end;

function Tfrm07_OperList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_OPER, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_OPER, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_OPER, FALSE)
  else result:= true;
end;

function Tfrm07_OperList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T011_TYPE_ID', odsList['T011_TYPE_ID']);
  oqDupl.SetVariable('T011_OPERATION_DESC', odsList['T011_OPERATION_DESC']);
  oqDupl.SetVariable('T011_ID', odsList['T011_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm07_OperList.RefreshAfterListChange;
begin
  RefreshData('T011_ID', FT011_ID);
end;

end.
