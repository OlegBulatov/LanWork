unit A003_2_FSFREmitForm;

interface

uses
  frm04_ListForm, Db, StdCtrls, DBCtrls, Oracle, OracleData, Menus,
  Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, A001_0_LoadEmitForm,
  Windows, frm00_ParentForm, Variants, System.Actions;
//  Windows, Messages, SysUtils, Dialogs,
//  , , ADODB, ImgList,

type
  TA003_2_FSFREmit = class(Tfrm04_List, TLoadStepPage)
    oqChanged: TOracleQuery;
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    oqNotFoundInn: TOracleQuery;
    oqNotFoundIndustry: TOracleQuery;
    Label4: TLabel;
    Panel1: TPanel;
    CbEmitents: TCheckBox;
    CmbEmitents: TComboBox;
    oqAfterLoad: TOracleQuery;
    Button1: TButton;
    CbIndustries: TCheckBox;
    CmbIndustries: TComboBox;
    odsTotal: TOracleDataSet;
    odsTotalALL_COUNT: TFloatField;
    odsTotalOLD_COUNT: TFloatField;
    odsTotalNEW_COUNT: TFloatField;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    odsTotalEMPTY_COUNT: TFloatField;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    DBText10: TDBText;
    odsTotalUNKNOWN_COUNT: TFloatField;
    odsTotalNOT_CHANGED_COUNT: TFloatField;
    odsTotalSET_NOT_FP_COUNT: TFloatField;
    odsTotalSET_FP_COUNT: TFloatField;
    odsListT144_ID: TFloatField;
    odsListT144_FIRM_NAME: TStringField;
    odsListT144_FIRM_INN: TStringField;
    odsListT144_IND_CODE: TStringField;
    odsListT144_LICENCE: TStringField;
    odsListT144_ACT_DATE: TDateTimeField;
    odsListT144_MAIN_COUNT: TFloatField;
    odsListT144_NEED_CHANGE: TStringField;
    odsListT144_NEED_CHANGE_DESC: TStringField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT144_FIRM_STATE: TStringField;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure odsTotalAfterOpen(DataSet: TDataSet);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  protected
	  //
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
    //
    //
  end;

var
  A003_2_FSFREmit: TA003_2_FSFREmit;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
// Excel97, OleServer, untMessages, , dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA003_2_FSFREmit.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA003_2_FSFREmit;
end;

class function TA003_2_FSFREmit.GetSelfForm: Tfrm00_Parent;
begin
  Result := A003_2_FSFREmit;
end;

class procedure TA003_2_FSFREmit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A003_2_FSFREmit) := AForm;
end;

procedure TA003_2_FSFREmit.FormCreate(Sender: TObject);
begin
  inherited;

  CmbEmitents.ItemIndex := 0;

  CmbIndustries.ItemIndex := 0;
end;

procedure TA003_2_FSFREmit.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
end;

procedure TA003_2_FSFREmit.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('успешно');
end;

function TA003_2_FSFREmit.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA003_2_FSFREmit.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;

  // Ставим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T144_FIRM_STATE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T144_NEED_CHANGE');

  // фильтр по эмитентам
  if CbEmitents.Checked then
  begin
    if CmbEmitents.ItemIndex = 0 then
    begin
      // показываем только новых
      SetStrFilter('T144_FIRM_STATE', 'N');
    end else
    if CmbEmitents.ItemIndex = 1 then
    begin
      // показываем только существующих
      SetStrFilter('T144_FIRM_STATE', 'O');
    end else
    begin
      // показываем только пустые
      SetStrFilter('T144_FIRM_STATE', 'E');
    end;
  end;

  // фильтр по отраслям
  if CbIndustries.Checked then
  begin
    if CmbIndustries.ItemIndex = 0 then
    begin
      // Включить в список фин. посредников
      SetStrFilter('T144_NEED_CHANGE', 'Y');
    end else
    if CmbIndustries.ItemIndex = 1 then
    begin
      // Исключить из списка фин. посредников
      SetStrFilter('T144_NEED_CHANGE', 'N');
    end else
    if CmbIndustries.ItemIndex = 2 then
    begin
      // Изменения не требуются
      SetStrFilter('T144_NEED_CHANGE', 'E');
    end else
    begin
      // Код ОКВЭД не соответствует [66, 67.2]
      SetStrFilter('T144_NEED_CHANGE', 'U');
    end;
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

procedure TA003_2_FSFREmit.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA003_2_FSFREmit.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA003_2_FSFREmit.odsTotalAfterOpen(DataSet: TDataSet);
begin
  // отрасли ошибочные
  if odsTotalUNKNOWN_COUNT.AsFloat = 0 then
  begin
    Label7.Font.Color := clWindowText;
    DBText7.Font.Color := clWindowText;
  end else
  begin
    Label7.Font.Color := clRed;
    DBText7.Font.Color := clRed;
  end;
  // пустые
  if odsTotalEMPTY_COUNT.AsFloat = 0 then
  begin
    Label10.Font.Color := clWindowText;
    DBText10.Font.Color := clWindowText;
  end else
  begin
    Label10.Font.Color := clRed;
    DBText10.Font.Color := clRed;
  end;
end;

procedure TA003_2_FSFREmit.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
begin
  // изменения
  if (odsListT144_NEED_CHANGE.AsString = 'E') then
  begin
    VColor := clBtnFace;
  end else
  begin
    VColor := xxxDBGrid.Font.Color;
  end;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
      end;
    end else
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := VColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
