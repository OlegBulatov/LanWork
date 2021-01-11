unit fm022_EditLookUp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUp, Db, OracleData, StdCtrls, DBCtrls, Buttons, ActnList, Mask,
  ToolEdit, ExtCtrls, unt001_Filter, RxLookup, fm020_LookUpFrame;

type
  TfmEditLookUp = class(TfmLookUp)
    ceList: TComboEdit;
    tmLookUp: TTimer;
    procedure actDropDownExecute(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure ceListButtonClick(Sender: TObject);
    procedure ceListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmLookUpTimer(Sender: TObject);
  private
    FShowAll: Boolean;
    FVDataSet: TVirtualDataSet;
    //
    procedure ApplayFilter(const AValue: string);
  public
    { Public declarations }
  end;

var
  fmEditLookUp: TfmEditLookUp;

implementation

uses dm006_PictersData;

{$R *.DFM}

procedure TfmEditLookUp.actDropDownExecute(Sender: TObject);
begin
  //
end;

procedure TfmEditLookUp.Label1Click(Sender: TObject);
begin
  //
end;

procedure TfmEditLookUp.ceListButtonClick(Sender: TObject);
begin
  FShowAll := True;
  ApplayFilter('');
  lcb.SetFocus;
  lcb.DropDown;
end;

procedure TfmEditLookUp.ceListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // ������������� ������
  tmLookUp.Enabled := False;

  // ���������� ��� �����
  // ���� ����� ��������� �� ������ ����� ���-�� ������� � LookUp'��
  // ���� ����� �� ��������� �� ������ ����� �����������
  if ceList.Text = odsList.FieldByName(ListFieldName).AsString then
  begin
    // �������� ��������� LookUp'�
    SendMessage(lcb.handle, WM_KEYDOWN, Key, 0);
  end else
  begin
    if (Key = VK_RETURN) then
    begin
      // �������� ������ �����
      tmLookUp.OnTimer(tmLookUp);
    end else
    if (Key = VK_ESCAPE) then
    begin
      // ������� ��� �������
      ApplayFilter('');
      lcb.OnChange(lcb);
    end else
    begin
      // ������� ������
      tmLookUp.Enabled := True;
    end;
  end;
end;

procedure TfmEditLookUp.tmLookUpTimer(Sender: TObject);
begin
  // ���������
  ApplayFilter(ceList.Text);

  // ���������� ������
  lcb.DropDown;
  lcb.SetFocus;

  // �������� ������ ������
  if odsList.RecordCount > 0 then
  begin
    SendMessage(lcb.handle, WM_KEYDOWN, VK_DOWN, 0);
  end;
end;

procedure TfmEditLookUp.ApplayFilter(const AValue: string);
begin
  FVDataSet.DataSet.DisableControls;
  try
    FVDataSet.Conditions.ClearFor(KeyFieldName);
    FVDataSet.Conditions.ClearFor(ListFieldName);
    if AValue <> '' then
    begin
      FVDataSet.Conditions.AddLikeFilter(ListFieldName, '%' + ceList.Text + '%');
    end else
    if not FShowAll then
    begin
      if  odsList.FieldByName(KeyFieldName).DataType in FIELD_TYPE[vtNumber] then
      begin
	FVDataSet.Conditions.AddFilter01(KeyFieldName, lcb.DataSource.DataSet.FieldByName(lcb.DataField).AsFloat);
      end else
      begin
	FVDataSet.Conditions.AddFilter02(KeyFieldName, lcb.DataSource.DataSet.FieldByName(lcb.DataField).AsString);
      end;
    end;
    odsList.Close;
    odsList.Open;
  finally
    FVDataSet.DataSet.EnableControls;
    tmLookUp.Enabled := False;
  end;
end;

end.
