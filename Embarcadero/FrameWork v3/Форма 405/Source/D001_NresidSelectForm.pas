unit D001_NresidSelectForm;

interface

uses
  frm04_ListForm, Db, StdCtrls, Oracle, OracleData, Menus, Classes,
  ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, Graphics, Dialogs,

type
  TD001_NresidSelect = class(Tfrm04_List)
    paTop: TPanel;
    cbName: TCheckBox;
    cbCode: TCheckBox;
    edName: TEdit;
    edCode: TEdit;
    Button1: TButton;
    odsListT013_ID: TFloatField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TFloatField;
    odsListSN015_SHORT_RUS_NAME: TStringField;
    odsListT034_NAME: TStringField;
    procedure actSelectItemUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  D001_NresidSelect: TD001_NresidSelect;

implementation

uses SysUtils;

{$R *.DFM}

{ TD001_NresidSelect }

procedure TD001_NresidSelect.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.Close;

  // снимаем фильтры по полям
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T013_NAME');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T013_CODE');

  // ставим фильтры
  if cbName.Checked then
    SetInStrFilter('T013_NAME', edName.Text);

  if cbCode.Checked then
    try
      SetNumbFilter('T013_CODE', StrToFloat(edCode.Text));
    finally
    end;

  DataSet.Open;

  if KeyFields = '' then
    begin
    if DefPosition = dpLast then DataSet.Last;

//    DataSet.SearchRecord(
//      'T012_CODE',
//      FSearchCode + '*',
//      [srForward, srFromBeginning, srIgnoreCase, srWildcards]
//      );

//    DataSet.Locate('T012_CODE', FSearchCode, [])
    end
  else
    begin
    DataSet.Locate(KeyFields, KeyValues, [])
    end;
end;

procedure TD001_NresidSelect.actSelectItemUpdate(Sender: TObject);
begin
  actSelectItem.Enabled := not DataSet.IsEmpty;
end;

end.
