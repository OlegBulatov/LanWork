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

  // устанавливаем процедуры что собственно говоря делаем с БД
  EditType := etInsert;
  DBAction := DoMoveToRight;
  MatixAction  := WriteLogOnToRight;

  // сами вызываем метод сохранения изменений в БД
  SaveChangeToDB;

  // обновляем записи в правом списке
  VOwner.RightFrame.DataList.OldKeyFieldValue := VOwner.LeftFrame.DataList.KeyFieldValue;
  VOwner.RightFrame.DataList.RefreshDataAfterChange;

  // обновляем записи в левом списке
  VOwner.LeftFrame.DataList.DataSet.Next;
  VOwner.LeftFrame.DataList.SavePosition;
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;
}
end;

procedure TactDoubleList.actMoveAllToRightExecute(Sender: TObject);
const
  TEXT = 'Переместить все элементы левого списка в правый список?';
var
  VOwner: TfmDoubleList;
begin
{
  if not TAppMessages.ShowConfirmation(TEXT) then Exit;

  // переносим все записи вправо
  VOwner := TfmDoubleList(Self.Owner);

  // устанавливаем процедуры что собственно говоря делаем с БД
  EditType := etInsert;
  DBAction := DoMoveToRight;
  MatixAction  := WriteLogOnToRight;

  // сами вызываем метод сохранения изменений в БД
  SaveChangeToDB;

  // обновляем записи в правом списке
  VOwner.RightFrame.DataList.RefreshDataAfterChange;

  // обновляем записи в левом списке
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;
  }
end;

procedure TactDoubleList.actMoveAllToLeftExecute(Sender: TObject);
const
  TEXT = 'Переместить все элементы правого списка в левый список?';
begin
  if not TAppMessages.ShowConfirmation(TEXT) then Exit;
  
  // переносим все записи влево
//  MoveRecords(mtToLeft, True);
end;

procedure TactDoubleList.actMoveToLeftExecute(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
{
  VOwner := TfmDoubleList(Self.Owner);

  // устанавливаем процедуры что собственно говоря делаем с БД
  EditType := etInsert;
  DBAction := DoMoveToLeft;
  MatixAction  := WriteLogOnToLeft;

  // сами вызываем метод сохранения изменений в БД
  SaveChangeToDB;

  // обновляем записи в правом списке
  VOwner.LeftFrame.DataList.OldKeyFieldValue := VOwner.RightFrame.DataList.KeyFieldValue;
  VOwner.LeftFrame.DataList.RefreshDataAfterChange;

  // обновляем записи в левом списке
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
    // Определяем источник
    if AMoveType = mtToLeft then
    begin
      VFrom := VOwner.RightDBGrid;
      VProc := OnMoveToLeft;
    end else
    begin
      VFrom := VOwner.LeftDBGrid;
      VProc := OnMoveToRight;
    end;

    // Переносим каждую выделенную запись
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
  // вызываем процедуру вставки лога добавления записи
//  WriteToMatrixLog(GetMatrixAllToLeft);
end;

procedure TactDoubleList.WriteLogOnAllToRight;
begin
  // вызываем процедуру вставки лога добавления записи
//  WriteToMatrixLog(GetMatrixAllToRight);
end;

procedure TactDoubleList.WriteLogOnToRight;
begin
  // вызываем процедуру вставки лога добавления записи
//  WriteToMatrixLog(GetMatrixToRight);
end;

procedure TactDoubleList.WriteLogOnToLeft;
begin
  // вызываем процедуру вставки лога добавления записи
//  WriteToMatrixLog(GetMatrixToLeft);
end;

procedure TactDoubleList.actMoveToRightUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // можем добавлять если есть права, список не пуст и есть форма редактирования
  actMoveToRight.Enabled := not VOwner.LeftDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveAllToRightUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // можем добавлять если есть права, список не пуст и есть форма редактирования
  actMoveAllToRight.Enabled := not VOwner.LeftDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveAllToLeftUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // можем добавлять если есть права, список не пуст и есть форма редактирования
  actMoveAllToLeft.Enabled := not VOwner.RightDataSet.IsEmpty;
end;

procedure TactDoubleList.actMoveToLeftUpdate(Sender: TObject);
var
  VOwner: TfmDoubleList;
begin
  VOwner := TfmDoubleList(Self.Owner);

  // можем добавлять если есть права, список не пуст и есть форма редактирования
  actMoveToLeft.Enabled := not VOwner.RightDataSet.IsEmpty;
end;

procedure TactDoubleList.DoMoveToLeft;
begin
  // переносим записи влево
  MoveRecords(mtToLeft);
end;

procedure TactDoubleList.DoMoveToRight;
begin
  // переносим записи вправо
  MoveRecords(mtToRight);
end;

end.
