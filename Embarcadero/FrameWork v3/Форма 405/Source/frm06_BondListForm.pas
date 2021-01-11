unit frm06_BondListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , frm04_EditForm,

type
  Tfrm06_BondList = class(Tfrm04_List)
    odsListT016_ID: TFloatField;
    odsListT016_BOND_ID: TStringField;
    odsListT016_BOND_DESC: TStringField;
  private
    //FT016_ID: Double;
  protected
    //
//    procedure OnAdd; override;
    //
{    function IsDuplicateFound: Boolean; override;
    procedure RefreshAfterListChange; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;}
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm06_BondList: Tfrm06_BondList;

implementation

uses
  frm06_BondEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm06_BondList }

class function Tfrm06_BondList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm06_BondList;
end;

class function Tfrm06_BondList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm06_BondList;
end;

class procedure Tfrm06_BondList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm06_BondList) := AForm;
end;

{procedure Tfrm06_BondList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T016_ID', odsList['T016_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT016_ID := odsList['T016_ID'];
end;

procedure Tfrm06_BondList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T016_ID', odsList['T016_ID']);
  oqUpdate.SetVariable('T016_BOND_ID', odsList['T016_BOND_ID']);
  oqUpdate.SetVariable('T016_BOND_DESC', odsList['T016_BOND_DESC']);
  oqUpdate.Execute;
  FT016_ID := odsList['T016_ID'];
end;

procedure Tfrm06_BondList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T016_BOND_ID', odsList['T016_BOND_ID']);
  oqAdd.SetVariable('T016_BOND_DESC', odsList['T016_BOND_DESC']);
  oqAdd.Execute;
  FT016_ID := oqAdd.GetVariable('T016_ID');
end;

procedure Tfrm06_BondList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_BOND, true);
end;

procedure Tfrm06_BondList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_BOND, true);
end;

procedure Tfrm06_BondList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_BOND, true);
end;

function Tfrm06_BondList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm06_BondEdit.Instance;
end;

function Tfrm06_BondList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_BOND, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_BOND, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_BOND, FALSE)
  else result:= true;
end;

function Tfrm06_BondList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T016_BOND_ID', odsList['T016_BOND_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm06_BondList.RefreshAfterListChange;
begin
  RefreshData('T016_ID', FT016_ID);
end;}

end.
