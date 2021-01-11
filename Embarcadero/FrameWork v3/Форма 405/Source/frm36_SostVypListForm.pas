unit frm36_SostVypListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm36_SostVypList = class(Tfrm04_List)
    odsListT023_ID: TFloatField;
    odsListT023_NAME: TStringField;
  private
    FT023_ID: Double;
  protected
    //
//    procedure OnAdd; override;
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
  frm36_SostVypList: Tfrm36_SostVypList;

implementation

uses
  frm36_SostVypEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm36_SostVypList }

class function Tfrm36_SostVypList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm36_SostVypList;
end;

class function Tfrm36_SostVypList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm36_SostVypList;
end;

class procedure Tfrm36_SostVypList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm36_SostVypList) := AForm;
end;

procedure Tfrm36_SostVypList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T023_ID', odsList['T023_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT023_ID := odsList['T023_ID'];
end;

procedure Tfrm36_SostVypList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T023_ID', odsList['T023_ID']);
  oqUpdate.SetVariable('T023_NAME', odsList['T023_NAME']);
  oqUpdate.Execute;
  FT023_ID := odsList['T023_ID'];
end;

procedure Tfrm36_SostVypList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T023_NAME', odsList['T023_NAME']);
  oqAdd.Execute;
  FT023_ID := oqAdd.GetVariable('T023_ID');
end;

procedure Tfrm36_SostVypList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_SOST, true, '');
end;

procedure Tfrm36_SostVypList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_SOST, true, '');
end;

procedure Tfrm36_SostVypList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_SOST, true, '');
end;

function Tfrm36_SostVypList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm36_SostVypEdit.Instance;
end;

function Tfrm36_SostVypList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_SOST, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_SOST, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_SOST, FALSE)
  else result:= true;
end;

function Tfrm36_SostVypList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T023_NAME', odsList['T023_NAME']);
  oqDupl.SetVariable('T023_ID', odsList['T023_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm36_SostVypList.RefreshAfterListChange;
begin
  RefreshData('T023_ID', FT023_ID);
end;

end.
