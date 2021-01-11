unit E001_TimeFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TE001_Time = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT055_LONG_NAME: TStringField;
    odsListT094_STATE: TStringField;
    odsListT094_STATE_DESC: TStringField;
    odsListT055_END_DATE: TDateTimeField;
    odsListT055_NEXT_START: TDateTimeField;
    procedure odsListAfterOpen(DataSet: TDataSet);
  private
  public
  end;

var
  E001_Time: TE001_Time;

implementation
//uses dm005_MainData;
{$R *.DFM}

procedure TE001_Time.odsListAfterOpen(DataSet: TDataSet);
var
  VPred: string;
begin
  // позиционирумеся на последний расчитанный период
  VPred := 'N';
  odsList.First;
  while not odsList.Eof do
  begin
    // ищем последий расчитанный период
    if (odsListT094_STATE.AsString = 'N') and (VPred = 'P') then
    begin
      odsList.Prior;
      KeyValue := odsList[KeyFieldName];
      Exit;
    end;
    VPred := odsListT094_STATE.AsString;
    odsList.Next;
  end;

  // не нашли
  odsList.First;
  KeyValue := odsList[KeyFieldName];
end;

end.
