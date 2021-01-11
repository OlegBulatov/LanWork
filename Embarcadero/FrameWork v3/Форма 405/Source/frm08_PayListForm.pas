unit frm08_PayListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, frm04_EditForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm08_PayList = class(Tfrm04_List)
    odsListT006_ID: TFloatField;
    odsListT006_NAME: TStringField;
    odsListT006_DESC: TStringField;
    odsListT006_DIRECTION: TIntegerField;
    odsListT006_DIR_NAME: TStringField;
  private
    FT006_ID: Double;
  protected
    procedure OnAdd; override;
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
  frm08_PayList: Tfrm08_PayList;

implementation

uses
  frm08_PayEditForm, A00_MatrixConst, Matrix;

{$R *.DFM}

{ Tfrm08_PayList }

class function Tfrm08_PayList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm08_PayList;
end;

class function Tfrm08_PayList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm08_PayList;
end;

class procedure Tfrm08_PayList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm08_PayList) := AForm;
end;

procedure Tfrm08_PayList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T006_DIRECTION').AsFloat := 0;
  with EditForm do
  begin
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm08_PayList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T006_ID', odsList['T006_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT006_ID := odsList['T006_ID'];
end;

procedure Tfrm08_PayList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T006_ID', odsList['T006_ID']);
  oqUpdate.SetVariable('T006_NAME', odsList['T006_NAME']);
  oqUpdate.SetVariable('T006_DESC', odsList['T006_DESC']);
  oqUpdate.SetVariable('T006_DIRECTION', odsList['T006_DIRECTION']);
  oqUpdate.Execute;
  FT006_ID := odsList['T006_ID'];
end;

procedure Tfrm08_PayList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T006_NAME', odsList['T006_NAME']);
  oqAdd.SetVariable('T006_DESC', odsList['T006_DESC']);
  oqAdd.SetVariable('T006_DIRECTION', odsList['T006_DIRECTION']);
  oqAdd.Execute;
  FT006_ID := oqAdd.GetVariable('T006_ID');
end;

procedure Tfrm08_PayList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_PAY, true, '');
end;

procedure Tfrm08_PayList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_PAY, true, '');
end;

procedure Tfrm08_PayList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_PAY, true, '');
end;

function Tfrm08_PayList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm08_PayEdit.Instance;
end;

function Tfrm08_PayList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_PAY, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_PAY, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_PAY, FALSE)
  else result:= true;
end;

function Tfrm08_PayList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T006_ID', odsList['T006_ID']);
  oqDupl.SetVariable('T006_NAME', odsList['T006_NAME']);
  oqDupl.SetVariable('T006_DESC', odsList['T006_DESC']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm08_PayList.RefreshAfterListChange;
begin
  RefreshData('T006_ID', FT006_ID);
end;

end.
