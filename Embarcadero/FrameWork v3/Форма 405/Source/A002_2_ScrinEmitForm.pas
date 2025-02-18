unit A002_2_ScrinEmitForm;

interface

uses
  frm04_ListForm, A001_0_LoadEmitForm, Db, StdCtrls, DBCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm, Variants, System.Actions;
//  Messages, SysUtils, Dialogs, ADODB, ImgList,

type
  TFilterRecords = (tfNone, tfNew, tfOld);

  TA002_2_ScrinEmit = class(Tfrm04_List, TLoadStepPage)
    oqChanged: TOracleQuery;
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    oqNotFoundInn: TOracleQuery;
    oqNotFoundIndustry: TOracleQuery;
    Label4: TLabel;
    Label5: TLabel;
    odsListT111_ID: TFloatField;
    odsListT111_FIRM_NAME: TStringField;
    odsListT111_FIRM_INDUSTRY: TStringField;
    odsListT111_FIRM_INN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT111_INDUSTRY_CODE: TStringField;
    odsListT111_CHANGED: TStringField;
    odsListT111_DO_LOAD: TStringField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT111_REGION: TStringField;
    odsListT111_REGION_CODE: TFloatField;
    odsListT028_REGION_CODE: TFloatField;
    Panel1: TPanel;
    CbEmitents: TCheckBox;
    CmbEmitents: TComboBox;
    CbRegion: TCheckBox;
    oqAfterLoad: TOracleQuery;
    odsListT111_TICKER_SKRIN: TStringField;
    odsListT111_INF_TYPE: TStringField;
    odsListT111_REG_NUMBER: TStringField;
    odsListT037_ID: TFloatField;
    odsListT111_COMPANY_HEAD: TStringField;
    odsListT111_EMAIL_ADRESS: TStringField;
    odsListT111_U_ADRESS: TStringField;
    odsListT111_F_ADRESS: TStringField;
    odsListT111_TELEPHONE: TStringField;
    odsListT111_FAX: TStringField;
    odsListT111_WEB: TStringField;
    odsListT111_MAIN_COUNT: TFloatField;
    odsListT111_NL_COUNT: TFloatField;
    odsListT111_REG_COUNT: TFloatField;
    odsListT111_IND_COUNT: TFloatField;
    Button1: TButton;
    CmbRegion: TComboBox;
    odsListT111_IS_INN_DOUBLE: TStringField;
    odsListT111_IS_INN_DOUBLE_DESC: TStringField;
    chbINN: TCheckBox;
    CbIndustries: TCheckBox;
    CmbIndustries: TComboBox;
    odsTotal: TOracleDataSet;
    odsTotalALL_COUNT: TFloatField;
    odsTotalOLD_COUNT: TFloatField;
    odsTotalNEW_COUNT: TFloatField;
    odsTotalREG_NOT_FOUND_COUNT: TFloatField;
    odsTotalIND_NOT_FOUND_COUNT: TFloatField;
    odsTotalINN_DOUBLE_COUNT: TFloatField;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    odsTotalT111_REG_COUNT: TFloatField;
    odsTotalT111_IND_COUNT: TFloatField;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    odsTotalEMPTY_COUNT: TFloatField;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    DBText10: TDBText;
    odsListFIRM_STATE: TStringField;
    odsListT111_INDUSTRY_IS_FOUND: TStringField;
    odsListT111_REGION_IS_FOUND: TStringField;
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
    class function Instance: TA002_2_ScrinEmit;
  end;

var
  A002_2_ScrinEmit: TA002_2_ScrinEmit;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
// Excel97, OleServer, untMessages, dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA002_2_ScrinEmit.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA002_2_ScrinEmit;
end;

class function TA002_2_ScrinEmit.GetSelfForm: Tfrm00_Parent;
begin
  Result := A002_2_ScrinEmit;
end;

class procedure TA002_2_ScrinEmit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A002_2_ScrinEmit) := AForm;
end;

procedure TA002_2_ScrinEmit.FormCreate(Sender: TObject);
begin
  inherited;

  CmbEmitents.ItemIndex := 0;

  CmbRegion.ItemIndex := 0;

  CmbIndustries.ItemIndex := 0;
end;

procedure TA002_2_ScrinEmit.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
end;

procedure TA002_2_ScrinEmit.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('�������');
end;

function TA002_2_ScrinEmit.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA002_2_ScrinEmit.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // ��������� ������
  DataSet.Close;

  // ������ �������
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_FIRM_STATE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_REGION_IS_FOUND');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_REG_COUNT');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_INDUSTRY_IS_FOUND');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_IND_COUNT');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_IS_INN_DOUBLE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T111_CHANGED');

  // ������ �� ���������
  if CbEmitents.Checked then
  begin
    if CmbEmitents.ItemIndex = 0 then
    begin
      // ���������� ������ �����
      SetStrFilter('T111_FIRM_STATE', 'N');
    end else
    if CmbEmitents.ItemIndex = 1 then
    begin
      // ���������� ������ ������������
      SetStrFilter('T111_FIRM_STATE', 'O');
    end else
    begin
      // ���������� ������ ������
      SetStrFilter('T111_FIRM_STATE', 'E');
    end;
  end;

  // ������ �� ��������
  if CbRegion.Checked then
  begin
    if CmbRegion.ItemIndex = 0 then
    begin
      // ������ �� ������
      SetStrFilter('T111_REGION_IS_FOUND', 'N');
    end else
    if CmbRegion.ItemIndex = 2 then
    begin
      // �� ��������� ������ �������
      SetIsNullFilter('T111_REG_COUNT');
    end;
  end;

  // ������ �� ��������
  if CbIndustries.Checked then
  begin
    if CmbIndustries.ItemIndex = 0 then
    begin
      // ������� ����� �� ������� � �����
      SetStrFilter('T111_INDUSTRY_IS_FOUND', 'N');
    end else
    if CmbIndustries.ItemIndex = 2 then
    begin
      // ������ ������� �� ���������
      SetIsNullFilter('T111_IND_COUNT');
    end;
  end;

  // ������ "������ ��� �������" ���� ��������
  if (CmbIndustries.ItemIndex = 1) or
     (CmbRegion.ItemIndex = 1) then
  begin
    if CbRegion.Checked and CbIndustries.Checked then
    begin
      // ��� ������ ��� ������� ���� ��������
      SetStrFilter('T111_CHANGED', 'Y');
    end else
    if CbRegion.Checked and (not CbIndustries.Checked) then
    begin
      // ��������� ������
      SetNumbFilter02('T111_REG_COUNT', 1);
    end else
    if (not CbRegion.Checked) and CbIndustries.Checked then
    begin
      // ��������� ������
      SetNumbFilter02('T111_IND_COUNT', 1);
    end;
  end;

  // ������ �� ���
  if chbINN.Checked then
  begin
    // ���� ���������
    SetStrFilter('T111_IS_INN_DOUBLE', 'Y');
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

  // �����
  odsTotal.Close;
  odsTotal.Open;
end;

class function TA002_2_ScrinEmit.Instance: TA002_2_ScrinEmit;
begin
  Result := TA002_2_ScrinEmit(inherited Instance);
end;

procedure TA002_2_ScrinEmit.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA002_2_ScrinEmit.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA002_2_ScrinEmit.odsTotalAfterOpen(DataSet: TDataSet);
begin
  // �������
  if odsTotalREG_NOT_FOUND_COUNT.AsFloat = 0 then
  begin
    Label3.Font.Color := clWindowText;
    DBText4.Font.Color := clWindowText;
  end else
  begin
    Label3.Font.Color := clRed;
    DBText4.Font.Color := clRed;
  end;
  // �������
  if odsTotalIND_NOT_FOUND_COUNT.AsFloat = 0 then
  begin
    Label6.Font.Color := clWindowText;
    DBText6.Font.Color := clWindowText;
  end else
  begin
    Label6.Font.Color := clRed;
    DBText6.Font.Color := clRed;
  end;
  // ���
  if odsTotalINN_DOUBLE_COUNT.AsFloat = 0 then
  begin
    Label5.Font.Color := clWindowText;
    DBText5.Font.Color := clWindowText;
  end else
  begin
    Label5.Font.Color := clRed;
    DBText5.Font.Color := clRed;
  end;
  // ������
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

procedure TA002_2_ScrinEmit.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
begin
  // �� ��������� ��� �����
  VColor := clBtnFace;

  // ������
  if (odsListT111_REG_COUNT.AsFloat > 0) and
     (
     (Column.FieldName = 'T111_FIRM_NAME') or
     (Column.FieldName = 'T111_FIRM_INN') or
     (Column.FieldName = 'T111_REG_COUNT') or
     (Column.FieldName = 'T028_REGION_CODE') or
     (Column.FieldName = 'T111_REGION_CODE') or
     (Column.FieldName = 'T111_REGION')
     ) then
  begin
    VColor := xxxDBGrid.Font.Color;
  end;
  if (odsListT111_REGION_CODE.AsFloat =  - 1000) and
     (
     (Column.FieldName = 'T111_REGION_CODE') or
     (Column.FieldName = 'T111_REGION')
     ) then
  begin
    VColor := clRed;
  end;

  // �������
  if (odsListT111_IND_COUNT.AsFloat > 0) and
     (
     (Column.FieldName = 'T111_FIRM_NAME') or
     (Column.FieldName = 'T111_FIRM_INN') or
     (Column.FieldName = 'T111_IND_COUNT') or
     (Column.FieldName = 'T028_INDUSTRY_CODE') or
     (Column.FieldName = 'T111_INDUSTRY_CODE') or
     (Column.FieldName = 'T111_FIRM_INDUSTRY')
     ) then
  begin
    VColor := xxxDBGrid.Font.Color;
  end;
  if (odsListT111_FIRM_INDUSTRY.AsString =  '�� �������') and
     (odsListT111_INDUSTRY_CODE.AsString <> '') and
     (
     (Column.FieldName = 'T111_INDUSTRY_CODE') or
     (Column.FieldName = 'T111_FIRM_INDUSTRY') 
     ) then
  begin
    VColor := clRed;
  end;

  // ���
  if (odsListT111_IS_INN_DOUBLE.AsString = 'Y') and
     (
     (Column.FieldName = 'T111_MAIN_COUNT') or
     (Column.FieldName = 'T111_FIRM_INN') or
     (Column.FieldName = 'T111_IS_INN_DOUBLE_DESC')
     ) then
  begin
    VColor := clRed;
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
