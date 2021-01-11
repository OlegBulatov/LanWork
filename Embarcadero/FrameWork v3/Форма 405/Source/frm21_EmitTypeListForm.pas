unit frm21_EmitTypeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm21_EmitTypeList = class(Tfrm04_List)
    odsListT037_ID: TFloatField;
    odsListT037_SHOT_NAME: TStringField;
    odsListT037_LONG_NAME: TStringField;
  private
    FT037_ID: Double;
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
  frm21_EmitTypeList: Tfrm21_EmitTypeList;

implementation

uses frm21_EmitTypeEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm21_EmitTypeList }

class function Tfrm21_EmitTypeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm21_EmitTypeList;
end;

class function Tfrm21_EmitTypeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm21_EmitTypeList;
end;

class procedure Tfrm21_EmitTypeList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm21_EmitTypeList) := AForm;
end;

procedure Tfrm21_EmitTypeList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T037_ID', odsList['T037_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT037_ID := odsList['T037_ID'];
end;

procedure Tfrm21_EmitTypeList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
  oqUpdate.SetVariable('T037_SHOT_NAME', odsList['T037_SHOT_NAME']);
  oqUpdate.SetVariable('T037_LONG_NAME', odsList['T037_LONG_NAME']);
  oqUpdate.Execute;
  FT037_ID := odsList['T037_ID'];
end;

procedure Tfrm21_EmitTypeList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T037_SHOT_NAME', odsList['T037_SHOT_NAME']);
  oqAdd.SetVariable('T037_LONG_NAME', odsList['T037_LONG_NAME']);
  oqAdd.Execute;
  FT037_ID := oqAdd.GetVariable('T037_ID');
end;

function Tfrm21_EmitTypeList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm21_EmitTypeEdit.Instance;
end;

function Tfrm21_EmitTypeList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actAddAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(ADD_ISSUER_INF_TYPE, FALSE)
  end else
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_ISSUER_INF_TYPE, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(DELETE_ISSUER_INF_TYPE, FALSE)
  end else
  begin
    Result := True;
  end;
end;

function Tfrm21_EmitTypeList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T037_ID', odsList['T037_ID']);
  oqDupl.SetVariable('T037_SHOT_NAME', odsList['T037_SHOT_NAME']);
  oqDupl.SetVariable('T037_LONG_NAME', odsList['T037_LONG_NAME']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm21_EmitTypeList.RefreshAfterListChange;
begin
  RefreshData('T037_ID', FT037_ID);
end;

procedure Tfrm21_EmitTypeList.WriteLogOnDelete;
begin
  Matrix.MA.WriteToLog2(DELETE_ISSUER_INF_TYPE, true, '');
end;

procedure Tfrm21_EmitTypeList.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUER_INF_TYPE, true, '');
end;

procedure Tfrm21_EmitTypeList.WriteLogOnInsert;
begin
  Matrix.MA.WriteToLog2(ADD_ISSUER_INF_TYPE, true, '');
end;

end.
