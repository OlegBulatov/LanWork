unit xxxStandartFactory;

interface

uses xxxDBGrid, db, classes, dbtables;

type
  TStandartFactory = class(TDataSetFactory)
  protected
    function GetDataSetClass: TDataSetClass; override;
  public
    procedure SetSQL(const ADataSet: TDataSet; const ASQL: TStrings); override;
    function GetSQL(const ADataSet: TDataSet): TStrings; override;
    procedure CloneDataSet(const AFrom, ATo: TDataSet); override;
    procedure PrepareSql(const ADataSet: TDataSet); override;
  end;

implementation

{ Standart }

procedure TStandartFactory.CloneDataSet(const AFrom, ATo: TDataSet);
var
  VFrom, VTo: TQuery;
  I: Integer;
begin
  // возвращаем копию DataSet'a
  inherited CloneDataSet(AFrom, ATo);
  VFrom := TQuery(AFrom);
  VTo := TQuery(ATo);

  // копируем сервер
  VTo.DatabaseName := VFrom.DatabaseName;

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

function TStandartFactory.GetDataSetClass: TDataSetClass;
begin
  // возвращаем тип TClientSql
  Result := TQuery;
end;

function TStandartFactory.GetSQL(const ADataSet: TDataSet): TStrings;
begin
  Result := TQuery(ADataSet).SQL;
end;

procedure TStandartFactory.PrepareSql(const ADataSet: TDataSet);
begin
  TQuery(ADataSet).Prepare;
end;

procedure TStandartFactory.SetSQL(const ADataSet: TDataSet;
  const ASQL: TStrings);
begin
  TQuery(ADataSet).SQL.Assign(ASQL);
end;

initialization
  TStandartFactory.BuildDataSetFactory(TStandartFactory);
end.
