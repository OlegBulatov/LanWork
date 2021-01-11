unit z001_p4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, untInterfaces, DBCtrls,
  xxxDBGridLookUp, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, z_act_frame, StdCtrls, fm031_FilterFrame;

type
  Tz001_p4_frame = class( TfmGrid )
    ToolButton1: TToolButton;
    oqLoadSC: TOracleQuery;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    ActionFilter: Tz_act;
    Button1: TButton;
    oqCompare: TOracleQuery;
    odsListMARK: TStringField;
    odsListT002_ID: TFloatField;
    odsListDIT_COUNT: TFloatField;
    odsListDS_COUNT: TFloatField;
    odsListDO_ACTION: TFloatField;
    odsListDO_ACTION_STR: TStringField;
    odsListT055_ID: TFloatField;
    odsListT002_BANK_CODE: TStringField;
    odsListID: TFloatField;
    odsListIDENTIFIER: TFloatField;
    odsListN_GR: TFloatField;
    odsListT033_ID: TFloatField;
    odsListT034_ID: TFloatField;
    odsListT025_CODE: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT006_NAME: TStringField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TStringField;
    odsListT001_COMMENT: TStringField;
    odsListT001_C10: TStringField;
    odsListT001_C11: TStringField;
    odsListT001_C12: TStringField;
    odsListT001_C16: TStringField;
    odsListT001_C17: TStringField;
    odsListT001_C18: TStringField;
    odsListT001_C19: TStringField;
    odsListT001_C20: TStringField;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_10: TFloatField;
    odsListT001_DATE_ON: TDateTimeField;
    odsListT001_DATE_OFF: TDateTimeField;
    odsListT001_CR_ID: TStringField;
    odsListSUM_CROSS: TFloatField;
    odsListPROC_CROSS: TFloatField;
    BtComp: TButton;
    actCompare: TAction;
    actVert: TAction;
    oqVert: TOracleQuery;
    Button2: TButton;
    procedure ToolButton2Click(Sender: TObject);
    procedure actCompareExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actVertExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
 //   procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  //    DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
  FDoThis: IDoThis;
    { Private declarations }
  procedure InitFrames;
  procedure SetSEC_ID(const Value: double);

  procedure SetREPORT(const Value: double);
  protected
  function GetRowFontColor: TColor; override;
  procedure CellClick(Column: TColumn);

  public
    v_counter : integer;
   constructor Create(AOwner: TComponent); override;
    property SEC_ID: double write SetSEC_ID;
    property REPORT: double write SetREPORT;
    property DoThis: IDoThis read FDoThis write FDoThis;

  end;

var
  z001_p4_frame: Tz001_p4_frame;

implementation
uses dm005_MainData,dm000_ObjectsFactory, unt007_LinksList,
z001_Compare_Form,z001_Vert_Form;

{$R *.DFM}

constructor Tz001_p4_frame.Create(AOwner: TComponent);
begin
  inherited;
  InitFrames;
  v_counter := 0;
end ;

procedure Tz001_p4_frame.InitFrames;
var
  OldCursor: TCursor;
    VColumnDef: TColumnDef;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  
  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[0]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(57, 'N');
  VColumnDef.Images.AddStr(58, 'Y');
  VColumnDef.Images.AddStr(78, 'Z');
  VColumnDef.OnCellClick := CellClick;

  ActionFilter.InitFrame(Self);

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    ActionFilter,
    Self,
    'DO_ACTION',
    ltNoRefresh
    //ltRefresh
    );
   Screen.Cursor := OldCursor;
end;

procedure Tz001_p4_frame.SetSEC_ID(const Value: double);
begin
  odsList.SetVariable('SEC_ID', Value);
end;

//procedure Tz001_p4_frame.SetPERIOD(const Value: double);
//begin
//  odsList.SetVariable('PERIOD', Value);
//end;

procedure Tz001_p4_frame.SetREPORT(const Value: double);
begin
  odsList.SetVariable('REPORT', Value);
end;

procedure Tz001_p4_frame.CellClick(Column: TColumn);
var old_cnt : integer;
begin
  old_cnt := v_counter;
  if (Column.Field.FieldName = 'MARK')  then
    begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];       
    DataSet.Edit;
    if (Column.Field.AsString = 'N') and (v_counter < 2) then
      begin
      Column.Field.AsString := 'Y' ;
      v_counter := v_counter +1;
      end
    else
      if Column.Field.AsString = 'Y' then
       begin
      Column.Field.AsString := 'N';
      v_counter := v_counter -1;
      end;
    DataSet.Post;
  //  showmessage(IntToStr(v_counter));
    if v_counter = 2 then btComp.Enabled := true;
    if (v_counter = 1) and (old_cnt =2) then btComp.Enabled := false;
  //oqLoad.SetVariable( 'i_YN'    ,Column.Field.AsString);
  //oqLoad.SetVariable( 'i_002'   ,odsListT002_ID.AsFloat);
 //oqLoad.SetVariable( 'i_SEC_ID',odsListSEC_ID.AsFloat);
 // oqLoad.Execute;

    end
  else
      xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    //       RefreshAllRecords;
end;

function Tz001_p4_frame.GetRowFontColor: TColor;
begin
  Result := inherited GetRowFontColor;
  if (odsList.FieldByName('DO_ACTION').AsFloat = 0) then
    begin
    xxxDBGrid.Canvas.Brush.Color :=  clLtGray;
    Result := inherited GetRowFontColor;
    end;
  if (odsList.FieldByName('DO_ACTION').AsFloat = 1) then
    Result := clRed;
  if (odsList.FieldByName('DO_ACTION').AsFloat = 2) then
   Result := clBlue;
  if (odsList.FieldByName('DO_ACTION').AsFloat = 3) then
   Result := clMaroon;
  // xxxDBGrid.Canvas.Brush.Color :=  clBlue;
  // xxxDBGrid.Canvas.Font := fsBold;
end;
 {
procedure Tz001_p4_frame.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//xxxDBGrid.Canvas.Brush.Color :=  clBlue;
//
  inherited;

//
end;
  }
procedure Tz001_p4_frame.ToolButton2Click(Sender: TObject);
var
  vsec_id:  double;
  vT002_ID:  double;
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  odsList.DisableControls;
  vT002_ID := odsList.GetVariable('REPORT'); //z001_p2_frame1.odsListT002_ID.AsFloat;
  vsec_id  := odsList.GetVariable('SEC_ID');
  FDoThis.RunDML(vT002_ID,vsec_id);
  odsList.EnableControls;
  odsList.Refresh;
  Screen.Cursor := OldCursor;
end;


procedure Tz001_p4_frame.actCompareExecute(Sender: TObject);
      var
      Compare   : Tz001_CompareForm;
      v_cnt     : integer;
begin
    v_cnt := 1;
    odsList.First;
    while not odsList.Eof do
       if (odsListMARK.AsString = 'Y') and (v_cnt = 1) then
                begin
		oqCompare.SetVariable('z1_DO_ACTION_STR',odsListDO_ACTION_STR.AsString);
		oqCompare.SetVariable('z1_N_GR',odsListN_GR.AsFloat);
		oqCompare.SetVariable('z1_T001_DATE_OP',odsListT001_DATE_OP.AsDateTime);
		oqCompare.SetVariable('z1_T011_TYPE_ID',odsListT011_TYPE_ID.AsFloat);
		oqCompare.SetVariable('z1_T006_NAME',odsListT006_NAME.AsString);
		oqCompare.SetVariable('z1_T001_OP_COUNT',odsListT001_OP_COUNT.AsFloat);
		oqCompare.SetVariable('z1_T001_OP_CR_ID',odsListT001_OP_CR_ID.AsString);
		oqCompare.SetVariable('z1_T001_OP_SUM',odsListT001_OP_SUM.AsFloat);
		oqCompare.SetVariable('z1_T001_OP_PROC',odsListT001_OP_PROC.AsFloat);
		oqCompare.SetVariable('z1_SUM_CROSS',odsListSUM_CROSS.AsFloat);
		oqCompare.SetVariable('z1_PROC_CROSS',odsListPROC_CROSS.AsFloat);
		oqCompare.SetVariable('z1_T012_NAME',odsListT012_NAME.AsString);
		oqCompare.SetVariable('z1_T012_CODE',odsListT012_CODE.AsString);
		oqCompare.SetVariable('z1_T013_NAME',odsListT013_NAME.AsString);
		oqCompare.SetVariable('z1_T013_CODE',odsListT013_CODE.AsString);
		oqCompare.SetVariable('z1_T001_C10',odsListT001_C10.AsString);
		oqCompare.SetVariable('z1_T025_CODE',odsListT025_CODE.AsFloat);
		oqCompare.SetVariable('z1_T027_SEC_TYPE',odsListT027_SEC_TYPE.AsString );
		oqCompare.SetVariable('z1_T001_DATE_ON',odsListT001_DATE_ON.AsDateTime);
		oqCompare.SetVariable('z1_T001_DATE_OFF',odsListT001_DATE_OFF.AsVariant);
		oqCompare.SetVariable('z1_T001_CR_ID',odsListT001_CR_ID.AsString);
		oqCompare.SetVariable('z1_T001_N8',odsListT001_N8.AsFloat);
		oqCompare.SetVariable('z1_T001_N9',odsListT001_N9.AsFloat);
		oqCompare.SetVariable('z1_T001_10',odsListT001_10.AsFloat);
		oqCompare.SetVariable('z1_T001_C11',odsListT001_C11.AsString);
		oqCompare.SetVariable('z1_T001_C12',odsListT001_C12.AsString);
		oqCompare.SetVariable('z1_T001_C16',odsListT001_C16.AsString);
		oqCompare.SetVariable('z1_T001_C17',odsListT001_C17.AsString);
		oqCompare.SetVariable('z1_T001_C18',odsListT001_C18.AsString);
		oqCompare.SetVariable('z1_T001_C19',odsListT001_C19.AsString);
		oqCompare.SetVariable('z1_T001_C20',odsListT001_C20.AsString);
                v_cnt := 2;
                 odsList.Next;
                end
              else
                if (odsListMARK.AsString = 'Y') and (v_cnt = 2) then
                begin
		oqCompare.SetVariable('z2_DO_ACTION_STR',odsListDO_ACTION_STR.AsString);
		oqCompare.SetVariable('z2_N_GR',odsListN_GR.AsFloat);
		oqCompare.SetVariable('z2_T001_DATE_OP',odsListT001_DATE_OP.AsDateTime);
		oqCompare.SetVariable('z2_T011_TYPE_ID',odsListT011_TYPE_ID.AsFloat);
		oqCompare.SetVariable('z2_T006_NAME',odsListT006_NAME.AsString);
		oqCompare.SetVariable('z2_T001_OP_COUNT',odsListT001_OP_COUNT.AsFloat);
		oqCompare.SetVariable('z2_T001_OP_CR_ID',odsListT001_OP_CR_ID.AsString);
		oqCompare.SetVariable('z2_T001_OP_SUM',odsListT001_OP_SUM.AsFloat);
		oqCompare.SetVariable('z2_T001_OP_PROC',odsListT001_OP_PROC.AsFloat);
		oqCompare.SetVariable('z2_SUM_CROSS',odsListSUM_CROSS.AsFloat);
		oqCompare.SetVariable('z2_PROC_CROSS',odsListPROC_CROSS.AsFloat);
		oqCompare.SetVariable('z2_T012_NAME',odsListT012_NAME.AsString);
		oqCompare.SetVariable('z2_T012_CODE',odsListT012_CODE.AsString);
		oqCompare.SetVariable('z2_T013_NAME',odsListT013_NAME.AsString);
		oqCompare.SetVariable('z2_T013_CODE',odsListT013_CODE.AsString);
		oqCompare.SetVariable('z2_T001_C10',odsListT001_C10.AsString);
		oqCompare.SetVariable('z2_T025_CODE',odsListT025_CODE.AsFloat);
		oqCompare.SetVariable('z2_T027_SEC_TYPE',odsListT027_SEC_TYPE.AsString);
		oqCompare.SetVariable('z2_T001_DATE_ON',odsListT001_DATE_ON.AsDateTime);
		oqCompare.SetVariable('z2_T001_DATE_OFF',odsListT001_DATE_OFF.AsDateTime);
		oqCompare.SetVariable('z2_T001_CR_ID',odsListT001_CR_ID.AsString);
		oqCompare.SetVariable('z2_T001_N8',odsListT001_N8.AsFloat);
		oqCompare.SetVariable('z2_T001_N9',odsListT001_N9.AsFloat);
		oqCompare.SetVariable('z2_T001_10',odsListT001_10.AsFloat);
		oqCompare.SetVariable('z2_T001_C11',odsListT001_C11.AsString);
		oqCompare.SetVariable('z2_T001_C12',odsListT001_C12.AsString);
		oqCompare.SetVariable('z2_T001_C16',odsListT001_C16.AsString);
		oqCompare.SetVariable('z2_T001_C17',odsListT001_C17.AsString);
		oqCompare.SetVariable('z2_T001_C18',odsListT001_C18.AsString);
		oqCompare.SetVariable('z2_T001_C19',odsListT001_C19.AsString);
		oqCompare.SetVariable('z2_T001_C20',odsListT001_C20.AsString);
                Break;
                end
                  else
                odsList.Next;
                oqCompare.Execute;
 Compare := Tz001_CompareForm.Create(Self);
 Compare.ShowModal;
 Compare.Free;
end;

procedure Tz001_p4_frame.actRefreshExecute(Sender: TObject);
begin
  v_counter := 0;
  BtComp.Enabled := false;
  inherited;
end;

procedure Tz001_p4_frame.actVertExecute(Sender: TObject);
      var
      Vert   : Tz001_VertForm;
begin
		oqVert.SetVariable('z1_DO_ACTION_STR',odsListDO_ACTION_STR.AsString);
		oqVert.SetVariable('z1_N_GR',odsListN_GR.AsFloat);
		oqVert.SetVariable('z1_T001_DATE_OP',odsListT001_DATE_OP.AsDateTime);
		oqVert.SetVariable('z1_T011_TYPE_ID',odsListT011_TYPE_ID.AsFloat);
		oqVert.SetVariable('z1_T006_NAME',odsListT006_NAME.AsString);
		oqVert.SetVariable('z1_T001_OP_COUNT',odsListT001_OP_COUNT.AsFloat);
		oqVert.SetVariable('z1_T001_OP_CR_ID',odsListT001_OP_CR_ID.AsString);
		oqVert.SetVariable('z1_T001_OP_SUM',odsListT001_OP_SUM.AsFloat);
		oqVert.SetVariable('z1_T001_OP_PROC',odsListT001_OP_PROC.AsFloat);
		oqVert.SetVariable('z1_SUM_CROSS',odsListSUM_CROSS.AsFloat);
		oqVert.SetVariable('z1_PROC_CROSS',odsListPROC_CROSS.AsFloat);
		oqVert.SetVariable('z1_T012_NAME',odsListT012_NAME.AsString);
		oqVert.SetVariable('z1_T012_CODE',odsListT012_CODE.AsString);
		oqVert.SetVariable('z1_T013_NAME',odsListT013_NAME.AsString);
		oqVert.SetVariable('z1_T013_CODE',odsListT013_CODE.AsString);
		oqVert.SetVariable('z1_T001_C10',odsListT001_C10.AsString);
		oqVert.SetVariable('z1_T025_CODE',odsListT025_CODE.AsFloat);
		oqVert.SetVariable('z1_T027_SEC_TYPE',odsListT027_SEC_TYPE.AsString );
		oqVert.SetVariable('z1_T001_DATE_ON',odsListT001_DATE_ON.AsDateTime);
		oqVert.SetVariable('z1_T001_DATE_OFF',odsListT001_DATE_OFF.AsVariant);
		oqVert.SetVariable('z1_T001_CR_ID',odsListT001_CR_ID.AsString);
		oqVert.SetVariable('z1_T001_N8',odsListT001_N8.AsFloat);
		oqVert.SetVariable('z1_T001_N9',odsListT001_N9.AsFloat);
		oqVert.SetVariable('z1_T001_10',odsListT001_10.AsFloat);
		oqVert.SetVariable('z1_T001_C11',odsListT001_C11.AsString);
		oqVert.SetVariable('z1_T001_C12',odsListT001_C12.AsString);
		oqVert.SetVariable('z1_T001_C16',odsListT001_C16.AsString);
		oqVert.SetVariable('z1_T001_C17',odsListT001_C17.AsString);
		oqVert.SetVariable('z1_T001_C18',odsListT001_C18.AsString);
		oqVert.SetVariable('z1_T001_C19',odsListT001_C19.AsString);
		oqVert.SetVariable('z1_T001_C20',odsListT001_C20.AsString);
                //odsList.Next;
          oqVert.Execute;
 Vert := Tz001_VertForm.Create(Self);
 Vert.ShowModal;
 Vert.Free;
end;

procedure Tz001_p4_frame.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.Field.FieldName = 'T001_N8')
  or (Column.Field.FieldName = 'T001_N9')
  or (Column.Field.FieldName = 'T001_10') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsInteger = 1] or
      DFCS_FLAT
      );
  end;
end;

end.
