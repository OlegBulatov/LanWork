unit frm83_RemainsOtherListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, Graphics, Controls, Dialogs,

type
  Tfrm83_RemainsOtherList = class(Tfrm04_List)
    odsListT104_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT104_DATE: TDateTimeField;
    odsListT104_COUNT: TFloatField;
    odsListT104_SUM: TFloatField;
    odsListT104_CROSS_SUM: TFloatField;
    odsListT104_TYPE: TStringField;
    odsListT104_TYPE_DESC: TStringField;
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FT104_ID: Double;
  public
    class function Instance: Tfrm83_RemainsOtherList;
    //
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant);  override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    procedure OnAdd; override;
    //
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm83_RemainsOtherList: Tfrm83_RemainsOtherList;

implementation

uses
  SysUtils, frm83_RemainsListForm, dm005_MainData, frm83_RemainsOtherEditFrom,
  frm80_CalcRemainsForm, Matrix, A00_MatrixConst;

{$R *.DFM}

class function Tfrm83_RemainsOtherList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsOtherList;
end;

class function Tfrm83_RemainsOtherList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsOtherList;
end;

class procedure Tfrm83_RemainsOtherList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsOtherList) := AForm;
end;

procedure Tfrm83_RemainsOtherList.RefreshAfterListChange;
begin
  RefreshData('T104_ID', FT104_ID);
end;

procedure Tfrm83_RemainsOtherList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T030_ID', frm83_RemainsList.T030_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

class function Tfrm83_RemainsOtherList.Instance: Tfrm83_RemainsOtherList;
begin
  Result := Tfrm83_RemainsOtherList(inherited Instance);
end;

function Tfrm83_RemainsOtherList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm83_RemainsOtherEdit.Instance;
end;

procedure Tfrm83_RemainsOtherList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T104_DATE').AsDateTime := Date;
  DataSet.FieldByName('T104_TYPE').AsString := 'D';
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm83_RemainsOtherList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqAdd.SetVariable('T030_ID', frm83_RemainsList.odsList['T030_ID']);
  oqAdd.SetVariable('T104_DATE', odsList['T104_DATE']);
  oqAdd.SetVariable('T104_COUNT', odsList['T104_COUNT']);
  oqAdd.SetVariable('T104_SUM', odsList['T104_SUM']);
  oqAdd.SetVariable('T104_TYPE', odsList['T104_TYPE']);
  oqAdd.Execute;
  FT104_ID := oqAdd.GetVariable('T104_ID');

  frm83_RemainsList.RefreshAfterListChange;
end;

procedure Tfrm83_RemainsOtherList.DoEdit;
begin
  // Добавляем запись
  oqUpdate.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqUpdate.SetVariable('T104_ID', odsList['T104_ID']);
  oqUpdate.SetVariable('T104_DATE', odsList['T104_DATE']);
  oqUpdate.SetVariable('T104_COUNT', odsList['T104_COUNT']);
  oqUpdate.SetVariable('T104_SUM', odsList['T104_SUM']);
  oqUpdate.SetVariable('T104_TYPE', odsList['T104_TYPE']);
  oqUpdate.Execute;
  FT104_ID := oqUpdate.GetVariable('T104_ID');

  frm83_RemainsList.RefreshAfterListChange;
end;

procedure Tfrm83_RemainsOtherList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqDelete.SetVariable('T104_ID', odsList['T104_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT104_ID := odsList['T104_ID'];

  frm83_RemainsList.RefreshAfterListChange;  
end;

procedure Tfrm83_RemainsOtherList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_OTHER_CHANGE, true, '');
end;

procedure Tfrm83_RemainsOtherList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_OTHER_CHANGE, true, '');
end;

procedure Tfrm83_RemainsOtherList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_OTHER_CHANGE, true, '');
end;

function Tfrm83_RemainsOtherList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_OTHER_CHANGE, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_OTHER_CHANGE, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_OTHER_CHANGE, FALSE)
  else result:= true;
end;

procedure Tfrm83_RemainsOtherList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := (not frm83_RemainsList.odsList.IsEmpty) and DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := (not frm83_RemainsList.odsList.IsEmpty) and DataSet.Active and (EditForm <> nil);
end;

end.
