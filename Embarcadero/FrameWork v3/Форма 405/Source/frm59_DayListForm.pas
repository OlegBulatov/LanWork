unit frm59_DayListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm59_DayList = class(Tfrm04_List)
    odsListT063_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT063_MONTH_COUNT: TFloatField;
  private
    FT063_ID: Double;
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
  frm59_DayList: Tfrm59_DayList;

implementation

uses frm59_DayEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm59_DayList }

class function Tfrm59_DayList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm59_DayList;
end;

class function Tfrm59_DayList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm59_DayList;
end;

class procedure Tfrm59_DayList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm59_DayList) := AForm;
end;

procedure Tfrm59_DayList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T063_ID', odsList['T063_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT063_ID := odsList['T063_ID'];
end;

procedure Tfrm59_DayList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T063_ID', odsList['T063_ID']);
  oqUpdate.SetVariable('T055_ID', odsList['T055_ID']);
  oqUpdate.SetVariable('T063_MONTH_COUNT', odsList['T063_MONTH_COUNT']);
  oqUpdate.Execute;
  FT063_ID := odsList['T063_ID'];
end;

procedure Tfrm59_DayList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T055_ID', odsList['T055_ID']);
  oqAdd.SetVariable('T063_MONTH_COUNT', odsList['T063_MONTH_COUNT']);
  oqAdd.Execute;
  FT063_ID := oqAdd.GetVariable('T063_ID');
end;

procedure Tfrm59_DayList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_WORKDAY, true, '');
end;

procedure Tfrm59_DayList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_WORKDAY, true, '');
end;

procedure Tfrm59_DayList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_WORKDAY, true, '');
end;

function Tfrm59_DayList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm59_DayEdit.Instance;
end;

function Tfrm59_DayList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_WORKDAY, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_WORKDAY, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_WORKDAY, FALSE)
  else result:= true;
end;

function Tfrm59_DayList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T063_ID', odsList['T063_ID']);
  oqDupl.SetVariable('T055_ID', odsList['T055_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm59_DayList.RefreshAfterListChange;
begin
  RefreshData('T063_ID', FT063_ID);
end;

end.
