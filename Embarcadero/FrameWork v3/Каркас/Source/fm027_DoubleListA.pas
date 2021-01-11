unit fm027_DoubleListA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, OracleData, Oracle;

type
  TMoveType = (mtToLeft, mtToRight);

  TMoveProc = procedure of object;

  TactDoubleList = class(TActions)
    actMoveToRight: TAction;
    actMoveAllToRight: TAction;
    actMoveAllToLeft: TAction;
    actMoveToLeft: TAction;
    oqMoveToLeft: TOracleQuery;
    oqAllMoveToLeft: TOracleQuery;
    oqMoveToRight: TOracleQuery;
    oqMoveAllToRight: TOracleQuery;
    //
    procedure actMoveToRightExecute(Sender: TObject);
    procedure actMoveAllToRightExecute(Sender: TObject);
    procedure actMoveAllToLeftExecute(Sender: TObject);
    procedure actMoveToLeftExecute(Sender: TObject);
    //
    procedure actMoveToRightUpdate(Sender: TObject);
    procedure actMoveAllToRightUpdate(Sender: TObject);
    procedure actMoveAllToLeftUpdate(Sender: TObject);
    procedure actMoveToLeftUpdate(Sender: TObject);
  private
    procedure MoveRecords(const AMoveType: TMoveType);
    procedure DoMoveToLeft;
    procedure DoMoveToRight;
  protected
    procedure WriteLogOnAllToRight;
    procedure WriteLogOnToRight;
    procedure WriteLogOnAllToLeft;
    procedure WriteLogOnToLeft;
    //
    function GetMatrixAllToRight: string; virtual;
    function GetMatrixToRight: string; virtual;
    function GetMatrixAllToLeft: string; virtual;
    function GetMatrixToLeft: string; virtual;
    //
    procedure OnMoveAllToRight; virtual;
    procedure OnMoveToRight; virtual;
    procedure OnMoveToLeft; virtual;
    procedure OnMoveAllToLeft; virtual;
    //
  public
    { Public declarations }
  end;

var
  actDoubleList: TactDoubleList;

implementation

uses dm006_PictersData, dm005_MainData, untMessages, fm027_DoubleListF,
  fm002_EditFrame, xxxDBGrid;

{$R *.DFM}

{ TactDoubleList }

procedure TactDoubleList.actMoveToRightExecute(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
{
  VOwner := TfmDoubleList(Self.Owner);

  // ������������� ��������� ��� ���������� ������ ������ � ��
  EditType := etInsert;
  DBAction := DoMoveToRight;
  MatixAction  := WriteLogOnToRight;

  // ���� �������� ����� ���������� ��������� � ��
  SaveChangeToDB;

  // ��������� ������ � ������ ������
  VOwner.RightFrame.DataList.OldKeyFieldValue := VOwner.LeftFrame.DataList.KeyFieldValue;
  VOwner.RightFrame.DataList.RefreshDataAfterChange;

  // ��������� ������ � ����� ������
  VOwner.LeftFrame.DataList.DataSet.Next;
  VOwner.LeftFrame.DataList.SavePosition;
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;
}
end;

procedure TactDoubleList.actMoveAllToRightExecute(Sender: TObject);
const
  TEXT = '����������� ��� �������� ������ ������ � ������ ������?';
var
  VOwner: TfmDoubleList;
begin
{
  if not TAppMessages.ShowConfirmation(TEXT) then Exit;

  // ��������� ��� ������ ������
  VOwner := TfmDoubleList(Self.Owner);

  // ������������� ��������� ��� ���������� ������ ������ � ��
  EditType := etInsert;
  DBAction := DoMoveToRight;
  MatixAction  := WriteLogOnToRight;

  // ���� �������� ����� ���������� ��������� � ��
  SaveChangeToDB;

  // ��������� ������ � ������ ������
  VOwner.RightFrame.DataList.RefreshDataAfterChange;

  // ��������� ������ � ����� ������
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;
  }
end;

procedure TactDoubleList.actMoveAllToLeftExecute(Sender: TObject);
const
  TEXT = '����������� ��� �������� ������� ������ � ����� ������?';
begin
  if not TAppMessages.ShowConfirmation(TEXT) then Exit;
  
  // ��������� ��� ������ �����
//  MoveRecords(mtToLeft, True);
end;

procedure TactDoubleList.actMoveToLeftExecute(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
{
  VOwner := TfmDoubleList(Self.Owner);

  // ������������� ��������� ��� ���������� ������ ������ � ��
  EditType := etInsert;
  DBAction := DoMoveToLeft;
  MatixAction  := WriteLogOnToLeft;

  // ���� �������� ����� ���������� ��������� � ��
  SaveChangeToDB;

  // ��������� ������ � ������ ������
  VOwner.LeftFrame.DataList.OldKeyFieldValue := VOwner.RightFrame.DataList.KeyFieldValue;
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;

  // ��������� ������ � ����� ������
  VOwner.RightFrame.DataList.DataSet.Next;
  VOwner.RightFrame.DataList.SavePosition;
  VOwner.RightFrame.DataList.RefreshDataAfterChange;
}
end;

procedure TactDoubleList.MoveRecords(const AMoveType: TMoveType);
var
  I: Integer;
  VFrom: TxxxDBGrid;
  VProc: TMoveProc;
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  VOwner.LeftDataSet.DisableControls;
  VOwner.RightDataSet.DisableControls;
  try
    // ���������� ��������
    if AMoveType = mtToLeft then
    begin
      VFrom := VOwner.RightDBGrid;
      VProc := OnMoveToLeft;
    end else
    begin
      VFrom := VOwner.LeftDBGrid;
      VProc := OnMoveToRight;
    end;

    // ��������� ������ ���������� ������
    VFrom.SelectedRows.CurrentRowSelected := True;
    for I := 0 to VFrom.SelectedRows.Count - 1 do
    begin
      VFrom.DataSource.DataSet.GotoBookmark(Pointer(VFrom.SelectedRows.Items[I]));
      VProc;
    end;
    VOwner.RightDBGrid.SelectedRows.Clear;
    VOwner.LeftDBGrid.SelectedRows.Clear;
  finally
    VOwner.LeftDataSet.EnableControls;
    VOwner.RightDataSet.EnableControls;
  end;
end;

procedure TactDoubleList.OnMoveToLeft;
begin
  //
end;

procedure TactDoubleList.OnMoveToRight;
begin
  //
end;

procedure TactDoubleList.OnMoveAllToLeft;
begin
  //
end;

procedure TactDoubleList.OnMoveAllToRight;
begin
  //
end;

function TactDoubleList.GetMatrixAllToLeft: string;
begin
  Result := '';
end;

function TactDoubleList.GetMatrixAllToRight: string;
begin
  Result := '';
end;

function TactDoubleList.GetMatrixToLeft: string;
begin
  Result := '';
end;

function TactDoubleList.GetMatrixToRight: string;
begin
  Result := '';
end;

procedure TactDoubleList.WriteLogOnAllToLeft;
begin
  // �������� ��������� ������� ���� ���������� ������
//  WriteToMatrixLog(GetMatrixAllToLeft);
end;

procedure TactDoubleList.WriteLogOnAllToRight;
begin
  // �������� ��������� ������� ���� ���������� ������
//  WriteToMatrixLog(GetMatrixAllToRight);
end;

procedure TactDoubleList.WriteLogOnToRight;
begin
  // �������� ��������� ������� ���� ���������� ������
//  WriteToMatrixLog(GetMatrixToRight);
end;

procedure TactDoubleList.WriteLogOnToLeft;
begin
  // �������� ��������� ������� ���� ���������� ������
//  WriteToMatrixLog(GetMatrixToLeft);
end;

procedure TactDoubleList.actMoveToRightUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actMoveToRight.Enabled := not VOwner.LeftDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveAllToRightUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actMoveAllToRight.Enabled := not VOwner.LeftDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveAllToLeftUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actMoveAllToLeft.Enabled := not VOwner.RightDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveToLeftUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // ����� ��������� ���� ���� �����, ������ �� ���� � ���� ����� ��������������
  actMoveToLeft.Enabled := not VOwner.RightDataSet.IsEmpty;
end;

procedure TactDoubleList.DoMoveToLeft;
begin
  // ��������� ������ �����
  MoveRecords(mtToLeft);
end;

procedure TactDoubleList.DoMoveToRight;
begin
  // ��������� ������ ������
  MoveRecords(mtToRight);
end;

end.
