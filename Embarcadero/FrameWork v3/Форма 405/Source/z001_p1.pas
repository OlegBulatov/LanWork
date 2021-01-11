unit z001_p1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, fm033_PeriodFilterFrame,
  B000_PeriodFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, B002_BankFilterFrame, StdCtrls,
  untInterfaces, E002_PeriodFilterFrame, fm031_FilterFrame;

type
  Tz001_p1_frame = class(TfmGrid, ITransDS)
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
    odsListT002_ID: TFloatField;
    oqLoad: TOracleQuery;
    odsListDONE: TFloatField;
    paTop: TPanel;
    BankFilter: TB002_BankFilter;
    mLoad: TMenuItem;
    mLoad1: TMenuItem;
    mLoad2: TMenuItem;
    odsListDO_ACTION: TFloatField;
    ToolButton1: TToolButton;
    Button1: TButton;
    odsListDUMMY: TFloatField;
    PeriodFilter: TE002_PeriodFilter;
    procedure actSelectAllRowsExecute(Sender: TObject);
    procedure actUnSelectAllRowsExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure xxxDBGridDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    procedure InitFrames;
    //
    procedure CellClick(Column: TColumn);
  protected
   function GetRowFontColor: TColor; override;
  public
    constructor Create(AOwner: TComponent); override;
    //
    function GetDS: TDataSource;
  end;

var
  z001_p1_frame: Tz001_p1_frame;

implementation

uses dm005_MainData,dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

constructor Tz001_p1_frame.Create(AOwner: TComponent);
begin
  inherited;
  InitFrames;
end ;


procedure Tz001_p1_frame.InitFrames;
var
  OldCursor: TCursor;
  VColumnDef: TColumnDef;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;

  BankFilter.InitFrame(Self);
  PeriodFilter.InitFrame(Self);
  Screen.Cursor := OldCursor;
  BankFilter.cb.Checked := false;
  PeriodFilter.cb.Checked := false;

  ObjectsFactory.Links.LinkLookUp2Condition
(
    ctNumBetween,
    PeriodFilter,
    Self,
    'PERIOD',
    ltNoRefresh
    //ltRefresh
);

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    BankFilter,
    Self,
    'T093_BANK_CODE',
    ltNoRefresh
    //ltRefresh
    );

  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[1]);
   
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(57, 'N');
  VColumnDef.Images.AddStr(58, 'Y');
  VColumnDef.Images.AddStr(78, 'Z');

  VColumnDef.OnCellClick := CellClick;

end;



procedure Tz001_p1_frame.CellClick(Column: TColumn);
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

    oqLoad.SetVariable( 'i_YN' ,Column.Field.AsString);
    oqLoad.SetVariable( 'i_002',odsListT002_ID.AsFloat);
    oqLoad.Execute;
    end
 else
    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];

end;

function Tz001_p1_frame.GetRowFontColor: TColor;
begin
  if (odsList.FieldByName('DO_ACTION').AsFloat = 0) then
     begin
       xxxDBGrid.Canvas.Brush.Color :=  clLtGray;
     //  xxxDBGrid.Canvas.Font.Style :=  [fsBold];
       Result := inherited GetRowFontColor;
     end
   else
     Result := inherited GetRowFontColor;
    if  (odsList.FieldByName('T093_CAN_LOAD').AsString = 'Y') then
     begin
       xxxDBGrid.Canvas.Font.Style :=  [fsBold];
      Result := inherited GetRowFontColor;
     end ;
end;


procedure Tz001_p1_frame.actSelectAllRowsExecute(Sender: TObject);
 var
  OldCursor: TCursor;
  vT002_id:  double;
begin
    begin
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    odsList.DisableControls;
    vT002_ID := odsListT002_ID.AsFloat;
    odsList.First;
    while not odsList.Eof do
       if (odsListT093_CAN_LOAD.AsString = 'N') then
        begin
       oqLoad.SetVariable('I_002',odsListT002_ID.AsFloat);
       oqLoad.SetVariable('I_YN','Y');
       oqLoad.Execute;
       odsList.Next;
      end
      else
      odsList.Next;
    odsList.EnableControls;
    odsList.Refresh;
    odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
    end;
    Screen.Cursor := OldCursor;
  end;

procedure Tz001_p1_frame.actUnSelectAllRowsExecute(Sender: TObject);
 var
  OldCursor: TCursor;
  vT002_id:  double;
begin
    begin
     OldCursor := Screen.Cursor;
     Screen.Cursor := crAppStart;
    odsList.DisableControls;
    vT002_ID := odsListT002_ID.AsFloat;
    odsList.First;
    while not odsList.Eof do
       if odsListT093_CAN_LOAD.AsString = 'Y' then
        begin
       oqLoad.SetVariable('I_002',odsListT002_ID.AsFloat);
       oqLoad.SetVariable('I_YN','N');
       oqLoad.Execute;
       odsList.Next;
      end
      else
      odsList.Next;
    odsList.EnableControls;
    odsList.Refresh;
    odsList.Locate('T002_ID', vT002_ID, [loCaseInsensitive]);
    end;
      Screen.Cursor := OldCursor;
  end;

function Tz001_p1_frame.GetDS: TDataSource;
begin
  Result := dsList;
end;


procedure Tz001_p1_frame.xxxDBGridCellClick(Column: TColumn);
begin
       with xxxDBGrid do
       begin
       Canvas.Font.color := clRed;
       Canvas.refresh;
       inherited;
       end;
{  xxxDBGrid.Options := xxxDBGrid.Options - [dgRowSelect] ;
 showmessage(Column.FieldName );
 {if Column.FieldName = 'T093_CAN_LOAD' then
  begin
      xxxDBGrid.Options := xxxDBGrid.Options  [dgRowSelect];
   //         xxxDBGrid.Options := [dgRowSelect];
            //inherited;
            CellClick(Column);
        //  end
//  else
 // begin
//            xxxDBGrid.Options := xxxDBGrid.Options  -[dgRowSelect];
//            inherited;
  end;
   //  xxxDBGrid.Options := xxxDBGrid.Options- [dgRowSelect] ;
 }
end;

procedure Tz001_p1_frame.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       with xxxDBGrid.Canvas do
       begin
       Font.color := clRed;
       end; 


  inherited;

end;

procedure Tz001_p1_frame.xxxDBGridDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
//  inherited;
  with xxxDBGrid do
    begin
    Canvas.Font.color := clRed;
    Canvas.refresh;
    inherited;
    end;
end;

end.
