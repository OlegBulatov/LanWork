unit fm008_DBObjectFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, unt001_Filter, ActnList, Db, OracleData, System.Actions;

type
  TfmDBObject = class(TfmParent)
    dsList: TDataSource;
    odsList: TOracleDataSet;
  private
    function GetDataSet: TDataSet;
  protected
    FVDataSet: TVirtualDataSet;
    //
    procedure RefreshAllRecords; virtual;
    //
    procedure LinkActions; virtual;
    procedure LinkDataList; virtual;
    //
    procedure SetDisplayFieldName; virtual;
    //
    procedure SetConditions; virtual;
    //
    procedure RetrieveConditions(const AConditions: TConditions); virtual;
    //
    procedure RegisterFilterItem; virtual;
    //
    procedure InitFilter; virtual;
    //
    procedure InitLinks; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    property  DataSet: TDataSet read GetDataSet;
    property  VDataSet: TVirtualDataSet read FVDataSet;
    procedure SetMaster(ADataSet: TOracleDataSet; AField: string);
    procedure InitFrame(Sender: TObject);  override;
    procedure RefreshData; virtual;
  end;

var
  fmDBObject: TfmDBObject;

implementation
uses dm006_PictersData, untMessages, untGrid, unt006_MatrixConst,
  dm005_MainData, dm000_ObjectsFactory;

{$R *.DFM}

{ TfrmListForm }

procedure TfmDBObject.InitFrame(Sender: TObject);
begin
  // ����� �� ���������������
  FInitialized := False;

  // �������������� �������� ������
  InitFilter;

  // �������������� ������ � ������� ����������
  InitLinks;

  // ������� ������ ������� ������
  RefreshData;

  // ������ ���� ��� ������������� ����
  inherited;
end;

procedure TfmDBObject.SetConditions;
begin
  // ����� ����� ���� ������������� � ����������
  ObjectsFactory.Links.SetDataSetVariables(DataSet);
end;

// �������������� ������
// �� ���� � ����������� ������ ������� inherited
// � �������� ��������
procedure TfmDBObject.InitFilter;
begin
//  fmFilter.InitFilterItems;
//  fmFilter.AutoRegisterFilterItems;
end;


// �������������� �������� �������
//   fm003_Filter.RegisterFilterItem(...);
//   fm003_Filter.RegisterFilterItem(...);
procedure TfmDBObject.RegisterFilterItem;
begin
  // ���������� �������������� � �����������
end;

procedure TfmDBObject.SetDisplayFieldName;
begin
  // ��� ������� ���� FDataList.DataSet.Field ������
  // ������� �������� DisplayLable, ��� ���� ������� ������������
  // � ���������� ��-�� Visible � True ��� False
end;

procedure TfmDBObject.RetrieveConditions(const AConditions: TConditions);
begin
  // ������������� �������, ��������
  //
  // DataList.DataSet.SetVariable('M027_ID', odsVersion['M027_ID']);
  //
  // ���
  //
  // FVDataSet.Conditions.ClearFor('P_ID');
  // FVDataSet.SetNumbFilter('P_ID', 6);
end;

procedure TfmDBObject.LinkActions;
begin
end;

constructor TfmDBObject.Create(AOwner: TComponent);
begin
  inherited;
  // �� ������ ������, ���� ���-�� � ����������� � ��������� ����� Active=True
  odsList.Active := False;

  // �������������� ����������� DataSet
  // ������ �� BeforeOpen ����� FVDataSet ����� ��� ����������� ������ SQL
  // � ����������� ��� � odsList
  FVDataSet := TVirtualDataSet.Create(Self);
  FVDataSet.DataSet := odsList;
  FVDataSet.Enabled := True;

  {
  // ���������� ��� ����������� � ���
  if Assigned(FDataList) and
     Assigned(FActions) and
     (FActions.GetEditClass = nil) then
  begin
    // ���� ��� ����� �������������� �� �������� ��������������
    // ������������ ���������
    FDataList.DataSource.AutoEdit := True;
  end;
  }
end;

procedure TfmDBObject.LinkDataList;
begin
  // ������������ �������

end;

procedure TfmDBObject.InitLinks;
begin
  // �������� ���������� ����� ������
end;

procedure TfmDBObject.RefreshData;
begin
  // ��������� ��� ������
  RefreshAllRecords;
end;

procedure TfmDBObject.RefreshAllRecords;
begin
  // ��������� DataSet
  odsList.Close;

  {
  // ����������� ������ ������� � �������������, ���� ����
  if Assigned(FOnFilterRecord) then
  begin
    FOnFilterRecord(FVDataSet.Conditions);
  end;
  }

  // ��������� ��������� ������� �������
  SetConditions;

  // �������� ������
  odsList.Open;
end;

procedure TfmDBObject.SetMaster(ADataSet: TOracleDataSet; AField: string);
begin
  odsList.Master := ADataSet;
  odsList.MasterFields := AField;
end;

function TfmDBObject.GetDataSet: TDataSet;
begin
  Result := odsList;
end;

end.
