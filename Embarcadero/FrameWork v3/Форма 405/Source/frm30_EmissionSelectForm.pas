unit frm30_EmissionSelectForm;

interface

uses
  StdCtrls, ExtCtrls, Db, frm30_EmissionListForm, Oracle, OracleData,
  Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls;

type
  Tfrm30_EmissionSelect = class(Tfrm30_EmissionList)
    Panel2: TPanel;
    Label1: TLabel;
    cbEmissType: TComboBox;
    odsListIS_MAIN: TStringField;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cbEmissTypeChange(Sender: TObject);
  private
    FFirstSelectedID: Integer;
    FSecTypesFilter: TSecTypesFilter;
    procedure SetSecTypesFilter(const Value: TSecTypesFilter);
  protected
    function GetIDFieldName: string; override;
    procedure SetEditAttributes; override;
  public
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    procedure FilterBySecRegn(const ASecRegn: string);
    procedure FilterByIsin(const AIsin: string);
    //
    property FirstSelectedID: Integer read FFirstSelectedID write FFirstSelectedID;
    property SecTypesFilter: TSecTypesFilter write SetSecTypesFilter;
  end;

var
  frm30_EmissionSelect: Tfrm30_EmissionSelect;

implementation

uses frm04_ListForm, frm30_EmissionEditForm;

{$R *.DFM}

const
  SecTypesP2: array[0..16] of string = ('BON5','BON6','BON7','SHS5','SHS6','SHS7','SHS9','SHS10','BIL5','BIL6','BIL7','DR2','DS2','DOL2','DOL7','OTH1','OTH2');

procedure Tfrm30_EmissionSelect.FormCreate(Sender: TObject);
begin
  inherited;
  fm31_Filter.Visible := True;
  fm31_Filter.Enabled := True;
  cbEmissType.ItemIndex := 0;
end;

procedure Tfrm30_EmissionSelect.RefreshData(const KeyFields: string; const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;

  if (cbEmissType.Items[cbEmissType.ItemIndex] = 'Главные') then
    DataSet.SetVariable('IS_MAIN', 'Да')
  else
    DataSet.SetVariable('IS_MAIN', 'Все');

  DataSet.Open;
  if KeyFields = '' then
    begin
    if DefPosition = dpLast then
       DataSet.Last;
    end
  else
    DataSet.Locate(KeyFields, KeyValues, []);
end;

function Tfrm30_EmissionSelect.GetIDFieldName: string;
begin
  Result := 'T030_ID';
end;

procedure Tfrm30_EmissionSelect.FilterBySecRegn(const ASecRegn: string);
begin
  fm31_Filter.chbType.Checked := True;
  fm31_Filter.KeyFieldName := 'T026_SEC_REGN';
  fm31_Filter.SearchText := ASecRegn;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('T026_SEC_REGN');

  if ASecRegn <> '' then
    SetStrFilter('T026_SEC_REGN', ASecRegn);

  if FSecTypesFilter = tstPart2 then // если редактируем эмиссии раздела 2
    SetStrInFilterA('T027_SEC_TYPE', SecTypesP2);
end;

procedure Tfrm30_EmissionSelect.FilterByIsin(const AIsin: string);
begin
  fm31_Filter.chbType.Checked := True;
  fm31_Filter.KeyFieldName := 'T010_ISIN_TRANSL';
  fm31_Filter.SearchText := AIsin;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('T010_ISIN_TRANSL');

  if AIsin <> '' then
    SetStrFilter('T010_ISIN_TRANSL', AIsin);

  if FSecTypesFilter = tstPart2 then // если редактируем эмиссии раздела 2
    SetStrInFilterA('T027_SEC_TYPE', SecTypesP2);
end;

procedure Tfrm30_EmissionSelect.cbEmissTypeChange(Sender: TObject);
begin
  RefreshAfterListChange;
  SetSelectedId(FFirstSelectedID);
end;

procedure Tfrm30_EmissionSelect.SetSecTypesFilter(const Value: TSecTypesFilter);
begin
  FSecTypesFilter := Value;
end;

procedure Tfrm30_EmissionSelect.SetEditAttributes;
begin
  Tfrm30_EmissionEdit(EditForm).FSecTypeFilter := FSecTypesFilter;
end;

end.
