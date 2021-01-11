unit frm83_RemainsOthOpsListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, Graphics, Dialogs,

type
  Tfrm83_RemainsOthOpsList = class(Tfrm04_List)
    odsListT110_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT110_DATE: TDateTimeField;
    odsListT110_COUNT: TFloatField;
    odsListT110_SUM: TFloatField;
    odsListT110_CROSS_SUM: TFloatField;
    odsListT110_TYPE: TStringField;
    odsListT110_TYPE_DESC: TStringField;
    procedure actAddAttributesUpdate(Sender: TObject);
  private
    FT110_ID: Double;
  public
    class function Instance: Tfrm83_RemainsOthOpsList;
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
  frm83_RemainsOthOpsList: Tfrm83_RemainsOthOpsList;

implementation

uses
  SysUtils, dm005_MainData, frm83_RemainsListForm, frm83_RemainsOthOpsEditFrom,
  frm80_CalcRemainsForm, Matrix, A00_MatrixConst;

{$R *.DFM}

class function Tfrm83_RemainsOthOpsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsOthOpsList;
end;

class function Tfrm83_RemainsOthOpsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsOthOpsList;
end;

class procedure Tfrm83_RemainsOthOpsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsOthOpsList) := AForm;
end;

procedure Tfrm83_RemainsOthOpsList.RefreshAfterListChange;
begin
  RefreshData('T110_ID', FT110_ID);
end;

procedure Tfrm83_RemainsOthOpsList.RefreshData(const KeyFields: string;
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

class function Tfrm83_RemainsOthOpsList.Instance: Tfrm83_RemainsOthOpsList;
begin
  Result := Tfrm83_RemainsOthOpsList(inherited Instance);
end;

function Tfrm83_RemainsOthOpsList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm83_RemainsOthOpsEdit.Instance;
end;

procedure Tfrm83_RemainsOthOpsList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T110_DATE').AsDateTime := Date;
  DataSet.FieldByName('T110_TYPE').AsString := 'D';
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm83_RemainsOthOpsList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqAdd.SetVariable('T030_ID', frm83_RemainsList.odsList['T030_ID']);
  oqAdd.SetVariable('T110_DATE', odsList['T110_DATE']);
  oqAdd.SetVariable('T110_COUNT', odsList['T110_COUNT']);
  oqAdd.SetVariable('T110_SUM', odsList['T110_SUM']);
  oqAdd.SetVariable('T110_TYPE', odsList['T110_TYPE']);
  oqAdd.Execute;
  FT110_ID := oqAdd.GetVariable('T110_ID');

  frm83_RemainsList.RefreshAfterListChange;
end;

procedure Tfrm83_RemainsOthOpsList.DoEdit;
begin
  // Добавляем запись
  oqUpdate.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqUpdate.SetVariable('T110_ID', odsList['T110_ID']);
  oqUpdate.SetVariable('T110_DATE', odsList['T110_DATE']);
  oqUpdate.SetVariable('T110_COUNT', odsList['T110_COUNT']);
  oqUpdate.SetVariable('T110_SUM', odsList['T110_SUM']);
  oqUpdate.SetVariable('T110_TYPE', odsList['T110_TYPE']);
  oqUpdate.Execute;
  FT110_ID := oqUpdate.GetVariable('T110_ID');

  frm83_RemainsList.RefreshAfterListChange;
end;

procedure Tfrm83_RemainsOthOpsList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqDelete.SetVariable('T110_ID', odsList['T110_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT110_ID := odsList['T110_ID'];

  frm83_RemainsList.RefreshAfterListChange;  
end;

procedure Tfrm83_RemainsOthOpsList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_OTHER_CHANGE, true, '');
end;

procedure Tfrm83_RemainsOthOpsList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_OTHER_CHANGE, true, '');
end;

procedure Tfrm83_RemainsOthOpsList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_OTHER_CHANGE, true, '');
end;

function Tfrm83_RemainsOthOpsList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_OTHER_CHANGE, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_OTHER_CHANGE, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_OTHER_CHANGE, FALSE)
  else result:= true;
end;

procedure Tfrm83_RemainsOthOpsList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := (not frm83_RemainsList.odsList.IsEmpty) and DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := (not frm83_RemainsList.odsList.IsEmpty) and DataSet.Active and (EditForm <> nil);
end;

end.
