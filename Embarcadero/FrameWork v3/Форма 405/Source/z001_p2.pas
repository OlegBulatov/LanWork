unit z001_p2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, fm033_PeriodFilterFrame,
  B000_PeriodFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, B002_BankFilterFrame, StdCtrls,
  fm031_FilterFrame;

type
    Tz001_p2_frame = class( TfmGrid )
    odsListT093_NUMB_IN_YEA_DESC: TStringField;
    odsListT093_BANK_CODE: TStringField;
    odsListT093_LOAD_DATE_GCI: TDateTimeField;
    odsListT093_LOAD_DATE_DPB: TDateTimeField;
    odsListT093_CAN_LOAD: TStringField;
    odsListT093_GCI_SUM_IN: TFloatField;
    odsListT093_GCI_SUM_OUT: TFloatField;
    odsListT093_GCI_SALDO: TFloatField;
    odsListT093_DPB_SUM_IN: TFloatField;
    odsListT093_DPB_SUM_OUT: TFloatField;
    odsListT093_DPB_SALDO: TFloatField;
    odsListT093_RAZN_SUM_IN: TFloatField;
    odsListT093_RAZN_SUM_OUT: TFloatField;
    odsListT093_RAZN_SALDO: TFloatField;
    odsListT093_FICT_OPER_DESC: TStringField;
    odsListT093_WAS_HAND_CHANGE: TStringField;
    odsListPERIOD: TFloatField;
    odsListSEC_TYPE: TStringField;
    oqLoad: TOracleQuery;
    odsListT002_ID: TFloatField;
    odsListSEC_ID: TFloatField;
    mLoadSEC: TMenuItem;
    mLoadSEC1: TMenuItem;
    mLoadSEC2: TMenuItem;
    odsListDO_ACTION: TFloatField;
    ToolButton1: TToolButton;
    paFilters: TPanel;
    cb1: TCheckBox;
    procedure actSelectAllRowsExecute(Sender: TObject);
    procedure actUnSelectAllRowsExecute(Sender: TObject);
    procedure cb1Click(Sender: TObject);
  //  procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  //    DataCol: Integer; Column: TColumn; State: TGridDrawState);
  //  procedure xxxDBGridCellClick(Column: TColumn);
  private
   // procedure SetBANK_CODE(const Value: string);
   // procedure SetPERIOD(const Value: double);
    procedure SetREPORT(const Value: double);
    procedure InitFrames;
    procedure CellClick(Column: TColumn);
  protected
   function GetRowFontColor: TColor; override;
   procedure SetConditions; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  //  property BANK_CODE: string write SetBANK_CODE;
  //  property PERIOD: double write SetPERIOD;
  //  procedure SetSumDataSource(const ADS: TDataSource);
    property REPORT: double write SetREPORT;
  end;

//  :BANK_CODE, :PERIOD

var
  z001_p2_frame: Tz001_p2_frame;

implementation

uses dm005_MainData,dm000_ObjectsFactory, unt007_LinksList,
  dm006_PictersData;

{$R *.DFM}

constructor Tz001_p2_frame.Create(AOwner: TComponent);
begin
  inherited;
  InitFrames;
end ;

procedure Tz001_p2_frame.InitFrames;
var
  VColumnDef: TColumnDef;
begin

  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[0]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(57, 'N');
  VColumnDef.Images.AddStr(58, 'Y');
  VColumnDef.Images.AddStr(78, 'Z');
//  VColumnDef.Images.AddStr(76, 'R');

  VColumnDef.OnCellClick := CellClick;

end;


{ Tz001_p2_frame }

{procedure Tz001_p2_frame.SetBANK_CODE(const Value: string);
begin
  odsList.SetVariable('BANK_CODE', Value);
end;
procedure Tz001_p2_frame.SetPERIOD(const Value: double);
begin
  odsList.SetVariable('PERIOD', Value);
end;}
procedure Tz001_p2_frame.SetREPORT(const Value: double);
begin
  odsList.SetVariable('REPORT', Value);
end;

procedure Tz001_p2_frame.CellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'T093_CAN_LOAD')  then
    begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];
    DataSet.Edit;
    if Column.Field.AsString = 'N' then
      Column.Field.AsString := 'Y'
    else
      if Column.Field.AsString = 'Y' then
      Column.Field.AsString := 'N';
    DataSet.Post;
  oqLoad.SetVariable( 'i_YN'    ,Column.Field.AsString);
  oqLoad.SetVariable( 'i_002'   ,odsListT002_ID.AsFloat);
  oqLoad.SetVariable( 'i_SEC_ID',odsListSEC_ID.AsFloat);
  oqLoad.Execute;
    end
  else
      xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    //       RefreshAllRecords;
end;

function Tz001_p2_frame.GetRowFontColor: TColor;
begin
  Result := inherited GetRowFontColor;
  //xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;

  if (odsList.FieldByName('DO_ACTION').AsFloat = 0) then
  begin
    xxxDBGrid.Canvas.Brush.Color :=  clLtGray;
  end else
  if (odsListT093_RAZN_SUM_IN.AsFloat <> 0) or
     (odsListT093_RAZN_SUM_OUT.AsFloat <> 0) or
     (odsListT093_RAZN_SALDO.AsFloat <> 0) then
  begin
    xxxDBGrid.Canvas.Brush.Color :=  $00CFFFCF;
  end;

  if (odsList.FieldByName('T093_CAN_LOAD').AsString = 'Y') then
    xxxDBGrid.Canvas.Font.Style :=  [fsBold];




end;

//procedure Tz001_p2_frame.SetSumDataSource(const ADS: TDataSource);
//begin
  // ed12344.DataSource := ADS;
//end;

procedure Tz001_p2_frame.actSelectAllRowsExecute(Sender: TObject);
 var
  OldCursor: TCursor;
  vSEC_ID :  double;
begin
    begin
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    odsList.DisableControls;
    vSEC_ID  := odsListSEC_ID.AsFloat;
    odsList.First;
    while not odsList.Eof do
       if (odsListT093_CAN_LOAD.AsString = 'N') then
        begin
                oqLoad.SetVariable('I_002',odsListT002_ID.AsFloat);
                oqLoad.SetVariable('I_SEC_ID',odsListSEC_ID.AsFloat);
                oqLoad.SetVariable('I_YN','Y');
                oqLoad.Execute;
                odsList.Next;
      end
      else
      odsList.Next;
    odsList.EnableControls;
    odsList.Refresh;
    odsList.Locate('SEC_ID', vSEC_ID, [loCaseInsensitive]);
    end;
        Screen.Cursor := OldCursor;
  end;

procedure Tz001_p2_frame.actUnSelectAllRowsExecute(Sender: TObject);
 var
  OldCursor: TCursor;
  vSEC_ID :  double;
begin
    begin
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    vSEC_ID := odsListSEC_ID.AsFloat;
    odsList.DisableControls;
    odsList.First;
    while not odsList.Eof do
      if odsListT093_CAN_LOAD.AsString = 'Y' then
        begin
        oqLoad.SetVariable('I_002',odsListT002_ID.AsFloat);
        oqLoad.SetVariable('I_SEC_ID',odsListSEC_ID.AsFloat);
        oqLoad.SetVariable('I_YN','N');
        oqLoad.Execute;
        odsList.Next;
        end
      else
        odsList.Next;
    odsList.EnableControls;
    odsList.Refresh;
    odsList.Locate('SEC_ID', vSEC_ID, [loCaseInsensitive]);
    end;
    Screen.Cursor := OldCursor;
  end;


procedure Tz001_p2_frame.SetConditions;
begin
  inherited;
  if cb1.Checked then
    odsList.SetVariable('NOT_TO_LOAD', 'Y')
  else
    odsList.SetVariable('NOT_TO_LOAD', 'Z');
end;

procedure Tz001_p2_frame.cb1Click(Sender: TObject);
begin
  RefreshAllRecords;
end;

end.
