unit A009_2_LoadedFileForm;

interface

uses
  frm04_ListForm, A001_0_LoadEmitForm, Db, StdCtrls, DBCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  Windows, frm00_ParentForm, Variants, System.Actions;
//  Messages, SysUtils, Dialogs, ADODB, ImgList,

type
  TFilterRecords = (tfNone, tfNew, tfOld);

  TA009_2_LoadedFile = class(Tfrm04_List, TLoadStepPage)
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    CbShow: TCheckBox;
    CmbShow: TComboBox;
    Button1: TButton;
    odsTotal: TOracleDataSet;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label9: TLabel;
    Label4: TLabel;
    odsListT042_EMISSION_ID: TFloatField;
    odsListT042_PAY_DATE: TDateTimeField;
    odsListT042_COUPON_RATE: TFloatField;
    odsListT042_COUPON_SUM: TFloatField;
    odsListT042_MATURITY: TFloatField;
    odsListT042_COMMENT_RUS: TStringField;
    odsListT042_COMMENT_ENG: TStringField;
    odsListT042_LOAD_DATE: TDateTimeField;
    odsListT042_FILE_NAME: TStringField;
    odsListT042_LOADER: TStringField;
    odsListT042_FOR_FILTER: TFloatField;
    odsListT042_COUPON_RATE_OLD: TStringField;
    odsListT042_COUPON_SUM_OLD: TStringField;
    odsListT042_MATURITY_OLD: TStringField;
    odsListT042_COMMENT_RUS_OLD: TStringField;
    odsListT042_COMMENT_ENG_OLD: TStringField;
    odsListT042_COUPON_RATE_CHD: TStringField;
    odsListT042_COUPON_SUM_CHD: TStringField;
    odsListT042_MATURITY_CHD: TStringField;
    odsListT042_COMMENT_RUS_CHD: TStringField;
    odsListT042_COMMENT_ENG_CHD: TStringField;
    odsListT030_NAME: TStringField;
    Label5: TLabel;
    odsTotalR_TOTAL: TFloatField;
    odsTotalE_NEW: TFloatField;
    odsTotalR_NEW: TFloatField;
    odsTotalR_UPDATED: TFloatField;
    odsTotalR_ROLLED: TFloatField;
    odsTotalR_CHANGED: TStringField;
    DBText3: TDBText;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure xxxDBGridColEnter(Sender: TObject);
  private
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
    //
  end;

var
  A009_2_LoadedFile: TA009_2_LoadedFile;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
// Excel97, OleServer, untMessages, dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA009_2_LoadedFile.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA009_2_LoadedFile;
end;

class function TA009_2_LoadedFile.GetSelfForm: Tfrm00_Parent;
begin
  Result := A009_2_LoadedFile;
end;

class procedure TA009_2_LoadedFile.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A009_2_LoadedFile) := AForm;
end;

procedure TA009_2_LoadedFile.FormCreate(Sender: TObject);
begin
  inherited;
  CmbShow.ItemIndex := 0;
end;

procedure TA009_2_LoadedFile.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
  Label5.Caption := '';
end;

procedure TA009_2_LoadedFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('�������');
end;

function TA009_2_LoadedFile.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA009_2_LoadedFile.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // ��������� ������
  DataSet.Close;

  // ������ �������
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T042_FOR_FILTER');

  // ������ �� ���������
  case CmbShow.ItemIndex of
    1: // �������������� �������
      SetNumbFilter('T042_FOR_FILTER', -1); // = -1
    2: // �����, ���������� � ���������
      SetNumbInFilter('T042_FOR_FILTER', [0, 1, 2, -2]); // IN (0, 1, 2, -2)
    3: // ������ �����
      SetNumbFilter('T042_FOR_FILTER', 0); // = 0
    4: // ������ ����������
      SetNumbInFilter('T042_FOR_FILTER', [1, 2]); // IN (1, 2)
    5: // ���������� ������ �������
      SetNumbFilter('T042_FOR_FILTER', 1); // = 1
    6: // ���������� ������� �������
      SetNumbFilter('T042_FOR_FILTER', 2); // = 2
    7: // ������ ���������
      SetNumbFilter('T042_FOR_FILTER', -2); // = 2
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

procedure TA009_2_LoadedFile.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA009_2_LoadedFile.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA009_2_LoadedFile.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
  VBkColor: TColor;
begin
  // �� ��������� ��� ����� �����
  VColor := clDkGray;
  VBkColor := xxxDBGrid.Color;

  // ����� ������
  if odsListT042_FOR_FILTER.AsFloat = 0 then
    begin
    VColor := xxxDBGrid.Font.Color;
    VBkColor := xxxDBGrid.Color;
    end
  else if odsListT042_FOR_FILTER.AsFloat = -2 then
    // ��������� ������
    begin
    VColor := clLtGray;
    VBkColor := xxxDBGrid.Color;
    end
  else
    // ��������� �����
    begin
    if (Column.FieldName <> 'T030_NAME') and
       (Column.FieldName <> 'T042_PAY_DATE') then
      begin
      if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '+') then
        begin
        VColor := clRed;
        VBkColor := xxxDBGrid.Color;
        end
      else if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '-') then
        begin
        VColor := clWhite;
        VBkColor := clRed;
        end;
      end;
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
        xxxDBGrid.Canvas.Font.Color := VBkColor; //xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBkColor; //xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := VColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TA009_2_LoadedFile.odsListAfterScroll(DataSet: TDataSet);
begin
  xxxDBGridColEnter(xxxDBGrid);
end;

procedure TA009_2_LoadedFile.xxxDBGridColEnter(Sender: TObject);
begin
  if (xxxDBGrid.SelectedField.FieldName <> 'T030_NAME') and
     (xxxDBGrid.SelectedField.FieldName <> 'T042_PAY_DATE') then
    begin
    if odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_CHD').AsString <> '#' then
      Label5.Caption := '''' + odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_OLD').AsString + ''''
    else
      Label5.Caption := '';
    end;
end;

end.


