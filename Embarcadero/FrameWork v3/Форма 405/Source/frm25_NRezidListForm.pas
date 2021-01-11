unit frm25_NRezidListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm25_NRezidList = class(Tfrm04_List)
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TFloatField;
    odsListT034_NAME: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT034_ID: TFloatField;
    odsListT013_ID: TFloatField;
    odsListT013_FICT_STATE: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
  private
    FT013_ID: Double;
  protected
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
    { Public declarations }
    procedure RefreshAfterListChange; override;
  end;

var
  frm25_NRezidList: Tfrm25_NRezidList;

implementation

uses
  Matrix, A00_MatrixConst, frm49_NRezidBottomEditForm;

{$R *.DFM}

{ Tfrm25_NRezidList }

class function Tfrm25_NRezidList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm25_NRezidList;
end;

class function Tfrm25_NRezidList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm25_NRezidList;
end;

class procedure Tfrm25_NRezidList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm25_NRezidList) := AForm;
end;

procedure Tfrm25_NRezidList.RefreshAfterListChange;
begin
  RefreshData('T013_ID', FT013_ID);
end;

procedure Tfrm25_NRezidList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T013_ID', odsList['T013_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT013_ID := odsList['T013_ID'];
end;

procedure Tfrm25_NRezidList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T013_ID', odsList['T013_ID']);
  oqUpdate.SetVariable('T013_NAME', odsList['T013_NAME']);
  oqUpdate.SetVariable('T013_CODE', odsList['T013_CODE']);
  oqUpdate.SetVariable('T034_ID', odsList['T034_ID']);
  oqUpdate.Execute;
  FT013_ID := odsList['T013_ID'];
end;

procedure Tfrm25_NRezidList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T013_NAME', odsList['T013_NAME']);
  oqAdd.SetVariable('T013_CODE', odsList['T013_CODE']);
  oqAdd.SetVariable('T034_ID', odsList['T034_ID']);
  oqAdd.Execute;
  FT013_ID := oqAdd.GetVariable('T013_ID');
end;

procedure Tfrm25_NRezidList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_NREZID, true, '');
end;

procedure Tfrm25_NRezidList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_NREZID, true, '');
end;

procedure Tfrm25_NRezidList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_NREZID, true, '');
end;

function Tfrm25_NRezidList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm49_NRezidBottomEdit.Instance;
end;

function Tfrm25_NRezidList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_NREZID, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_NREZID, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_NREZID, FALSE)
  else result:= true;
end;

function Tfrm25_NRezidList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T013_NAME', odsList['T013_NAME']);
  oqDupl.SetVariable('T013_CODE', odsList['T013_CODE']);
  oqDupl.SetVariable('T034_ID', odsList['T034_ID']);
  oqDupl.SetVariable('T013_ID', odsList['T013_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

end.
