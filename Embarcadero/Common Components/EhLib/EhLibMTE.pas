{*******************************************************}
{                                                       }
{                     EhLib vX.X                        }
{          Register object that sort data in            }
{                  TCustomMemTableEh                    }
{                                                       }
{      Copyright (c) 2003 by Dmitry V. Bolshakov        }
{                                                       }
{*******************************************************}

{*******************************************************}
{ Add this unit to 'uses' clause of any unit of your    }
{ project to allow TDBGridEh to sort data in            }
{ TMemTableEh automatically after sorting markers       }
{ will be changed.                                      }
{ TMTEDatasetFeaturesEh determine if                    }
{ TDBGridEh.SortLocal = True then it will sort data     }
{ in memory using procedure SortByFields                }
{ else if SortLocal = False and MemTable connected to   }
{ other  DataSet via ProviderDataSet, it will try to    }
{ sord data in this DataSet using                       }
{ GetDatasetFeaturesForDataSet function                 }
{*******************************************************}

unit EhLibMTE;

{$I EhLib.Inc}

interface

uses
{$IFDEF EH_LIB_6} Variants, {$ENDIF}
  DbUtilsEh, DBGridEh, Db, MemTableEh, SysUtils;

type

  TMTEDatasetFeaturesEh = class(TDatasetFeaturesEh)
  public
    procedure ApplyFilter(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean); override;
    procedure ApplySorting(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean); override;
  end;

implementation

uses Classes;

type
  TCustomDBGridEhCrack = class(TCustomDBGridEh) end;

function GetOneExpressionAsLocalFilterString(O: TSTFilterOperatorEh; v: Variant;
  FieldName: String; DataSet: TDataSet; DateValueToSQLStringProc: TDateValueToSQLStringProcEh): String;

  function VarValueAsFilterStr(v: Variant): String;
  begin
    if VarType(v) = varDouble then
      Result := FloatToStr(v)
    else if VarType(v) = varDate then
      if @DateValueToSQLStringProc <> nil then
        Result := DateValueToSQLStringProc(Dataset, v)
      else
        Result := '''' + DateTimeToStr(v) + ''''
    else
      Result := '''' + VarToStr(v) + '''';
  end;

var
  i: Integer;
begin
  if O in [foIn, foNotIn] then
  begin
    Result := Result + ' (';
    if VarIsArray(v) then
      for i := VarArrayLowBound(v, 1) to VarArrayHighBound(v, 1) do
        Result := Result + '[' + FieldName + '] = ' + VarValueAsFilterStr(v[i]) + ' OR '
    else
      Result := Result + '[' +FieldName + '] = ' + VarValueAsFilterStr(v) + ' OR ';
    Delete(Result, Length(Result) - 3, 4);
    Result := Result + ')';
  end
  else if O in [foLike, foNotLike] then
  begin
    Result := Result +  ' [' + FieldName;
    if O = foLike
      then Result := Result + '] Like '
      else Result := Result + '] Not Like ';
    Result := Result + VarValueAsFilterStr(v);
  end else
  begin
    Result := Result +  ' [' + FieldName +  '] ' + STFilterOperatorsSQLStrMapEh[O];
    if not (O in [foNull, foNotNull]) then
      Result := Result + ' ' + VarValueAsFilterStr(v);
  end;
end;

{ TMTEDatasetFeaturesEh }

procedure TMTEDatasetFeaturesEh.ApplyFilter(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean);
var
  DS: TDataSet;
  DatasetFeatures: TDatasetFeaturesEh;
begin
  if TCustomDBGridEhCrack(Sender).STFilter.Local then
  begin
    TCustomDBGridEhCrack(Sender).DataSource.DataSet.Filter :=
      GetExpressionAsFilterString(TCustomDBGridEhCrack(Sender),
        GetOneExpressionAsLocalFilterString, nil);
  end else if (DataSet is TCustomMemTableEh) then
  begin
    DS := TCustomMemTableEh(DataSet).ProviderDataSet;
    if DS <> nil then
    begin
      DatasetFeatures := GetDatasetFeaturesForDataSet(TDataSet(DS));
      if (DatasetFeatures <> nil) and (DatasetFeatures is TDatasetFeaturesEh) then
        TDatasetFeaturesEh(DatasetFeatures).ApplyFilter(TCustomDBGridEh(Sender), TDataSet(DS), IsReopen);
    end;
  end;
end;

procedure TMTEDatasetFeaturesEh.ApplySorting(Sender: TObject; DataSet: TDataSet; IsReopen: Boolean);
var
  DS: TDataSet;
  MTE: TCustomMemTableEh;
  DatasetFeatures: TDatasetFeaturesEh;
  i: Integer;
  OrderByStr: String;
begin
  if Sender is TCustomDBGridEh then
    if TCustomDBGridEh(Sender).SortLocal then
      with TCustomDBGridEh(Sender) do
        begin
          OrderByStr := '';
          for i := 0 to SortMarkedColumns.Count - 1 do
          begin
            OrderByStr := OrderByStr + SortMarkedColumns[i].FieldName + ' ';
            if SortMarkedColumns[i].Title.SortMarker = smUpEh then
              OrderByStr := OrderByStr + ' DESC';
            OrderByStr := OrderByStr + ',';
          end;
          Delete(OrderByStr, Length(OrderByStr), 1);
          if (DataSet is TCustomMemTableEh) then
          begin
            MTE := TCustomMemTableEh(DataSet);
            MTE.SortByFields(OrderByStr);
          end;
        end
    else
    begin
      if not (DataSet is TCustomMemTableEh) then Exit;
      DS := TCustomMemTableEh(DataSet).ProviderDataSet;
      if DS <> nil then
      begin
        DatasetFeatures := GetDatasetFeaturesForDataSet(DS);
        if DatasetFeatures <> nil then
          DatasetFeatures.ApplySorting(Sender, DS, False);
        DataSet.Close;
        DataSet.Open;
      end;
    end;
end;

initialization
  RegisterDatasetFeaturesEh(TMTEDatasetFeaturesEh, TCustomMemTableEh);
end.
