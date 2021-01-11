unit I001_LoadedFileForm;

interface

uses
  frm04_ListForm, A001_0_LoadEmitForm, Db, StdCtrls, DBCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm00_ParentForm, Variants, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TI001_LoadedFile = class(Tfrm04_List, TLoadStepPage)
    paFilters: TPanel;
    cbShow: TCheckBox;
    Label4: TLabel;
    cmbShow: TComboBox;
    Button1: TButton;
    odsTotal: TOracleDataSet;
    dsTotal: TDataSource;
    odsListT028_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListDATA_REG: TDateTimeField;
    odsListDATA_CLOSE: TDateTimeField;
    odsListT145_FOR_FILTER: TFloatField;
    odsTotalR_TOTAL: TFloatField;
    odsTotalR_NEW: TFloatField;
    odsTotalR_CHANGED: TFloatField;
    odsTotalR_SAME: TFloatField;
    paCounts: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure xxxDBGridColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function EnableAction(Action: TAction): boolean; override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  I001_LoadedFile: TI001_LoadedFile;

implementation

uses
  Matrix, A00_MatrixConst;

{$R *.DFM}

{ TI001_LoadedFile }

class function TI001_LoadedFile.GetSelfClass: Tfrm00_Parents;
begin
  Result := TI001_LoadedFile;
end;

class function TI001_LoadedFile.GetSelfForm: Tfrm00_Parent;
begin
  Result := I001_LoadedFile;
end;

class procedure TI001_LoadedFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(I001_LoadedFile) := AForm;
end;

procedure TI001_LoadedFile.FormCreate(Sender: TObject);
begin
  inherited;
  cmbShow.ItemIndex := 0;
end;

procedure TI001_LoadedFile.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
  Label5.Caption := '';
end;

procedure TI001_LoadedFile.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('успешно');
end;

function TI001_LoadedFile.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
    begin
    Result := Matrix.MA.IsOperationPermitted(LOAD_PIF, FALSE)
    end
  else
    begin
    Result := True;
    end;
end;

procedure TI001_LoadedFile.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновл€ем данные
  DataSet.Close;

  // —тавим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T145_FOR_FILTER');

  // фильтр по эмитентам
  case CmbShow.ItemIndex of
    1: //показываем только новые
      SetNumbFilter('T145_FOR_FILTER', 0); // = 0
    2: // показываем новые и измененные
      SetNumbInFilter('T145_FOR_FILTER', [0,1]); // IN (0, 1)
    3: // показываем только измененные
      SetNumbFilter('T145_FOR_FILTER', 1); // = 1
  end;

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then
    begin
      DataSet.Last;
    end;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;

  // итоги
  odsTotal.Close;
  odsTotal.Open;
end;

procedure TI001_LoadedFile.odsListAfterScroll(DataSet: TDataSet);
begin
  xxxDBGridColEnter(xxxDBGrid);
end;

procedure TI001_LoadedFile.xxxDBGridColEnter(Sender: TObject);
begin
//  if odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_CHD').AsString <> '#' then
//    Label5.Caption := '''' + odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_OLD').AsString + ''''
//  else
    Label5.Caption := '';
end;

end.
