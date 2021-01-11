unit fm020_RadioLookUpExtFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_RadioLookUpFrame, Db, OracleData, ActnList, StdCtrls, RxLookup, untParams,
  xxxDbLookupCheckCombo;

type
  TfmRadioLookUpExt = class(TfmRadioLookUp)
    odsGroup: TOracleDataSet;
  private
  protected
    function GetListFieldName: string; virtual;
    function GetKeyValues: untParams.TFloatArray; override;
    function GetKeyValuesStr: TStrArray; override;
  public
    property ListFieldName: string read GetListFieldName;
  end;

var
  fmRadioLookUpExt: TfmRadioLookUpExt;

implementation

{$R *.DFM}

{ TfmRadioLookUpExt }

function TfmRadioLookUpExt.GetListFieldName: string;
begin
  Result := '';
end;

function TfmRadioLookUpExt.GetKeyValues: untParams.TFloatArray;
begin
  SetLength(Result, 0);
  odsGroup.Open;
  while not odsGroup.EOF do
     begin
     SetLength(Result, Length(Result) + 1);
     Result[High(Result)] := odsGroup.FieldByName(ListFieldName).AsFloat;
     odsGroup.Next;
     end;
  odsGroup.Close;
end;

function TfmRadioLookUpExt.GetKeyValuesStr: TStrArray;
begin
  SetLength(Result, 0);
  odsGroup.Open;
  while not odsGroup.EOF do
     begin
     SetLength(Result, Length(Result) + 1);
     Result[High(Result)] := odsGroup.FieldByName(ListFieldName).AsString;
     odsGroup.Next;
     end;
  odsGroup.Close;
end;

end.
