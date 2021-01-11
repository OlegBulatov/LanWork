unit fm020_LookUpExtFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, RxLookup, untParams,
  xxxDbLookupCheckCombo;

type
  TfmLookUpExt = class(TfmLookUp)
    odsGroup: TOracleDataSet;
  private
  protected
    function GetListFieldName: string; virtual;
    function GetKeyValuesStr: TStrArray; override;
  public
    property ListFieldName: string read GetListFieldName;
  end;

var
  fmLookUpExt: TfmLookUpExt;

implementation

{$R *.DFM}

{ TfmLookUpExt }

function TfmLookUpExt.GetListFieldName: string;
begin
  Result := '';
end;

function TfmLookUpExt.GetKeyValuesStr: TStrArray;
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
