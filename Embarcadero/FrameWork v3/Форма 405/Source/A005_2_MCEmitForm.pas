unit A005_2_MCEmitForm;

interface

uses
  frm04_ListForm, Db, StdCtrls, DBCtrls, Oracle, OracleData, Menus,
  Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, A001_0_LoadEmitForm,
  Windows, frm00_ParentForm, Variants, System.Actions;
//  Messages, SysUtils, Dialogs,
//  ADODB, ImgList

type
  TA005_2_MCEmit = class(Tfrm04_List, TLoadStepPage)
    oqChanged: TOracleQuery;
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    oqNotFoundInn: TOracleQuery;
    oqNotFoundIndustry: TOracleQuery;
    Label4: TLabel;
    Panel1: TPanel;
    CbEmitents: TCheckBox;
    CmbEmitents: TComboBox;
    oqAfterLoad: TOracleQuery;
    Button1: TButton;
    odsTotal: TOracleDataSet;
    odsTotalALL_COUNT: TFloatField;
    odsTotalOLD_COUNT: TFloatField;
    odsTotalNEW_COUNT: TFloatField;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    odsTotalEMPTY_COUNT: TFloatField;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    DBText10: TDBText;
    odsListT142_ID: TFloatField;
    odsListT142_SHOT_NAME: TStringField;
    odsListT142_FULL_NAME: TStringField;
    odsListT142_INN: TStringField;
    odsListT142_SPARK_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT036_IS_MC: TStringField;
    odsListT142_MAIN_COUNT: TFloatField;
    odsListT036_IS_MC_DESC: TStringField;
    odsListT142_SPARK_IS_MC: TStringField;
    odsListT142_IS_MC_CHANGED: TStringField;
    odsListT142_MC_STATE: TStringField;
    odsTotalMC_CHANGED_COUNT: TFloatField;
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
    class function Instance: TA005_2_MCEmit;
  end;

var
  A005_2_MCEmit: TA005_2_MCEmit;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
// Excel97, OleServer, untMessages, dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA005_2_MCEmit.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA005_2_MCEmit;
end;

class function TA005_2_MCEmit.GetSelfForm: Tfrm00_Parent;
begin
  Result := A005_2_MCEmit;
end;

class procedure TA005_2_MCEmit.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A005_2_MCEmit) := AForm;
end;

procedure TA005_2_MCEmit.FormCreate(Sender: TObject);
begin
  inherited;

  CmbEmitents.ItemIndex := 0;
end;

procedure TA005_2_MCEmit.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
end;

procedure TA005_2_MCEmit.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('успешно');
end;

function TA005_2_MCEmit.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA005_2_MCEmit.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновл€ем данные
  DataSet.Close;

  // —тавим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T142_MC_STATE');

  // фильтр по эмитентам
  if CbEmitents.Checked then
  begin
    if CmbEmitents.ItemIndex = 0 then
    begin
      // показываем только новых (не найдено в реестре)
      SetStrFilter('T142_MC_STATE', 'N');
    end else
    if CmbEmitents.ItemIndex = 1 then
    begin
      // показываем только существующих
      SetStrFilter('T142_MC_STATE', 'O');
    end else
    begin
      // показываем только пустые
      SetStrFilter('T142_MC_STATE', 'E');
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

class function TA005_2_MCEmit.Instance: TA005_2_MCEmit;
begin
  Result := TA005_2_MCEmit(inherited Instance);
end;

procedure TA005_2_MCEmit.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA005_2_MCEmit.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA005_2_MCEmit.odsTotalAfterOpen(DataSet: TDataSet);
begin
  // не найдено
  if odsTotalNEW_COUNT.AsFloat = 0 then
  begin
    Label2.Font.Color := clWindowText;
    DBText2.Font.Color := clWindowText;
  end else
  begin
    Label2.Font.Color := clRed;
    DBText2.Font.Color := clRed;
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

procedure TA005_2_MCEmit.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
begin
  // по умолчанию все серое
  VColor := clBtnFace;

  // нова€ компани€
  if (odsListT142_MC_STATE.AsString = 'N') then
  begin
    VColor := clRed;
  end;

  // регион
  if (odsListT142_IS_MC_CHANGED.AsString = 'ƒа') then
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
