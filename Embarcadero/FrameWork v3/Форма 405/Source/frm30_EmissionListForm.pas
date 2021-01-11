unit frm30_EmissionListForm;

interface

uses
  Db, ActnList, frm04_TabListForm, frm04_EditForm, frm00_ParentForm,
  Oracle, OracleData, Menus, Classes, StdCtrls, ComCtrls, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  frm04_ListForm, Oracle, OracleData, Menus,  Grids, DBGrids,
//  xxxDBGrid, ComCtrls, ToolWin, , , fmSeach,
//  ExtCtrls, StdCtrls, DBCtrls, Buttons, fm31_FilterFrame;

type
  TSecTypesFilter = (tstAll, tstPart2);

  Tfrm30_EmissionList = class(Tfrm04_TabList)
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_SHOT_NAME: TStringField;
  private
    FT030_ID: Double;
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
  frm30_EmissionList: Tfrm30_EmissionList;

implementation

uses Matrix, A00_MatrixConst, frm30_EmissionEditForm;

{$R *.DFM}

{ Tfrm30_EmissionList }

class function Tfrm30_EmissionList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm30_EmissionList;
end;

class function Tfrm30_EmissionList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm30_EmissionList;
end;

class procedure Tfrm30_EmissionList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm30_EmissionList) := AForm;
end;

procedure Tfrm30_EmissionList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T030_ID', odsList['T030_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm30_EmissionList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T026_ID', odsList['T026_ID']);
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.Execute;
  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm30_EmissionList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T026_ID', odsList['T026_ID']);
  oqAdd.SetVariable('T027_ID', odsList['T027_ID']);
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
  oqAdd.Execute;
  FT030_ID := oqAdd.GetVariable('T030_ID');
end;

procedure Tfrm30_EmissionList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_EMISSION, true, '');
end;

procedure Tfrm30_EmissionList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_EMISSION, true, '');
end;

procedure Tfrm30_EmissionList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_EMISSION, true, '');
end;

function Tfrm30_EmissionList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm30_EmissionEdit.Instance;
end;

function Tfrm30_EmissionList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_EMISSION, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_EMISSION, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_EMISSION, FALSE)
  else result:= true;
end;

function Tfrm30_EmissionList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T026_ID', odsList['T026_ID']);
  oqDupl.SetVariable('T027_ID', odsList['T027_ID']);
  oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm30_EmissionList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

end.
