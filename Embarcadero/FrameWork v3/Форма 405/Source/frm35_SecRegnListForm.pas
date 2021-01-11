unit frm35_SecRegnListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;

type
  Tfrm35_SecRegnList = class(Tfrm04_List)
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT026_TRIMMED: TStringField;
  private
    FT026_ID: Double;
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
    //
    function GetIDFieldName: string; override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm35_SecRegnList: Tfrm35_SecRegnList;

implementation

uses
  Matrix, A00_MatrixConst, frm35_SecRegnEditForm;

{$R *.DFM}

{ Tfrm35_SecRegnList }

class function Tfrm35_SecRegnList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm35_SecRegnList;
end;

class function Tfrm35_SecRegnList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm35_SecRegnList;
end;

class procedure Tfrm35_SecRegnList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm35_SecRegnList) := AForm;
end;

procedure Tfrm35_SecRegnList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T026_ID', odsList['T026_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT026_ID := odsList['T026_ID'];
end;

procedure Tfrm35_SecRegnList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T026_ID', odsList['T026_ID']);
  oqUpdate.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']);
  oqUpdate.SetVariable('T026_TRIMMED', odsList['T026_TRIMMED']);
  oqUpdate.Execute;
  FT026_ID := odsList['T026_ID'];
end;

procedure Tfrm35_SecRegnList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']);
  oqAdd.SetVariable('T026_TRIMMED', odsList['T026_TRIMMED']);
  oqAdd.Execute;
  FT026_ID := oqAdd.GetVariable('T026_ID');
end;

procedure Tfrm35_SecRegnList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_SECREGN, true, '');
end;

procedure Tfrm35_SecRegnList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_SECREGN, true, '');
end;

procedure Tfrm35_SecRegnList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_SECREGN, true, '');
end;

function Tfrm35_SecRegnList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm35_SecRegnEdit.Instance;
end;

function Tfrm35_SecRegnList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_SECREGN, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_SECREGN, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_SECREGN, FALSE)
  else result:= true;
end;

function Tfrm35_SecRegnList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']);
  oqDupl.SetVariable('T026_ID', odsList['T026_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm35_SecRegnList.RefreshAfterListChange;
begin
  RefreshData('T026_ID', FT026_ID);
end;

function Tfrm35_SecRegnList.GetIDFieldName: string;
begin
  Result := 'T026_ID';
end;

end.
