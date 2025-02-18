unit frm34_CouponListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm,
  frm00_ParentForm, System.Actions;
//  Windows, Messages, Graphics, Dialogs,
//  frm04_ListForm,

type
  Tfrm34_CouponList = class(Tfrm04_TabListItem)
    actFill: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    oqFill: TOracleQuery;
    odsListT032_DATE_START: TDateTimeField;
    odsListT032_DATE_END: TDateTimeField;
    odsListCOUPON_DAYS: TFloatField;
    odsListT032_CALC_DATE_TYPE: TIntegerField;
    odsListT032_EXD_DATE: TDateTimeField;
    odsListT032_RATE: TFloatField;
    odsListT032_SUM: TFloatField;
    odsListT032_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListCOUPON_NUMBER: TFloatField;
    oqGetPos: TOracleQuery;
    procedure actFillExecute(Sender: TObject);
    procedure actFillUpdate(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
  private
    FT032_ID: Double;
  protected
    //
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
    FLastCoupon: boolean;
    procedure RefreshAfterListChange; override;
  end;

var
  frm34_CouponList: Tfrm34_CouponList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, untMessages, dm005_MainData,
  frm31_EmisInfListForm, frm34_CouponEditForm, frm34_CouponFillForm;
//
// untMessages, , frm78_MaturityListForm;

{$R *.DFM}

{ Tfrm34_CouponList }

class function Tfrm34_CouponList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm34_CouponList;
end;

class function Tfrm34_CouponList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm34_CouponList;
end;

class procedure Tfrm34_CouponList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm34_CouponList) := AForm;
end;

procedure Tfrm34_CouponList.OnAdd;
var
  IsFirst: Boolean;
begin
  if EditForm = nil then Exit;

  // ���������� ������ ����� ��� ���
  IsFirst := DataSet.IsEmpty;

  // ���������� ����� ��� ���������� ������
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T032_DATE_END').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T030_ID').AsFloat := frm31_EmisInfList.odsListT030_ID.AsFloat;
  DataSet.FieldByName('T032_CALC_DATE_TYPE').AsFloat := 2;
  if IsFirst then
    begin
    DataSet.FieldByName('T032_DATE_START').AsDateTime := Trunc(Now);
    DataSet.FieldByName('COUPON_NUMBER').AsFloat := 1;
    end
  else
    begin
    DataSet.FieldByName('COUPON_NUMBER').AsFloat := 2;
    end;

  with EditForm as Tfrm34_CouponEdit do
    begin
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
    end;
end;

procedure Tfrm34_CouponList.DoDelete;
var
  i: Integer;
begin
  odsList.DisableControls;
  try
    // ����������� ������� ��� ������ ���������� ������
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;

    for i := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      oqDelete.SetVariable('T032_ID', odsList['T032_ID']);
      oqDelete.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // ������ ������
    odsList.Next;
    if odsList.Eof then odsList.Prior;
    FT032_ID := odsList['T032_ID'];

    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm34_CouponList.DoInsert;
begin
  // ��������� ������
  oqAdd.SetVariable('T030_ID', odsList['T030_ID']);
  oqAdd.SetVariable('T032_RATE', odsList['T032_RATE']);
  oqAdd.SetVariable('T032_SUM', odsList['T032_SUM']);
  oqAdd.SetVariable('T032_DATE_START', odsList['T032_DATE_START']);
  oqAdd.SetVariable('T032_PERIOD', odsList['COUPON_DAYS']);
  oqAdd.SetVariable('T032_EXD_DATE', odsList['T032_EXD_DATE']);
  oqAdd.SetVariable('T032_DATE_END', odsList['T032_DATE_END']);
  oqAdd.SetVariable('T032_POS', odsList['COUPON_NUMBER']);
  oqAdd.SetVariable('T032_CALC_DATE_TYPE', odsList['T032_CALC_DATE_TYPE']);

  oqAdd.Execute;
  FT032_ID := oqAdd.GetVariable('T032_ID');
end;

procedure Tfrm34_CouponList.DoEdit;
begin
  // ����������� ������
  oqUpdate.SetVariable('T032_ID', odsList['T032_ID']);
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T032_RATE', odsList['T032_RATE']);
  oqUpdate.SetVariable('T032_SUM', odsList['T032_SUM']);
  oqUpdate.SetVariable('T032_DATE_START', odsList['T032_DATE_START']);
  oqUpdate.SetVariable('T032_PERIOD', odsList['COUPON_DAYS']);
  oqUpdate.SetVariable('T032_EXD_DATE', odsList['T032_EXD_DATE']);
  oqUpdate.SetVariable('T032_DATE_END', odsList['T032_DATE_END']);
  oqUpdate.SetVariable('T032_POS', odsList['COUPON_NUMBER']);
  oqUpdate.SetVariable('T032_CALC_DATE_TYPE', odsList['T032_CALC_DATE_TYPE']);
  oqUpdate.Execute;
  FT032_ID := odsList['T032_ID'];
end;

procedure Tfrm34_CouponList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_COUPON, true, '');
end;

procedure Tfrm34_CouponList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_COUPON, true, '');
end;

procedure Tfrm34_CouponList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_COUPON, true, '');
end;

function Tfrm34_CouponList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm34_CouponEdit.Instance;
end;

function Tfrm34_CouponList.EnableAction(Action: TAction): boolean;
var
  VEnabled: Boolean;
begin
  if Assigned(frm31_EmisInfList) then
  begin
    // ���� ������������� ������ ������ ����� ����� BON1, BON2, ... , BON7
    VEnabled := frm31_EmisInfList.CouponsEnabled
      and frm31_EmisInfList.MaturityMatrixExists
      and not (
      frm31_EmisInfList.odsListT031_RATES_TYPE.IsNull or
      frm31_EmisInfList.odsListT031_CALC_METHOD.IsNull
      );
  end else
  begin
    VEnabled := False;
  end;

  if Action.Name = 'actAddAttributes' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(ADD_COUPON, FALSE)
  end else
  if Action.Name = 'actEditAttributes' then
  begin
    Result := VEnabled and Matrix.MA.IsOperationPermitted(CHANGE_COUPON, FALSE)
  end else
  if Action.Name = 'actDeleteAttributes' then
  begin
    Result:= VEnabled and Matrix.MA.IsOperationPermitted(DELETE_COUPON, FALSE)
  end else
  begin
    Result:= True;
  end;
end;

function Tfrm34_CouponList.IsDuplicateFound: Boolean;
begin
  // ��������� ���������� �� ��� ����� ����
  oqDupl.SetVariable('T032_ID', odsList['T032_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.SetVariable('T032_DATE_END', odsList['T032_DATE_END']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm34_CouponList.RefreshAfterListChange;
begin
  RefreshData('T032_ID', FT032_ID);
end;

procedure Tfrm34_CouponList.actFillExecute(Sender: TObject);
var
  vResult: Integer;
  vFillDlg: Tfrm34_CouponFillDlg;
begin
  vFillDlg := Tfrm34_CouponFillDlg.Create(Self);
  try
    if vFillDlg.ShowModal = mrOk then
      begin
      oqFill.SetVariable('PDATEMETHOD', frm31_EmisInfList.odsListT031_CALC_DATE_TYPE.AsInteger);
      oqFill.SetVariable('T030_ID', odsList['T030_ID']);
      oqFill.Execute;
      vResult := oqFill.GetVariable('RESULT');
      case vResult of
         0: ;
        -1: TAppMessages.Error('��� ���� ���������� ���������');
        -2: TAppMessages.Error('��� ���������� ������');
        -3: TAppMessages.Error('�� ���������� ���� ����');
        -4: TAppMessages.Error('�� ������ �������� ������');
        else
          TAppMessages.Error('��� �������� '+IntToStr(vResult));
        end;
      RefreshAfterListChange;
      end;
    finally
      vFillDlg.Free;
    end;
end;

procedure Tfrm34_CouponList.actFillUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actFill.Enabled := not frm31_EmisInfList.odsList.IsEmpty and DataSet.Active and EnableAction(actFill)
  else
    actFill.Enabled := not frm31_EmisInfList.odsList.IsEmpty and not DataSet.IsEmpty and DataSet.Active;
end;

procedure Tfrm34_CouponList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := not frm31_EmisInfList.odsList.IsEmpty and DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := not frm31_EmisInfList.odsList.IsEmpty and DataSet.Active and (EditForm <> nil);
end;

procedure Tfrm34_CouponList.odsListAfterScroll(DataSet: TDataSet);
begin
  // ���������� �� ���� ��������� ����� ��� ���
  oqGetPos.SetVariable('T030_ID', DataSet['T030_ID']);
  oqGetPos.SetVariable('T032_ID', DataSet['T032_ID']);
  oqGetPos.SetVariable('T032_DATE_END', DataSet['T032_DATE_END']);
  oqGetPos.Execute;
  FLastCoupon := oqGetPos.GetVariable('RESULT') = 1;
end;

end.
