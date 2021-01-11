unit EhLibDOA;

{$I EhLib.Inc}

interface

uses
  DbUtilsEh, OracleData, db, DBGridEh;

implementation

uses Classes;

function DateValueToDOASQLStringProc(DataSet: TDataSet; Value: Variant): string;
begin
  Result := DateValueToDataBaseSQLString('ORACLE', Value);
end;

type

  TDOASQLDatasetFeaturesEh = class(TSQLDatasetFeaturesEh)
  public
    procedure ApplyFilter(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean); override;
    procedure ApplySorting(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean); override;
  end;

procedure TDOASQLDatasetFeaturesEh.ApplyFilter(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean);
begin
  if TDBGridEh(Sender).STFilter.Local then
    TDBGridEh(Sender).DataSource.DataSet.Filter :=
      GetExpressionAsFilterString(TDBGridEh(Sender),
      GetOneExpressionAsLocalFilterString, nil)
  else
    ApplyFilterSQLBasedDataSet(TDBGridEh(Sender), DateValueToDOASQLStringProc, IsReopen, 'SQL');
end;

procedure TDOASQLDatasetFeaturesEh.ApplySorting(Sender: TObject;
  DataSet: TDataSet; IsReopen: Boolean);
var
  i: integer;
begin
  if TOracleDataSet(DataSet).UniqueFields <> '' then begin
    i := DataSet.fieldbyname(TOracleDataSet(DataSet).UniqueFields).asinteger;
  inherited ApplySorting(Sender, DataSet, IsReopen);
    DataSet.Locate(TOracleDataSet(DataSet).UniqueFields, i, []);
  end else
    inherited ApplySorting(Sender, DataSet, IsReopen);
end;

initialization
  RegisterDatasetFeaturesEh(TDOASQLDatasetFeaturesEh, TOracleDataSet);
end.

