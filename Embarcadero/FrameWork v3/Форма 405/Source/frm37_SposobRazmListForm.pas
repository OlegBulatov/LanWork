unit frm37_SposobRazmListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm37_SposobRazmList = class(Tfrm04_List)
    odsListT024_ID: TFloatField;
    odsListT024_NAME: TStringField;
  private
    FT024_ID: Double;
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
  frm37_SposobRazmList: Tfrm37_SposobRazmList;

implementation

uses
  frm37_SposobRazmEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm37_SposobRazmList }

class function Tfrm37_SposobRazmList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm37_SposobRazmList;
end;

class function Tfrm37_SposobRazmList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm37_SposobRazmList;
end;

class procedure Tfrm37_SposobRazmList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm37_SposobRazmList) := AForm;
end;

procedure Tfrm37_SposobRazmList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T024_ID', odsList['T024_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT024_ID := odsList['T024_ID'];
end;

procedure Tfrm37_SposobRazmList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T024_ID', odsList['T024_ID']);
  oqUpdate.SetVariable('T024_NAME', odsList['T024_NAME']);
  oqUpdate.Execute;
  FT024_ID := odsList['T024_ID'];
end;

procedure Tfrm37_SposobRazmList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T024_NAME', odsList['T024_NAME']);
  oqAdd.Execute;
  FT024_ID := oqAdd.GetVariable('T024_ID');
end;

procedure Tfrm37_SposobRazmList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_SPOSOB, true, '');
end;

procedure Tfrm37_SposobRazmList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_SPOSOB, true, '');
end;

procedure Tfrm37_SposobRazmList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_SPOSOB, true, '');
end;

function Tfrm37_SposobRazmList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm37_SposobRazmEdit.Instance;
end;

function Tfrm37_SposobRazmList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_SPOSOB, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_SPOSOB, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_SPOSOB, FALSE)
  else result:= true;
end;

function Tfrm37_SposobRazmList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T024_NAME', odsList['T024_NAME']);
  oqDupl.SetVariable('T024_ID', odsList['T024_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm37_SposobRazmList.RefreshAfterListChange;
begin
  RefreshData('T024_ID', FT024_ID);
end;

end.
