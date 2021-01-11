unit frm38_NewReportsForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, Graphics, frm00_ParentForm;

type
  Tfrm38_NewReports = class(Tfrm04_List)
    actCopyReports: TAction;
    ToolButton5: TToolButton;
    oqCopyReports: TOracleQuery;
    pnlRefresh: TPanel;
    odsListT093_ID: TFloatField;
    odsListT093_NUMB_IN_YEA: TStringField;
    odsListT093_NUMB_IN_YEA_DESC: TStringField;
    odsListT093_BANK_CODE: TStringField;
    odsListT093_LOAD_DATE_GCI: TDateTimeField;
    odsListT093_LOAD_DATE_DPB: TDateTimeField;
    odsListT093_CAN_LOAD: TStringField;
    odsListT093_GCI_SUM_IN: TFloatField;
    odsListT093_GCI_SUM_OUT: TFloatField;
    odsListT093_GCI_SALDO: TFloatField;
    odsListT093_DPB_SUM_IN: TFloatField;
    odsListT093_DPB_SUM_OUT: TFloatField;
    odsListT093_DPB_SALDO: TFloatField;
    odsListT093_RAZN_SUM_IN: TFloatField;
    odsListT093_RAZN_SUM_OUT: TFloatField;
    odsListT093_RAZN_SALDO: TFloatField;
    ToolButton8: TToolButton;
    actOpGci: TAction;
    odsListT093_FICT_OPER_DESC: TStringField;
    odsListT093_WAS_HAND_CHANGE: TStringField;
    ToolButton6: TToolButton;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actCopyReportsExecute(Sender: TObject);
    procedure actOpGciExecute(Sender: TObject);
    procedure xxxDBGridColExit(Sender: TObject);
  private
    FT093_ID: Double;
  protected
    function GetRowFontColor: TColor; override;
    //
    procedure OnEdit; override;
    procedure DoEdit; override;
    procedure WriteLogOnEdit(); override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm38_NewReports: Tfrm38_NewReports;

implementation

uses
  dm005_MainData, Matrix, A00_MatrixConst, untMessages, frm04_EditForm,
  frm38_NewReportsOpGCIForm;

{$R *.DFM}

{ Tfrm04_List1 }

class function Tfrm38_NewReports.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm38_NewReports;
end;

class function Tfrm38_NewReports.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm38_NewReports;
end;

class procedure Tfrm38_NewReports.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm38_NewReports) := AForm;
end;

procedure Tfrm38_NewReports.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array [Boolean] of Cardinal = (0, DFCS_CHECKED);
var
//  I: Integer;
  VRect: TRect;
begin
  inherited;
  if Column.Index <> 15 then Exit;

  VRect := Rect;
  VRect.Top := VRect.Top + 1;
  VRect.Bottom := VRect.Bottom - 1;
  xxxDBGrid.Canvas.FillRect(Rect);
  DrawFrameControl(
    xxxDBGrid.Canvas.Handle,
    VRect,
    DFC_BUTTON,
    DFCS_BUTTONCHECK or
    VState[odsListT093_CAN_LOAD.AsString = 'Y'] or
    DFCS_FLAT
    );
end;


procedure Tfrm38_NewReports.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index <> 15 then Exit;

  xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];

  // if не прошел матрикс then Exit;
  if dmMain.UseMatrix then
  begin
    if not Matrix.MA.IsOperationPermitted(CHANGE_REPORT_CAN_LOAD, FALSE) then Exit;
  end;

  // задаем вопрос пользователю
  if not TAppMessages.ShowConfirmation('Проставить признак "Перезагрузить отчет КО"?') then Exit;

  OnEdit;
end;

procedure Tfrm38_NewReports.DoEdit;
begin
  if odsListT093_CAN_LOAD.AsString = 'Y' then
    odsListT093_CAN_LOAD.AsString := 'N'
  else if odsListT093_CAN_LOAD.AsString = 'N' then
    odsListT093_CAN_LOAD.AsString := 'Y';

  oqUpdate.SetVariable('T093_ID', odsList['T093_ID']);
  oqUpdate.SetVariable('T093_CAN_LOAD', odsList['T093_CAN_LOAD']);

  oqUpdate.Execute;
  FT093_ID := odsList['T093_ID'];
end;

procedure Tfrm38_NewReports.OnEdit;
begin
  DataSet.Edit;
  EditType := etEdit;
  SaveChange;
end;

procedure Tfrm38_NewReports.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_REPORT_CAN_LOAD, true, '');
end;

procedure Tfrm38_NewReports.RefreshAfterListChange;
begin
  RefreshData('T093_ID', FT093_ID);
end;

// Сверить с отчетами ДИТ ('Отчеты ДИТ')
procedure Tfrm38_NewReports.actCopyReportsExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
// вызываем процедуру p_sync_reports
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    oqCopyReports.Execute;
    actRefreshExecute(Self);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm38_NewReports.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  inherited;
  pnlRefresh.Caption:= '  Дата последнего обновления: ' + dmMain.GetSetting('LAST_GCI_REPORTS_REFRESH');
end;

procedure Tfrm38_NewReports.actOpGciExecute(Sender: TObject);
var
  FForm: Tfrm38_NewReportsOpGCI;
begin
  //показывает отчеты ГЦИ
  FForm := Tfrm38_NewReportsOpGCI.Instance;
  FForm.odsList.SetVariable('ID',odsList.FieldByName('T093_ID').AsFloat);
  FForm.actRefreshExecute(Self);
  FForm.ShowModal;
end;

function Tfrm38_NewReports.GetRowFontColor: TColor;
begin
  if (odsList.FieldByName('T093_FICT_OPER_DESC').AsString = 'Нет')
  or (odsList.FieldByName('T093_WAS_HAND_CHANGE').AsString = 'Нет')then
  begin
    Result := inherited GetRowFontColor;
  end else
  begin
    Result := clRed;
  end;
end;

procedure Tfrm38_NewReports.xxxDBGridColExit(Sender: TObject);
begin
  //inherited;
  xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
end;

end.
