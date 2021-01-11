unit frm83_DefaultSetListForm;

interface

uses
  frm04_ListForm, frm80_CalcRemainsForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm, Variants, System.Actions;
//  Messages, Graphics, Dialogs,

type
  Tfrm83_DefaultSetList = class(Tfrm04_List, TCalcStepPage)
    odsListT030_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT092_ID: TFloatField;
    odsListT032_ID: TFloatField;
    odsListPAY_DESC: TStringField;
    odsListPAY_DATE: TDateTimeField;
    odsListPAY_RATE: TFloatField;
    odsListREM_COUNT: TFloatField;
    odsListREM_NOMINAL: TFloatField;
    odsListPAY_USD_SUM: TFloatField;
    odsListPAY_NOM_SUM: TFloatField;
    odsListIS_DEFAULT: TFloatField;
    oqDefaultAdd: TOracleQuery;
    oqDefaultDelete: TOracleQuery;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actShowEmissPayments: TAction;
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actShowEmissPaymentsExecute(Sender: TObject);
  private
    FDirectCall: Boolean;
    FT092_ID: Variant;
    FT032_ID: Variant;
    procedure ChangeDefaultFlag(ADefaultFlag: Integer);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    property DirectCall: Boolean read FDirectCall write FDirectCall;
  end;

var
  frm83_DefaultSetList: Tfrm83_DefaultSetList;

implementation

uses SysUtils, dm005_MainData, frm831_EmissPaymentsListForm;

//uses untMessages, frm04_EditForm, frm82_RemainsPeriodListForm,
//  ;

{$R *.DFM}

{ Tfrm83_DefaultSetList }

procedure Tfrm83_DefaultSetList.RefreshAfterListChange;
begin
  RefreshData('T092_ID; T032_ID', VarArrayOf([odsList['T092_ID'], odsList['T032_ID']]));
end;

procedure Tfrm83_DefaultSetList.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm83_DefaultSetList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm83_DefaultSetList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_DefaultSetList;
end;

class function Tfrm83_DefaultSetList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_DefaultSetList;
end;

procedure Tfrm83_DefaultSetList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);

  inherited;
end;

class procedure Tfrm83_DefaultSetList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_DefaultSetList) := AForm;
end;

procedure Tfrm83_DefaultSetList.ChangeDefaultFlag(ADefaultFlag: Integer);
begin
  if ADefaultFlag = 1 then
  begin
    oqDefaultAdd.SetVariable('T030_ID', odsList['T030_ID']);
    oqDefaultAdd.SetVariable('T032_ID', odsList['T032_ID']);
    oqDefaultAdd.SetVariable('T092_ID', odsList['T092_ID']);
    oqDefaultAdd.Execute;
  end
  else
  begin
    oqDefaultDelete.SetVariable('T032_ID', odsList['T032_ID']);
    oqDefaultDelete.SetVariable('T092_ID', odsList['T092_ID']);
    oqDefaultDelete.Execute;
  end;
end;

procedure Tfrm83_DefaultSetList.xxxDBGridCellClick(Column: TColumn);
var
  VOLDCursor: TCursor;
  I: Integer;
  VDefaultFlag: Integer;
begin
  if (Column.Field.FieldName <> 'IS_DEFAULT') then
  begin
    Exit;
  end;

  odsList.DisableControls;
  VOLDCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  FT092_ID := odsList['T092_ID'];
  FT032_ID := odsList['T032_ID'];

  xxxDBGrid.SelectedRows.CurrentRowSelected := True;

  VDefaultFlag := (odsList['IS_DEFAULT'] + 1) mod 2;

  try
    try
      dmMain.StartTransaction;

      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);

        if (VDefaultFlag <> odsListIS_DEFAULT.AsInteger) then
        begin
          ChangeDefaultFlag(VDefaultFlag);
        end;
      end;

      dmMain.Commit;
    except
      on E: Exception do
      begin
        dmMain.Rollback;
        raise;
      end;
    end;
  finally
    xxxDBGrid.SelectedRows.Clear;
    Screen.Cursor := VOLDCursor;
    RefreshAfterListChange;
    odsList.EnableControls;
  end;
end;

procedure Tfrm83_DefaultSetList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;

  if (Column.Field.FieldName = 'IS_DEFAULT') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(xxxDBGrid.Canvas.Handle,
		     VRect,
		     DFC_BUTTON,
		     DFCS_BUTTONCHECK or
		     VState[Column.Field.AsInteger = 1] or
		     DFCS_FLAT);
  end;
end;

procedure Tfrm83_DefaultSetList.actShowEmissPaymentsExecute(
  Sender: TObject);
var
  VEmissPayments: Tfrm831_EmissPaymentsList;
begin
  VEmissPayments := Tfrm831_EmissPaymentsList(Tfrm831_EmissPaymentsList.Instance);
  VEmissPayments.T030_ID := odsList['T030_ID'];
  VEmissPayments.ShowModal;

  RefreshAfterListChange;
end;

end.
