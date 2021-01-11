unit frm47_IssuerGroupListForm;

interface

uses
  frm04_TabListForm, Forms, ActnList, Db, frm04_TabListItemForm, frm04_EditForm,
  frm00_ParentForm, Oracle, OracleData, Menus, Classes, StdCtrls, ComCtrls,
  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls,
  ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  Oracle, OracleData, Menus, fmSeach,
//  ComCtrls, ExtCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
//  StdCtrls, fm31_FilterFrame;

type
  Tfrm47_IssuerGroupList = class(Tfrm04_TabList)
    odsListT042_ID: TFloatField;
    odsListT042_SHORT_NAME: TStringField;
    odsListT042_LONG_NAME: TStringField;
  private
    FT042_ID: Double;
  protected
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function GetListItem: Tfrm04_TabListItem; override;
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
  frm47_IssuerGroupList: Tfrm47_IssuerGroupList;

implementation

uses
  frm47_IssuerGroupListItemForm, frm47_IssuerGroupEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm47_IssuerGroupList }

function Tfrm47_IssuerGroupList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm47_IssuerGroupEdit.Instance;
end;

function Tfrm47_IssuerGroupList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm47_IssuerGroupListItem.Instance;
end;

class function Tfrm47_IssuerGroupList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupList;
end;

class function Tfrm47_IssuerGroupList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupList;
end;

class procedure Tfrm47_IssuerGroupList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupList) := AForm;
end;

procedure Tfrm47_IssuerGroupList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T042_ID', odsList['T042_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT042_ID := odsList['T042_ID'];
end;

procedure Tfrm47_IssuerGroupList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T042_ID', odsList['T042_ID']);
  oqUpdate.SetVariable('T042_SHORT_NAME', odsList['T042_SHORT_NAME']);
  oqUpdate.SetVariable('T042_LONG_NAME', odsList['T042_LONG_NAME']);
  oqUpdate.Execute;
  FT042_ID := odsList['T042_ID'];
end;

procedure Tfrm47_IssuerGroupList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T042_SHORT_NAME', odsList['T042_SHORT_NAME']);
  oqAdd.SetVariable('T042_LONG_NAME', odsList['T042_LONG_NAME']);
  oqAdd.Execute;
  FT042_ID := oqAdd.GetVariable('T042_ID');
end;

function Tfrm47_IssuerGroupList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой объект
  oqDupl.SetVariable('T042_ID', odsList['T042_ID']);
  oqDupl.SetVariable('T042_SHORT_NAME', odsList['T042_SHORT_NAME']);
  oqDupl.SetVariable('T042_LONG_NAME', odsList['T042_LONG_NAME']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm47_IssuerGroupList.RefreshAfterListChange;
begin
  RefreshData('T042_ID', FT042_ID);
end;

procedure Tfrm47_IssuerGroupList.WriteLogOnDelete;
begin
  Matrix.MA.WriteToLog2(DELETE_ISSUER_GROUP, true, '');
end;

procedure Tfrm47_IssuerGroupList.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUER_GROUP, true, '');
end;

procedure Tfrm47_IssuerGroupList.WriteLogOnInsert;
begin
  Matrix.MA.WriteToLog2(ADD_ISSUER_GROUP, true, '');
end;

function Tfrm47_IssuerGroupList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actAddAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(ADD_ISSUER_GROUP, FALSE)
  end else
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_ISSUER_GROUP, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(DELETE_ISSUER_GROUP, FALSE)
  end else
  begin
    Result := True;
  end;
end;

end.
