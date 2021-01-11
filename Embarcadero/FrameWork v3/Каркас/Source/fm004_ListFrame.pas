unit fm004_ListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, Db, OracleData, Menus, Oracle,
  ActnList, ComCtrls, ToolWin, StdCtrls, L01_SearchM, unt003_DoaFactory,
  fm003_FilterFrame, fm008_DBObjectFrame,
  unt001_Filter, ExtCtrls, fm002_EditFrame, System.Actions;

const
  IS_DELETE = '������� ������?';

type
  TRefreshType = (rtAllRows, rtOneRow);

  TOnFilterEvent = procedure(const AConditions: TConditions) of object;

  TDBAction = procedure of object;

  TMatixAction = procedure of object;

  TAfterInsertRow = procedure(const AID: Double) of object;
  TAfterUpdateRow = procedure(const AID: Double) of object;
  TAfterDeleteRow = procedure(const AID: Double) of object;

  //----------------------------------------------------------------------------
  // ���:         ����������� �����
  // ����������:  �������� �� ����������� ����������.
  //              ������ ���� ������� ������� ��� ���������� ���������� -
  //              ������������, ����������� ������ � �.�.
  // ����������:  � ����������� ����������
  //                  1.  �������� �� Frame ���������� TControl
  //                      �������� TTreeView, TGrid, TCheckList � �.�.
  //----------------------------------------------------------------------------
  TfmList = class(TfmDBObject)
    PopupMenu: TPopupMenu;
    mi01: TMenuItem;
    mi02: TMenuItem;
    mi03: TMenuItem;
    mi04: TMenuItem;
    mi05: TMenuItem;
    mi06: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    N12: TMenuItem;
    mi07: TMenuItem;
    mi08: TMenuItem;
    paToolButton: TPanel;
    tlbNav: TToolBar;
    tbRefresh: TToolButton;
    tbFirst: TToolButton;
    tbLast: TToolButton;
    tlbList: TToolBar;
    tbAdd: TToolButton;
    tbUpdate: TToolButton;
    tbDelete: TToolButton;
    tbSeparator02: TToolButton;
    tbSeparator01: TToolButton;
    tlbExcel: TToolBar;
    tbSeparator03: TToolButton;
    tbExcel: TToolButton;
    tlbSeach: TToolBar;
    tbSearch: TToolButton;
    tbSeparator04: TToolButton;
    tlbFilter: TToolBar;
    tbSeparator05: TToolButton;
    tbFilter: TToolButton;
    tlbSelect: TToolBar;
    tbSeparator07: TToolButton;
    tbSelect: TToolButton;
    miExcelD: TMenuItem;
    miExcel: TMenuItem;
    actAdd: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actExcel: TAction;
    actRefresh: TAction;
    actFirst: TAction;
    actLast: TAction;
    actSearch: TAction;
    oqAdd: TOracleQuery;
    oqUpdate: TOracleQuery;
    oqDelete: TOracleQuery;
    odsFetchRecord: TOracleDataSet;
    actUnSelectAllRows: TAction;
    miUnSelectAll: TMenuItem;
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAddUpdate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actDeleteUpdate(Sender: TObject);
    //
    procedure actExcelUpdate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure actSelectAllRowsExecute(Sender: TObject);

    procedure odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure actExcelExecute(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure actFirstUpdate(Sender: TObject);
    procedure actLastUpdate(Sender: TObject);
    procedure actSearchUpdate(Sender: TObject);
    procedure actUnSelectAllRowsExecute(Sender: TObject);

  private
    // *************  TDataList *************
    FSearcher: TfrmSearch;
    //
    FRefreshType: TRefreshType;
    FOldKeyFieldValue: Double;
    FOnFilterRecord: TOnFilterEvent;  // �� ���� ���� ���� ������� List
    //
//    FCalcResult: Boolean;
    // ************* TActions **********************
    FEditForm: TfmEdit;
    FEditType: TEditType;
    //
    FDBAction: TDBAction;
    FMatixAction: TMatixAction;
    //
    // *************  TDataList *************
    //
    function GetRecordCount: Integer;
    function GetDataSource: TDataSource;
    //
    procedure PrepareFetchSQL;
    function GetSearcher: TfrmSearch;

    function IsEmpty: Boolean;
  protected
    // *************  TDataList *************
    procedure DoSelectAllRow; virtual;
    procedure DoSelectOneRow; virtual;
    //
    procedure DoUnSelectAllRow; virtual;
    procedure DoUnSelectOneRow; virtual;
    //
    procedure RefreshOneRecord; virtual;
    //
    function GetKeyFieldValue: Double; virtual;
    function GetKeyFieldName: string; virtual;
    //
    function GetDefRefreshType: TRefreshType; virtual;
    //
    procedure SetConditions; override;
    // ************* TActions **********************
    // **** ������ ��� ������ � ������� ****
    procedure WriteLogOnInsert;
    procedure WriteLogOnEdit;
    procedure WriteLogOnDelete;
    procedure WriteToMatrixLog(const AOperation: string);
    // �������� ��������� ���������� � ��������
    function GetMatrixAddName: string; virtual; abstract;
    // �������� ��������� ��������� � ��������
    function GetMatrixUpdName: string; virtual; abstract;
    // �������� ��������� �������� � ��������
    function GetMatrixDelName: string; virtual; abstract;
    //
    function GetRowFontColor: TColor; virtual;
    function GetSelectedRowFontColor: TColor; virtual;
    //
    function CheckValues: Boolean; virtual;
    procedure SetDefValues; virtual;
    //
    procedure DoInsert; virtual;
    procedure DoEdit; virtual;
    procedure DoDelete; virtual;
    //
    // ���������� ��������� �� �������
    procedure DoAfterInsertRow; virtual;
    procedure DoAfterUpdateRow; virtual;
    procedure DoAfterDeleteRow; virtual;
    //
    procedure ShowEditForm; virtual;
  public
    // *************  TDataList *************
    constructor Create(AOwner: TComponent); override;
    //
    procedure SavePosition;
    procedure RestorePosition; virtual;
    //
    procedure RefreshDataAfterChange;
    procedure RefreshDataAfterDelete;
    //
    property Searcher: TfrmSearch read GetSearcher;
    //
    property RecordCount: Integer read GetRecordCount;
    //
    property DataSource: TDataSource read GetDataSource;
    //
    property KeyFieldName: string read GetKeyFieldName;
    property KeyFieldValue: Double read GetKeyFieldValue;
    property OldKeyFieldValue: Double read FOldKeyFieldValue write FOldKeyFieldValue;
    //
    property RefreshType: TRefreshType read FRefreshType write FRefreshType;
    //
    property OnFilterRecord: TOnFilterEvent read FOnFilterRecord write FOnFilterRecord;

    function GetEditClass: TfmEditClass; virtual;
    //
    function  ActionEnabled(const AOperation: string): Boolean;
    //
    function ReadOnly: Boolean;
    //
    procedure InsertRow;
    procedure UpdateRow;
    function DeleteRow: Boolean; virtual;
    //
    function SaveUpdateToDB: Boolean;
    //
    function SaveChangeToDB: Boolean;
    function SaveChange: Boolean;
    function CancelChange: Boolean;
    //
    property EditType: TEditType read FEditType write FEditType;
    property DBAction: TDBAction read FDBAction write FDBAction;
    property MatixAction: TMatixAction read FMatixAction write FMatixAction;
    //
    property EditForm: TfmEdit read FEditForm write FEditForm;
  end;

  TfmListClass = class of TfmList; 

var
  fmList: TfmList;

implementation

uses dm006_PictersData, untMessages, untGrid, unt006_MatrixConst,
  dm005_MainData, Matrix, dm000_ObjectsFactory;

{$R *.DFM}

{ TfrmListForm }

// ****************************************************************** TDataList

procedure TfmList.actSearchExecute(Sender: TObject);
begin
  Searcher.ShowModal;
end;

procedure TfmList.actSelectAllRowsExecute(Sender: TObject);
begin
  DoSelectAllRow;
end;

function TfmList.GetDataSource: TDataSource;
begin
  Result := dsList;
end;

function TfmList.GetRecordCount: Integer;
begin
  Result := 0;
end;

// ��������� ������ ���� ������� ������
// ����� ��� ����� ���������� ������ ����� �������� ��� ���������
//    - ������ �� ����� ������������� �������
//    - ������ �� ������� ������ ��������� �� �������� ����������
procedure TfmList.RefreshOneRecord;
var
  I: Integer;
begin
  // �������������� odsFetchRecord
  PrepareFetchSQL;

  // �������� ������� �������� �� �� ��� ����� ������
  // � �������� �������� �� odsFetchRecord � odsList
  odsFetchRecord.Open;
  try
    odsList.Edit;
    for I := 0 to odsFetchRecord.FieldCount - 1 do
    begin
//      odsList.Fields[I].Assign(odsFetchRecord.Fields[I]);
      odsList.FieldByName(odsFetchRecord.Fields[I].FieldName).Assign(odsFetchRecord.Fields[I]);
    end;
    odsList.Post;
  finally
    odsFetchRecord.Close;
  end;
end;

constructor TfmList.Create(AOwner: TComponent);
begin
  inherited;

  // �������� ��������� ���� ��� ����������������
  FOldKeyFieldValue := -1;

  // �������������� ��� ���������� ������
  FRefreshType := GetDefRefreshType;
end;

function TfmList.GetKeyFieldName: string;
begin
  // ����� ������ ���� ������������� � ����������
  // Primary Key
  Result := '';
end;

// ������������ �� ��������� ������
procedure TfmList.RestorePosition;
begin
  if FOldKeyFieldValue <> -1 then
    DataSet.Locate(KeyFieldName, FOldKeyFieldValue, []);
end;

// ��������� ������� � DataSet'e
procedure TfmList.SavePosition;
begin
  FOldKeyFieldValue := KeyFieldValue;
end;

// �������������� oqFetchRecord
procedure TfmList.PrepareFetchSQL;
const
  SQL_WITH_FILTER =
   ' SELECT * FROM (%s) WHERE %s = %.0f';
begin
  // �������������� ��������� ��� ���������� ����� ������
  odsFetchRecord.SQL.Text :=
    Format(SQL_WITH_FILTER, [
      FVDataSet.OldSQL.Text,
      KeyFieldName,
      KeyFieldValue
      ]);

  // �������� ���������
  odsFetchRecord.Variables.Assign(odsList.Variables);
end;

function TfmList.GetKeyFieldValue: Double;
begin
  Result := DataSet.FieldByName(KeyFieldName).AsFloat;
end;

function TfmList.GetDefRefreshType: TRefreshType;
begin
  // �� ��������� �������� ���� ������
  Result := rtAllRows;
end;

procedure TfmList.SetConditions;
begin
  // ����������� ��������� � ��������� � DataSet'�� ��������
  ObjectsFactory.Links.SetDataSetVariables(DataSet);

  // ������������� �������, ��������
  //
  // DataSet.SetVariable('M027_ID', odsVersion['M027_ID']);
  //
  // ���
  //
  // FVDataSet.Conditions.ClearFor('P_ID');
  // FVDataSet.SetNumbFilter('P_ID', 6);
end;

procedure TfmList.RefreshDataAfterChange;
begin
  // ��������� ���� ��� ��� ������
  if FRefreshType = rtAllRows then
  begin
    //��������� �������
    SavePosition;

    // ��������� ������
    RefreshAllRecords;

    //���������� �������
    RestorePosition;
  end else
  begin
    RefreshOneRecord;
  end;
end;

procedure TfmList.RefreshDataAfterDelete;
begin
  // ��������� ���� ��� ��� ������
  if FRefreshType = rtAllRows then
  begin
    //��������� �������
    SavePosition;

    // ��������� ������
    RefreshAllRecords;

    //���������� �������
    RestorePosition;
  end;
end;

{
procedure TfmList.actSearchExecute(Sender: TObject);
begin
  Searcher.ShowModal;
end;
}

function TfmList.GetSearcher: TfrmSearch;
begin
  if not Assigned(FSearcher) then
  begin
    FSearcher := TfrmSearch.Create(Self);
    FSearcher.dmSearch.DataSet := DataSet;
    (*
    for I := 0 to odsList.FieldCount - 1 do
    begin
      FSearcher.fmSearch1.RegisterField(odsList.Fields[I]);
    end;
    *)
    //FSearcher.dmSearch.KeyFieldName := FKeyFieldName;
  end;
  Result := FSearcher;
end;


procedure TfmList.odsListAfterOpen(DataSet: TDataSet);
begin
  // ���� ���� ���������� �������
  if (odsList.RecordCount = 0) and Assigned(odsList.AfterScroll) then
  begin
    odsList.AfterScroll(odsList);
  end;

  //RefreshSum;
end;

{
procedure TfmList.actSelectAllRowsExecute(Sender: TObject);
begin
  DoSelectAllRow;
end;
}

procedure TfmList.DoSelectAllRow;
var
  VSavePlace: TBookmark;
begin
  odsList.DisableControls;
  try
    // �������� ��� ������
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.Eof do
      begin
        DoSelectOneRow;
        odsList.Next;
        Application.ProcessMessages;
      end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure TfmList.DoSelectOneRow;
begin
  //
end;

function TfmList.GetRowFontColor: TColor;
begin
  Result := clWindowText;
end;

// ****************************************************************** TActions

procedure TfmList.actAddExecute(Sender: TObject);
begin
  InsertRow;
end;

procedure TfmList.actEditExecute(Sender: TObject);
begin
  UpdateRow;
end;

procedure TfmList.actDeleteExecute(Sender: TObject);
begin
  DeleteRow;
end;

procedure TfmList.actAddUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� ����� � ����� ��������������
  actAdd.Enabled := (not ReadOnly) and
     (GetEditClass <> nil) and
     ActionEnabled(GetMatrixAddName);
end;

procedure TfmList.actEditUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actEdit.Enabled := (not ReadOnly) and
     (GetEditClass <> nil) and
     (not IsEmpty) and
     ActionEnabled(GetMatrixUpdName);
end;

procedure TfmList.actDeleteUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actDelete.Enabled := (not ReadOnly) and
     (not IsEmpty) and
     ActionEnabled(GetMatrixDelName);
end;

procedure TfmList.actExcelUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actExcel.Enabled := ActionEnabled(EXP_EXCEL)
  else
    actExcel.Enabled := True;
end;

procedure TfmList.actRefreshExecute(Sender: TObject);
begin
  // ��������� DataSet
  RefreshData;
end;

procedure TfmList.actFirstExecute(Sender: TObject);
begin
  // �� ������ ������
  if not DataSet.IsEmpty then
    DataSet.First;
end;

procedure TfmList.actLastExecute(Sender: TObject);
begin
  // �� ��������� ������
  if not DataSet.IsEmpty then
    DataSet.Last;
end;

function TfmList.CancelChange: Boolean;
begin
  // �������� ���������
  odsList.Cancel;
  Result := True;
end;

procedure TfmList.DoInsert;
begin
  // �������� ��������� ���������� ����� ������
  // ����� ���������� � DataSet'e  �� ������ ���� ������ ID !!!!!!!!!
end;

procedure TfmList.DoEdit;
begin
  // �������� ��������� �������������� ������
  // ����� �������������� � DataSet'e �� ������ ���� ������ ID !!!!!!!!
end;

procedure TfmList.DoDelete;
begin
  // �������� ��������� �������� ������
end;

procedure TfmList.InsertRow;
begin
  // ��������� DataSet � ����� �������
  odsList.Insert;
  SetDefValues;

  // ������������� ��������� ��� ���������� ������ ������ � ��
  FEditType := etInsert;
  FDBAction := DoInsert;
  FMatixAction  := WriteLogOnInsert;

  // ���������� ����� ��� ���������� ������
  ShowEditForm;
end;

procedure TfmList.UpdateRow;
begin
  // ��������� DataSet � ����� ��������������
  odsList.Edit;

  // ������������� ��������� ��� ���������� ������ ������ � ��
  FEditType := etEdit;
  FDBAction := DoEdit;
  FMatixAction  := WriteLogOnEdit;

  // ���������� ����� ��� ���������� ������
  ShowEditForm;
end;

function TfmList.DeleteRow: Boolean;
const
  IS_DELETE = '������� ������?';
begin
  Result := False;

  // ����������� �������������
  if not TAppMessages.ShowConfirmation(IS_DELETE) then Exit;

  // ������������� ��������� ��� ���������� ������ ������ � ��
  FEditType := etDelete;
  FDBAction := DoDelete;
  FMatixAction  := WriteLogOnDelete;

  // ���� �������� ����� ���������� ��������� � ��
  Result := SaveChange;
end;

function TfmList.SaveChange: Boolean;
const
  INVALID_SAVE =
    '������ ���������� ���������!' + #13#10 +
    '' + #13#10;
  DUPLICATE_FOUND =
    '����� ������ ��� ����������!' + #13#10 +
    '' + #13#10;
  ERROR_STACK =
    '�������������:' + #13#10 +
    '%s';
var
  VMessage: string;
  VOldCursor: TCursor;
begin
  // ��������� ���������
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // �������� �������� ��������
    if FEditType in [etInsert, etEdit] then
      Result := CheckValues
    else
      Result :=  True;

    // ���������� � ��
    if FEditType in [etInsert, etEdit, etDelete] then
    begin
      dmMain.StartTransaction;
      try
        // ������ �����-���� ��������� � ��
        FDBAction;

        // ��������� ���-��� � ������� � Matrix'e, ���� �� �������
        FMatixAction;

        dmMain.Commit;
        Result := True;
      except
        on E: Exception do
        begin
          dmMain.Rollback;
          VMessage := INVALID_SAVE;
          if Pos('ORA-00001:', E.Message) <> 0 then
            begin
            VMessage := Concat(VMessage, DUPLICATE_FOUND);
            end;
          VMessage := Concat(VMessage, ERROR_STACK);
          E.Message := Format(VMessage, [E.Message]);
          raise;
        end;
      end;
    end;

    // ���������� ��������� �� �������
    // ������� ��� �� ������ ������ ��� Exception
    // ������������ ������ �����
    // ����� ���� �������� ����� Commit �� �� ������� ������ ����������
    if FEditType in [etInsert, etEdit] then
    begin
      odsList.Post;
      //SavePosition;
      RefreshDataAfterChange;
      // ������ ��������� �� ������� �������
      if FEditType in [etInsert] then
      begin
        DoAfterInsertRow;
      end else
      begin
        DoAfterUpdateRow;
      end;
    end else
    if FEditType in [etDelete] then
    begin
      odsList.Delete;
      RefreshDataAfterDelete;
      // ������� ������ �� ������ �������
      DoAfterDeleteRow;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TfmList.WriteLogOnInsert;
begin
  // �������� ��������� ������� ���� ���������� ������
  WriteToMatrixLog(GetMatrixAddName);
end;

procedure TfmList.WriteLogOnEdit;
begin
  // �������� ��������� ������� ���� ��������� ������
  WriteToMatrixLog(GetMatrixUpdName);
end;

procedure TfmList.WriteLogOnDelete;
begin
  // �������� ��������� ������� ���� �������� ������
  WriteToMatrixLog(GetMatrixDelName);
end;

{
procedure TfmList.actAddExecute(Sender: TObject);
begin
  InsertRow;
end;

procedure TfmList.actEditExecute(Sender: TObject);
begin
  UpdateRow;
end;

procedure TfmList.actDeleteExecute(Sender: TObject);
begin
  DeleteRow;
end;
}

{
procedure TfmList.actAddUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� ����� � ����� ��������������
  actAdd.Enabled := (GetEditClass <> nil) and
    ActionEnabled(GetMatrixAddName);
end;

procedure TfmList.actEditUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actEdit.Enabled := (not ReadOnly) and
    ActionEnabled(GetMatrixUpdName);
end;

procedure TfmList.actDeleteUpdate(Sender: TObject);
begin
  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actDelete.Enabled := (not ReadOnly) and
    ActionEnabled(GetMatrixDelName);
end;
}

function TfmList.IsEmpty: Boolean;
begin
  // ������ DataSet ��� ���
  Result := odsList.IsEmpty;
end;

function TfmList.ReadOnly: Boolean;
begin
  // ����� ������������� ��� ���
  //Result := IsEmpty or (GetEditClass = nil);
  Result := False;
end;

function TfmList.ActionEnabled(const AOperation: string): Boolean;
begin
  // ���������� � ������������ ���� ����� �� ���������� ��������
  if dmMain.UseMatrix then
  begin
    // ����������� � �������� ����������
    Result := Matrix.MA.IsOperationPermitted(AOperation, False);
  end else
  begin
    // ������ �����
    Result := True;
  end;
end;

procedure TfmList.WriteToMatrixLog(const AOperation: string);
begin
  // ���� ������� �� ������� �� �����
  if not dmMain.UseMatrix then Exit;

  // �������� ��������� ������� ���� ���������� ������
  Matrix.MA.WriteToLog2(AOperation, true, '');
end;

function TfmList.GetEditClass: TfmEditClass;
begin
  Result := nil;
end;

procedure TfmList.ShowEditForm;
begin
  // ���� ��� ����� ��������������, �� �������������� ��������������
  // �������� � fmList'�, � �� ��� �������� ��
  // ����� SaveChange ��� CancelChange
  if GetEditClass = nil then Exit;

  // ������� �����
  if not Assigned(FEditForm) then
    begin
    FEditForm := GetEditClass.Create(Self);
    end;

  // ����� SaveChange ��� CancelChange ����� �� FEditForm
  FEditForm.DataSource := dsList;
  FEditForm.OnSaveChange := SaveChange;
  FEditForm.OnCancelChange := CancelChange;
  FEditForm.EditType := Self.FEditType;

  if FEditType = etInsert then
    SetDefValues;

  FEditForm.ShowModal;
end;

procedure TfmList.SetDefValues;
begin
  // ������������� �������� �� ���������
end;

function TfmList.CheckValues: Boolean;
begin
  // �������� ����� �������� ��������
  if Assigned(FEditForm) then
    Result := FEditForm.CheckValues
  else
    Result := True;
end;

function TfmList.SaveUpdateToDB: Boolean;
const
  INVALID_SAVE =
    '������ ���������� ���������!' + #13#10 +
    '%s';
var
  VOldCursor: TCursor;
begin
  Result := False;
  // ��������� ���������
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // ���������� � ��
    dmMain.StartTransaction;
    try
      // ������ �����-���� ��������� � ��
      DoEdit;

      // ��������� ���-��� � ������� � Matrix'e, ���� �� �������
      WriteLogOnEdit;

      dmMain.Commit;
      Result := True;
    except
      on E: Exception do
      begin
	dmMain.Rollback;
	E.Message := Format(INVALID_SAVE, [E.Message]);
	raise;
      end;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function TfmList.SaveChangeToDB: Boolean;
const
  INVALID_SAVE =
    '������ ���������� ���������!' + #13#10 +
    '%s';
var
  VOldCursor: TCursor;
begin
  Result := False;

  // ��������� ���������
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // ���������� � ��
    if FEditType in [etInsert, etEdit, etDelete] then
    begin
      dmMain.StartTransaction;
      try
	// ������ �����-���� ��������� � ��
	FDBAction;

	// ��������� ���-��� � ������� � Matrix'e, ���� �� �������
	FMatixAction;

	dmMain.Commit;
	Result := True;
      except
	on E: Exception do
	begin
	  dmMain.Rollback;
	  E.Message := Format(INVALID_SAVE, [E.Message]);
	  raise;
	end;
      end;
    end
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TfmList.odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
  var Applied: Boolean; var NewRowId: String);
//var
//  I: Integer;
//  VChanged: Boolean;
begin
  if dsList.AutoEdit and (Action = 'U') then
    begin
    // ����������� �������� � Grid'e
    // �� ���� ���� ����������
    if odsList.Modified then
      begin
      //TfmList(Owner).Actions.UpdateRow;
//      Applied := TfmList(Owner).Actions.SaveUpdateToDB;
      //showmessage('������ ���������� � ��');
      end
    else
      begin
      Applied := True;
      end;
    //Applied := True;
    end
  else
    begin
    // ���� ����� �������������� ����� SaveChange � CancelChange �� ��
    // �������, ���������, �������� �������������� � �������
    // DoInsert, DoEdit, DoDelete
    Applied := True;
    end;
end;

procedure TfmList.actExcelExecute(Sender: TObject);
begin
//
end;

procedure TfmList.actRefreshUpdate(Sender: TObject);
begin
  //
end;

procedure TfmList.actFirstUpdate(Sender: TObject);
begin
  actFirst.Enabled := not IsEmpty;
end;

procedure TfmList.actLastUpdate(Sender: TObject);
begin
  actLast.Enabled := not IsEmpty;
end;

procedure TfmList.actSearchUpdate(Sender: TObject);
begin
  actSearch.Enabled := not IsEmpty;
end;

procedure TfmList.DoUnSelectAllRow;
var
  VSavePlace: TBookmark;
begin
  odsList.DisableControls;
  try
    // �������� ��� ������
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.Eof do
      begin
        DoUnSelectOneRow;
        odsList.Next;
        Application.ProcessMessages;
      end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure TfmList.DoUnSelectOneRow;
begin
  //
end;

function TfmList.GetSelectedRowFontColor: TColor;
begin
  Result := clBlue;
end;

procedure TfmList.actUnSelectAllRowsExecute(Sender: TObject);
begin
  DoUnSelectAllRow;
end;

procedure TfmList.DoAfterDeleteRow;
begin
  // ���������� ����������� ������ �� �����
end;

procedure TfmList.DoAfterInsertRow;
begin
  // ���������� ��������� ������ �� �����
end;

procedure TfmList.DoAfterUpdateRow;
begin
  // ������� ������ �� �����
end;

end.
