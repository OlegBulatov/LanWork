unit A006_1_PTSettingsForm;

interface

uses
  frm04_ListFrame, A001_0_LoadEmitForm, A006_FieldsListFrame,
  A006_SelectedFieldsFrame, A006_FilterListFrame, ComCtrls, ExtCtrls,
  Oracle, Db, OracleData, Menus, Classes, ActnList, Controls, ToolWin,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  StdCtrls, , fm21SepDescriptionFrame,
//  Db, OracleData, DBCtrls, Mask, ToolEdit, Buttons, Oracle, ExtCtrls,
//  A006_FieldsListFrame, ComCtrls, A006_FieldFrame, A006_SelectedFieldsFrame,
//  , A006_FilterListFrame, Menus, ActnList, ToolWin,
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid;

type
  TA006_1_PTSettings = class(Tfrm04_ListFrm, TLoadStepPage)
    Splitter1: TSplitter;
    paSettings: TPanel;
    PageControl1: TPageControl;
    tsMenu: TTabSheet;
    pcFilter: TPageControl;
    Splitter2: TSplitter;
    tsFilter: TTabSheet;
    A006_FieldsList1: TA006_FieldsList;
    pcSelectedFields: TPageControl;
    tsSelected: TTabSheet;
    A006_SelectedFields1: TA006_SelectedFields;
    A006_FilterList1: TA006_FilterList;
    procedure FormCreate(Sender: TObject);
    procedure A006_FieldsList1ToolButton3Click(Sender: TObject);
  private
  protected
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  A006_1_PTSettings: TA006_1_PTSettings;

implementation

uses
  untMessages;
//uses Registry, A000_File2DbDM, A000_ParserExcelDM, A000_FileDescUnt,

{$R *.DFM}

{ Tfrm101_1_SelectFile }


procedure TA006_1_PTSettings.DoOnShowPage(const AMainForm: TForm);
begin

end;

procedure TA006_1_PTSettings.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
const
  FIELDS_TEXT = 'Не выбрано ни одного поля!';
  FILTER_TEXT = 'Укажите условия для фильтра!';
  MSG_TEXT =
    'Внимание!' + #13#10 +
    'Отсутствует фильтр по полю "Период"!' + #13#10 +
    'Продолить?';
var
  VFlag: Boolean;
begin
  // проверяем фильтр
  if A006_SelectedFields1.odsList.RecordCount = 0 then
  begin
    TAppMessages.ShowError(FIELDS_TEXT);
    Applied := False;
    Exit;
  end;

  // проверяем фильтр
  if A006_FilterList1.odsList.RecordCount = 0 then
  begin
    TAppMessages.ShowError(FILTER_TEXT);
    Applied := False;
    Exit;
  end;

  // проевряем есть ли фильтр по полую время
  VFlag := False;
  A006_FilterList1.odsList.First;
  while not A006_FilterList1.odsList.Eof do
  begin
    if A006_FilterList1.odsListT161_ID.AsFloat = 21002 then
    begin
      VFlag := True;
      Break;
    end;
    A006_FilterList1.odsList.Next;
  end;
  A006_FilterList1.odsList.First;

  // проверяем надо ли выдавать запрос на подтверждение
  if VFlag then
  begin
    Applied := True;
  end else
  begin
    Applied := TAppMessages.ShowConfirmation(MSG_TEXT);
  end;
end;

procedure TA006_1_PTSettings.FormCreate(Sender: TObject);
begin
  // доступные поля
  A006_FieldsList1.BuildTree;
  A006_FieldsList1.OnFieldSelect := A006_SelectedFields1.Add;
  A006_FieldsList1.OnFieldFilter := A006_FilterList1.AddNew;

  // инициализируем выбранные поля
  A006_SelectedFields1.Init;
  A006_SelectedFields1.OnFieldFilter := A006_FilterList1.AddNew;

  // инициализируем фильтр
  A006_FilterList1.Init;
end;

procedure TA006_1_PTSettings.A006_FieldsList1ToolButton3Click(
  Sender: TObject);
begin
  inherited;
  A006_FieldsList1.actFilterExecute(Sender);

end;

end.
