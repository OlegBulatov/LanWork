unit D000_LinkResidForm;

interface

uses
  frm04_ListForm, Db, xxxDbLookupCheckCombo, StdCtrls, fm01_PeriodFrame,
  Oracle, OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,
//  , DBCtrls,

type
  TD000_LinkResid = class(Tfrm04_List)
    paTop: TPanel;
    Label1: TLabel;
    Tfm01_Period1: Tfm01_Period;
    chbPeriod: TCheckBox;
    Tfm01_Period2: Tfm01_Period;
    Button1: TButton;
    chbType: TCheckBox;
    chbHideLinked: TCheckBox;
    odsType: TOracleDataSet;
    odsTypeT027_ID: TFloatField;
    odsTypeDESC_FLD: TStringField;
    dsType: TDataSource;
    lcbType: TxxxDBLookupCheckCombo;
    odsTypeT027_SEC_TYPE: TStringField;
    odsTypeT027_COMMENTS: TStringField;
    odsListT055_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT012_ID: TFloatField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT012_PARENT_ID: TFloatField;
    odsListT012_PARENT_NAME: TStringField;
    odsListT012_PARENT_CODE: TStringField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT027_ID: TStringField;
    odsListOP_COUNT: TFloatField;
    odsListOP_SUM_CROSS: TFloatField;
    ToolButton5: TToolButton;
    tbJump: TToolButton;
    actJump: TAction;
    tbMakeMain: TToolButton;
    tbLink: TToolButton;
    actMakeMain: TAction;
    actLink: TAction;
    actUnlink: TAction;
    tbUnlink: TToolButton;
    ToolButton9: TToolButton;
    odsListT012_INCLUDE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actLinkUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actJumpUpdate(Sender: TObject);
    procedure actJumpExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  D000_LinkResid: TD000_LinkResid;

implementation

uses SysUtils, frm01_MainForm, D000_ResidSelectForm;

//uses Matrix, dm005_MainData,

{$R *.DFM}

{ TD000_LinkResid }

class function TD000_LinkResid.GetSelfClass: Tfrm00_Parents;
begin
	Result := TD000_LinkResid;
end;

class function TD000_LinkResid.GetSelfForm: Tfrm00_Parent;
begin
  Result := D000_LinkResid;
end;

class procedure TD000_LinkResid.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(D000_LinkResid) := AForm;
end;

procedure TD000_LinkResid.FormCreate(Sender: TObject);
begin
  inherited;
  FT055_ID_1 := -1;
  FT055_ID_2 := -1;
end;

procedure TD000_LinkResid.FormShow(Sender: TObject);
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

procedure TD000_LinkResid.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // сохраняем значения фильтров
  FT055_ID_1 := Tfm01_Period1.lcbPeriod.KeyValue;
  FT055_ID_2 := Tfm01_Period2.lcbPeriod.KeyValue;

  // обновляем данные
  DataSet.Close;

  // если смотрим не отчет КО (КО + месяц) то сортировка не нужна
//  if not chbPeriod.Checked then
//    begin
//    xxxDBGrid.MainDataSet.Indexes.Clear;
//    end;

  // снимаем фильтры по полям
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T012_PARENT_ID');

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
    SetIsNullFilter('T012_PARENT_ID');
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

procedure TD000_LinkResid.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty
                       and not odsListT012_PARENT_ID.IsNull;
//  if dmMain.UseMatrix then
//    actUnlink.Enabled := actUnlink.Enabled
//                         and Matrix.MA.IsOperationPermitted(UNLINK_REZID, FALSE);
end;

procedure TD000_LinkResid.actUnlinkExecute(Sender: TObject);
begin
  if odsListT012_ID.AsFloat = odsListT012_PARENT_ID.AsFloat then
    begin
    // удаляем как главного
// Пока не умеем !!!    
//    oqDupl.SetVariable('T012_ID', odsList['T012_ID']);
//    oqDupl.Execute;
    end
  else
    begin
    // удаляем связь
    oqDelete.SetVariable('T012_ID', odsList['T012_ID']);
    oqDelete.Execute;
    end;

  RefreshData('T012_ID', odsList['T012_ID']);
end;

procedure TD000_LinkResid.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty
                     and odsListT012_PARENT_ID.IsNull;
//  if dmMain.UseMatrix then
//    actLink.Enabled := actLink.Enabled
//                       and Matrix.MA.IsOperationPermitted(LINK_REZID, FALSE);
end;

procedure TD000_LinkResid.actLinkExecute(Sender: TObject);
var
  AForm: TD000_ResidSelect;
begin
  AForm := TD000_ResidSelect.Create(Self);
  AForm.SearchCode := odsListT012_CODE.AsString;
  if AForm.ShowModal = mrOk then
    begin
    oqUpdate.SetVariable('T012_ID', odsList['T012_ID']);
    oqUpdate.SetVariable('T012_PARENT_ID', AForm.odsList['T012_ID']);
    oqUpdate.Execute;
    RefreshData('T012_ID', odsList['T012_ID']);
    end;
  AForm.Free;
end;

procedure TD000_LinkResid.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty
                         and odsListT012_PARENT_ID.IsNull;
//  if dmMain.UseMatrix then
//    actMakeMain.Enabled := actMakeMain.Enabled
//                           and Matrix.MA.IsOperationPermitted(MAKE_REZID_MAIN, FALSE);
end;

procedure TD000_LinkResid.actMakeMainExecute(Sender: TObject);
begin
  oqAdd.SetVariable('T012_ID', odsList['T012_ID']);
  oqAdd.Execute;
  RefreshData('T012_ID', odsList['T012_ID']);
end;

procedure TD000_LinkResid.actJumpUpdate(Sender: TObject);
begin
  actJump.Enabled := not odsList.IsEmpty;
end;

procedure TD000_LinkResid.actJumpExecute(Sender: TObject);
begin
  frm01_Main.FindOpersByMainIssueAndRezInPer(
    odsList['T055_ID'],
    odsList['T027_ID'],
    odsList['T012_ID']
    );
end;

end.
