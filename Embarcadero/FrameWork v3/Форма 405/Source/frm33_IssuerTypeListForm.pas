unit frm33_IssuerTypeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm33_IssuerTypeList = class(Tfrm04_List)
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT025_LONG_NAME: TStringField;
    odsListT025_CODE: TFloatField;
  private
    FT025_ID: Double;
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
  frm33_IssuerTypeList: Tfrm33_IssuerTypeList;

implementation

uses frm33_IssuerTypeEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm33_IssuerTypeList }

class function Tfrm33_IssuerTypeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm33_IssuerTypeList;
end;

class function Tfrm33_IssuerTypeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm33_IssuerTypeList;
end;

class procedure Tfrm33_IssuerTypeList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm33_IssuerTypeList) := AForm;
end;

procedure Tfrm33_IssuerTypeList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T025_ID', odsList['T025_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT025_ID := odsList['T025_ID'];
end;

procedure Tfrm33_IssuerTypeList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T025_ID', odsList['T025_ID']);
  oqUpdate.SetVariable('T025_SHOT_NAME', odsList['T025_SHOT_NAME']);
  oqUpdate.SetVariable('T025_LONG_NAME', odsList['T025_LONG_NAME']);
  oqUpdate.SetVariable('T025_CODE', odsList['T025_CODE']);
  oqUpdate.Execute;
  FT025_ID := odsList['T025_ID'];
end;

procedure Tfrm33_IssuerTypeList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T025_SHOT_NAME', odsList['T025_SHOT_NAME']);
  oqAdd.SetVariable('T025_LONG_NAME', odsList['T025_LONG_NAME']);
  oqAdd.SetVariable('T025_CODE', odsList['T025_CODE']);
  oqAdd.Execute;
  FT025_ID := oqAdd.GetVariable('T025_ID');
end;

procedure Tfrm33_IssuerTypeList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_ISSUERTYPE, true, '');
end;

procedure Tfrm33_IssuerTypeList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUERTYPE, true, '');
end;

procedure Tfrm33_IssuerTypeList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_ISSUERTYPE, true, '');
end;

function Tfrm33_IssuerTypeList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm33_IssuerTypeEdit.Instance;
end;

function Tfrm33_IssuerTypeList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_ISSUERTYPE, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_ISSUERTYPE, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_ISSUERTYPE, FALSE)
  else result:= true;
end;

function Tfrm33_IssuerTypeList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T025_ID', odsList['T025_ID']);
  oqDupl.SetVariable('T025_SHOT_NAME', odsList['T025_SHOT_NAME']);
  oqDupl.SetVariable('T025_LONG_NAME', odsList['T025_LONG_NAME']);
  oqDupl.SetVariable('T025_CODE', odsList['T025_CODE']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm33_IssuerTypeList.RefreshAfterListChange;
begin
  RefreshData('T025_ID', FT025_ID);
end;

end.
