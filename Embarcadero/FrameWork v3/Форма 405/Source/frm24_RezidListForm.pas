unit frm24_RezidListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm24_RezidList = class(Tfrm04_List)
    odsListT012_NAME: TStringField;
    odsListT033_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT033_ID: TFloatField;
    odsListT012_ID: TFloatField;
    odsListREGION_NAME: TStringField;
    odsListINDUSTRY_NAME: TStringField;
    odsListT012_REGION_CODE: TFloatField;
    odsListT012_INDUSTRY_CODE: TStringField;
    odsListT012_FICT_STATE: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT037_ID: TFloatField;
    odsListT025_ID: TFloatField;
    odsListT028_COUNTRY: TStringField;
    odsListT140_ID: TFloatField;
    odsListT140_SECTOR_NAME: TStringField;
  private
    FT012_ID: Double;
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
  frm24_RezidList: Tfrm24_RezidList;

implementation

uses
  Matrix, A00_MatrixConst, frm28_RezidBottomEditForm;

{$R *.DFM}

{ Tfrm24_RezidList }

class function Tfrm24_RezidList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm24_RezidList;
end;

class function Tfrm24_RezidList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm24_RezidList;
end;

class procedure Tfrm24_RezidList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm24_RezidList) := AForm;
end;

procedure Tfrm24_RezidList.RefreshAfterListChange;
begin
  RefreshData('T012_ID', FT012_ID);
end;

procedure Tfrm24_RezidList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T012_ID', odsList['T012_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT012_ID := odsList['T012_ID'];
end;

procedure Tfrm24_RezidList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T012_ID', odsList['T012_ID']);
  oqUpdate.SetVariable('T012_NAME', odsList['T012_NAME']);
  oqUpdate.SetVariable('T012_CODE', odsList['T012_CODE']);
  oqUpdate.SetVariable('T012_INDUSTRY_CODE', odsList['T012_INDUSTRY_CODE']);
  oqUpdate.SetVariable('T012_REGION_CODE', odsList['T012_REGION_CODE']);
  oqUpdate.SetVariable('T140_ID', odsList['T140_ID']);
  oqUpdate.SetVariable('T033_ID', odsList['T033_ID']);
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
  oqUpdate.Execute;
  FT012_ID := odsList['T012_ID'];
end;

procedure Tfrm24_RezidList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T012_NAME', odsList['T012_NAME']);
  oqAdd.SetVariable('T012_CODE', odsList['T012_CODE']);
  oqAdd.SetVariable('T012_INDUSTRY_CODE', odsList['T012_INDUSTRY_CODE']);
  oqAdd.SetVariable('T012_REGION_CODE', odsList['T012_REGION_CODE']);
  oqAdd.SetVariable('T140_ID', odsList['T140_ID']);
  oqAdd.SetVariable('T033_ID', odsList['T033_ID']);
  oqAdd.SetVariable('T037_ID', odsList['T037_ID']);

  oqAdd.Execute;
  FT012_ID := oqAdd.GetVariable('T012_ID');
end;

procedure Tfrm24_RezidList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_REZID, true, '');
end;

procedure Tfrm24_RezidList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_REZID, true, '');
end;

procedure Tfrm24_RezidList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_REZID, true, '');
end;

function Tfrm24_RezidList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm28_RezidBottomEdit.Instance;
end;

function Tfrm24_RezidList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_REZID, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_REZID, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_REZID, FALSE)
  else result:= true;
end;

function Tfrm24_RezidList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такой курс
  oqDupl.SetVariable('T012_ID', odsList['T012_ID']);
  oqDupl.SetVariable('T012_NAME', odsList['T012_NAME']);
  oqDupl.SetVariable('T025_ID', odsList['T025_ID']);
  oqDupl.SetVariable('T033_ID', odsList['T033_ID']);
  oqDupl.SetVariable('T012_CODE', odsList['T012_CODE']);
  oqDupl.SetVariable('T028_COUNTRY', odsList['T028_COUNTRY']);
  oqDupl.SetVariable('T037_ID', odsList['T037_ID']);

  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

end.
