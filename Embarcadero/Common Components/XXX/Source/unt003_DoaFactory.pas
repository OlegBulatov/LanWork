unit unt003_DoaFactory;

interface

uses xxxDBGrid, unt001_Filter, db, classes, OracleData;

type
  TDoaFactory = class(TDataSetFactory)
  public
    function GetDataSetClass: TDataSetClass; override;
    procedure SetSQL(const ADataSet: TDataSet; const ASQL: TStrings); override;
    function GetSQL(const ADataSet: TDataSet): TStrings; override;
    procedure CloneDataSet(const AFrom, ATo: TDataSet); override;
    procedure PrepareSql(const ADataSet: TDataSet); override;
  end;

implementation

{ TDoaFactory }

procedure TDoaFactory.CloneDataSet(const AFrom, ATo: TDataSet);
var
  VFrom, VTo: TOracleDataSet;
//  I: Integer;
begin
  // ���������� ����� DataSet'a
  inherited CloneDataSet(AFrom, ATo);
  VFrom := TOracleDataSet(AFrom);
  VTo := TOracleDataSet(ATo);

  // �������� ������
  VTo.Session := VFrom.Session;

  // ����� ���� ������� DataSet'�
  // VTo.QueryAllRecords := False;

  // �������� SQL
  SetSQL(VTo, VFrom.SQL);

  // �������� ���������
  VTo.Variables.Assign(VFrom.Variables);
  (*
  for I := 0 to VDataSet.Params.Count - 1 do
  begin
  end;
  *)
end;

function TDoaFactory.GetDataSetClass: TDataSetClass;
begin
  // ���������� ��� TClientSql
  Result := TOracleDataSet;
end;

function TDoaFactory.GetSQL(const ADataSet: TDataSet): TStrings;
begin
  Result := TOracleDataSet(ADataSet).SQL;
end;

procedure TDoaFactory.PrepareSql(const ADataSet: TDataSet);
begin
  //TOracleDataSet(ADataSet).Pre Prepare;
end;

procedure TDoaFactory.SetSQL(const ADataSet: TDataSet;
  const ASQL: TStrings);
begin
  TOracleDataSet(ADataSet).SQL.Assign(ASQL);
end;

initialization
  TDoaFactory.BuildDataSetFactory(TDoaFactory);
end.
