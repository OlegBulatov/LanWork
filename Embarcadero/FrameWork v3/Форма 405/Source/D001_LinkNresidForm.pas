unit D001_LinkNresidForm;

interface

uses
  frm04_ListForm, Db, xxxDbLookupCheckCombo, StdCtrls, fm01_PeriodFrame,
  Oracle, OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm00_ParentForm;
//  Windows, Messages, Graphics, Dialogs,

type
  TD001_LinkNresid = class(Tfrm04_List)
    paTop: TPanel;
    Label1: TLabel;
    Tfm01_Period1: Tfm01_Period;
    chbPeriod: TCheckBox;
    Tfm01_Period2: Tfm01_Period;
    Button1: TButton;
    chbType: TCheckBox;
    chbHideLinked: TCheckBox;
    lcbType: TxxxDBLookupCheckCombo;
    odsType: TOracleDataSet;
    odsTypeT027_ID: TFloatField;
    odsTypeDESC_FLD: TStringField;
    odsTypeT027_SEC_TYPE: TStringField;
    odsTypeT027_COMMENTS: TStringField;
    dsType: TDataSource;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT027_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT013_ID: TFloatField;
    odsListT013_INCLUDE: TStringField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TFloatField;
    odsListT013_PARENT_NAME: TStringField;
    odsListT013_PARENT_CODE: TFloatField;
    odsListT013_PARENT_COUNTRY: TStringField;
    odsListOP_COUNT: TFloatField;
    odsListOP_SUM_CROSS: TFloatField;
    odsListT013_COUNTRY: TStringField;
    odsListT013_PARENT_ID: TFloatField;
    ToolButton5: TToolButton;
    tbMakeMain: TToolButton;
    tbLink: TToolButton;
    tbUnlink: TToolButton;
    ToolButton9: TToolButton;
    tbJump: TToolButton;
    actMakeMain: TAction;
    actLink: TAction;
    actUnlink: TAction;
    actJump: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actJumpUpdate(Sender: TObject);
    procedure actJumpExecute(Sender: TObject);
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
  private
    FT055_ID_1: Double;
    FT055_ID_2: Double;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  D001_LinkNresid: TD001_LinkNresid;

implementation

uses SysUtils, frm01_MainForm, D001_NresidSelectForm;

{$R *.DFM}

{ TD001_LinkNresid }

class function TD001_LinkNresid.GetSelfClass: Tfrm00_Parents;
begin
	Result := TD001_LinkNresid;
end;

class function TD001_LinkNresid.GetSelfForm: Tfrm00_Parent;
begin
  Result := D001_LinkNresid;
end;

class procedure TD001_LinkNresid.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(D001_LinkNresid) := AForm;
end;

procedure TD001_LinkNresid.FormCreate(Sender: TObject);
begin
  inherited;
  FT055_ID_1 := -1;
  FT055_ID_2 := -1;
end;

procedure TD001_LinkNresid.FormShow(Sender: TObject);
begin
  Tfm01_Period1.Init;
  if FT055_ID_1 >= 0 then
    Tfm01_Period1.lcbPeriod.KeyValue := FT055_ID_1;

  Tfm01_Period2.Init;
  if FT055_ID_2 >= 0 then
    Tfm01_Period2.lcbPeriod.KeyValue := FT055_ID_2;

  odsType.Close;
  odsType.Open;

  inherited;
end;

procedure TD001_LinkNresid.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // сохраняем значения фильтров
  FT055_ID_1 := Tfm01_Period1.lcbPeriod.KeyValue;
  FT055_ID_2 := Tfm01_Period2.lcbPeriod.KeyValue;

  // обновляем данные
  DataSet.Close;

  // снимаем фильтры по полям
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T013_PARENT_ID');

  if chbPeriod.Checked then
    begin
    SetNumbBetweenFilter(
      'T055_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
    end;

  if chbType.Checked then
  begin
    SetStrInFilter('T027_ID', lcbType.KeyValuesStr);
  end;

  if chbHideLinked.Checked then
    begin
    SetIsNullFilter('T013_PARENT_ID');
    end;

  DataSet.Open;
  if KeyFields = '' then
    begin
    if DefPosition = dpLast then DataSet.Last;
    end
  else
    begin
    DataSet.Locate(KeyFields, KeyValues, [])
    end;
end;

procedure TD001_LinkNresid.actJumpUpdate(Sender: TObject);
begin
  actJump.Enabled := not odsList.IsEmpty;
end;

procedure TD001_LinkNresid.actJumpExecute(Sender: TObject);
begin
  frm01_Main.FindOpersByMainIssueAndNrezInPer(
    odsList['T055_ID'],
    odsList['T027_ID'],
    odsList['T013_ID']
    );
end;

procedure TD001_LinkNresid.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty
                     and odsListT013_PARENT_ID.IsNull;
end;

procedure TD001_LinkNresid.actLinkExecute(Sender: TObject);
var
  AForm: TD001_NresidSelect;
begin
  AForm := TD001_NresidSelect.Create(Self);
  AForm.cbName.Checked := False;
  AForm.edName.Text := odsListT013_NAME.AsString;
  AForm.cbCode.Checked := False;
  AForm.edCode.Text := odsListT013_CODE.AsString;
  if AForm.ShowModal = mrOk then
    begin
    oqUpdate.SetVariable('T013_ID', odsList['T013_ID']);
    oqUpdate.SetVariable('T013_PARENT_ID', AForm.odsList['T013_ID']);
    oqUpdate.Execute;
    RefreshData('T013_ID', odsList['T013_ID']);
    end;
  AForm.Free;
end;

procedure TD001_LinkNresid.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty
                       and not odsListT013_PARENT_ID.IsNull;
end;

procedure TD001_LinkNresid.actUnlinkExecute(Sender: TObject);
begin
  if odsListT013_ID.AsFloat = odsListT013_PARENT_ID.AsFloat then
    begin
    // удаляем как главного
//    oqDupl.SetVariable('T013_ID', odsList['T013_ID']);
//    oqDupl.Execute;
    end
  else
    begin
    // удаляем связь
    oqDelete.SetVariable('T013_ID', odsList['T013_ID']);
    oqDelete.Execute;
    end;

  RefreshData('T013_ID', odsList['T013_ID']);
end;

procedure TD001_LinkNresid.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty
                         and odsListT013_PARENT_ID.IsNull;
end;

procedure TD001_LinkNresid.actMakeMainExecute(Sender: TObject);
begin
  oqAdd.SetVariable('T013_ID', odsList['T013_ID']);
  oqAdd.Execute;
  RefreshData('T013_ID', odsList['T013_ID']);
end;

end.
