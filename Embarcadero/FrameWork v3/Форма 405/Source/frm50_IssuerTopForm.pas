unit frm50_IssuerTopForm;

interface

uses
  frm27_LinkerTopForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, Graphics, Controls, Dialogs,
//  Buttons,

type
  Tfrm50_IssuerTop = class(Tfrm27_LinkerTop)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT036_ISBANK: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT028_INN: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT036_TICKER_SKRIN: TStringField;
    odsListT036_MAIL_ADDRESS: TStringField;
    odsListT036_REG_NUMBER: TStringField;
    odsListT036_COMPANY_HEAD: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actGoToForm405Iss: TAction;
    pmGoTo: TPopupMenu;
    N4051: TMenuItem;
    N711311: TMenuItem;
    N711321: TMenuItem;
    oqCount: TOracleQuery;
    ToolButton6: TToolButton;
    odsListT028_INDUSTRY: TStringField;
    odsListT037_ID: TFloatField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT028_REGION_CODE: TFloatField;
    odsListT140_ID: TIntegerField;
    odsListSECTOR_NAME: TStringField;
    actGoToForm405Rez: TAction;
    actGoToForm405RezMain: TAction;
    N4052: TMenuItem;
    N4053: TMenuItem;
    N16: TMenuItem;
    actGoToForm405Nrez: TAction;
    actGoToForm405NrezMain: TAction;
    N4054: TMenuItem;
    N4055: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    actGoToForm405IssMain: TAction;
    N4056: TMenuItem;
    procedure actGoToForm405IssExecute(Sender: TObject);
    procedure actGoToForm711_31Execute(Sender: TObject);
    procedure actGoToForm711_32Execute(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure actGoToForm405RezExecute(Sender: TObject);
    procedure actGoToForm405RezMainExecute(Sender: TObject);
    procedure actGoToForm405NrezMainExecute(Sender: TObject);
    procedure actGoToForm405NrezExecute(Sender: TObject);
    procedure actGoToForm405IssMainExecute(Sender: TObject);
  private
    FT028_ID: Double;
  protected
    function IsDuplicateFound: Boolean; override;
//    procedure DoInsert; override;
    procedure DoEdit; override;
//    procedure DoDelete; override;
//    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
//    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm50_IssuerTop: Tfrm50_IssuerTop;

implementation

uses
  SysUtils, frm01_MainForm, frm04_ListForm, frm50_IssuerBottomEditForm,
  Matrix, A00_MatrixConst;

// dm005_MainData, untMessages;

resourcestring
  CONFIRM_OPER = 'ВЫ уверены! Продолжение может привести к потере данных!';

{$R *.DFM}

{ Tfrm50_IssuerTop }

class function Tfrm50_IssuerTop.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm50_IssuerTop;
end;

class function Tfrm50_IssuerTop.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm50_IssuerTop;
end;

procedure Tfrm50_IssuerTop.RefreshAfterListChange;
begin
  RefreshData('T028_ID', Linker.RightID);
end;

procedure Tfrm50_IssuerTop.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T028_PARENT_ID', Linker.MainDataSet.FieldByName('T028_ID').AsFloat);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

class procedure Tfrm50_IssuerTop.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm50_IssuerTop) := AForm;
end;

procedure Tfrm50_IssuerTop.actGoToForm405IssExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllIssuer(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerTop.actGoToForm711_31Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.1
  frm01_Main.FindAllIssuer_711_31(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerTop.actGoToForm711_32Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.2
  frm01_Main.FindAllIssuer_711_32(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerTop.odsListAfterScroll(DataSet: TDataSet);
begin
  // считаем кол-во записей
  oqCount.SetVariable('T028_ID', odsList['T028_ID']);
  oqCount.Execute;
  StatusBar.Panels[0].Text := IntToStr(oqCount.GetVariable('o_count_405'));
  StatusBar.Panels[1].Text := IntToStr(oqCount.GetVariable('o_count_711_31'));
  StatusBar.Panels[2].Text := IntToStr(oqCount.GetVariable('o_count_711_32'));
end;

procedure Tfrm50_IssuerTop.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqUpdate.SetVariable('T025_ID', odsList['T025_ID']);
  oqUpdate.SetVariable('T140_ID', odsList['T140_ID']);
  oqUpdate.SetVariable('T028_INN', odsList['T028_INN']);
  oqUpdate.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqUpdate.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
  oqUpdate.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqUpdate.SetVariable('T033_ID', odsList['T033_ID']);
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
  oqUpdate.Execute;
  FT028_ID := odsList['T028_ID'];
end;

function Tfrm50_IssuerTop.EditForm: Tfrm04_Edit;
begin
  Result := frm50_IssuerBottomEdit.Instance;
end;

function Tfrm50_IssuerTop.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_ISSUER, FALSE)
  else result:= true;
end;

function Tfrm50_IssuerTop.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqDupl.SetVariable('T025_ID', odsList['T025_ID']);
  oqDupl.SetVariable('T028_INN', odsList['T028_INN']);
  oqDupl.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
  oqDupl.SetVariable('T033_ID', odsList['T033_ID']);
  oqDupl.SetVariable('T037_ID', odsList['T037_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm50_IssuerTop.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUER, true, '');
end;

procedure Tfrm50_IssuerTop.actGoToForm405RezExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllRezid(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerTop.actGoToForm405RezMainExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOnlyMainRezid(
    Linker.MainDataSet.FieldByName('T028_ID').AsFloat
  );
end;

procedure Tfrm50_IssuerTop.actGoToForm405NrezMainExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOnlyMainNRezid(
    Linker.MainDataSet.FieldByName('T028_ID').AsFloat
  );
end;

procedure Tfrm50_IssuerTop.actGoToForm405NrezExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllNRezid(
    odsListT028_ID.AsFloat
    );
end;

procedure Tfrm50_IssuerTop.actGoToForm405IssMainExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllMainIssuer(
    Linker.MainDataSet.FieldByName('T028_ID').AsFloat
    );
end;

end.
