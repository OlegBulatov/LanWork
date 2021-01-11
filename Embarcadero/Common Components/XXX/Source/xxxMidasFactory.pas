unit xxxMidasFactory;

interface

uses xxxDBGrid, db, classes, ClientSql;

type
  TMidasFactory = class(TDataSetFactory)
  protected
    function GetDataSetClass: TDataSetClass; override;
  public
    procedure SetSQL(const ADataSet: TDataSet; const ASQL: TStrings); override;
    function GetSQL(const ADataSet: TDataSet): TStrings; override;
    procedure CloneDataSet(const AFrom, ATo: TDataSet); override;
    procedure PrepareSql(const ADataSet: TDataSet); override;
  end;

implementation

{ TMidasFactory }

procedure TMidasFactory.CloneDataSet(const AFrom, ATo: TDataSet);
var
  VFrom, VTo: TClientSql;
  I: Integer;
begin
  // возвращаем копию DataSet'a
  inherited CloneDataSet(AFrom, ATo);
  VFrom := TClientSql(AFrom);
  VTo := TClientSql(ATo);

  // копируем сервер
  VTo.RemoteServer := VFrom.RemoteServer;

  // копируем SQL
  SetSQL(VTo, VFrom.SQL);

  // копируем параметры
  VTo.Params.Clear;
  for I := 0 to VFrom.Params.Count - 1 do
  begin
    VTo.Params.CreateParam(
      VFrom.Params[I].DataType,
      VFrom.Params[I].Name,
      VFrom.Params[I].ParamType
      );
    VTo.Params[I].AsFloat := VFrom.Params[I].AsFloat;
  end;
end;

function TMidasFactory.GetDataSetClass: TDataSetClass;
begin
  // возвращаем тип TClientSql
  Result := TClientSql;
end;

function TMidasFactory.GetSQL(const ADataSet: TDataSet): TStrings;
begin
  Result := TClientSql(ADataSet).SQL;
end;

procedure TMidasFactory.PrepareSql(const ADataSet: TDataSet);
begin
  TClientSql(ADataSet).Prepare;
end;

procedure TMidasFactory.SetSQL(const ADataSet: TDataSet;
  const ASQL: TStrings);
begin
  TClientSql(ADataSet).SQL.Assign(ASQL);
end;

initialization
  TMidasFactory.BuildDataSetFactory(TMidasFactory);
end.
