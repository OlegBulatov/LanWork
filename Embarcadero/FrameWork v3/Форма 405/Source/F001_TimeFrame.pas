unit F001_TimeFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF001_Time = class(TfmLookUp)
    odsListT055_ID: TFloatField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT055_LONG_NAME: TStringField;
    odsListFILE_COUNT: TStringField;
    procedure odsListAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F001_Time: TF001_Time;

implementation

{$R *.DFM}

procedure TF001_Time.odsListAfterOpen(DataSet: TDataSet);
var
  VPred: string;
begin
  // позиционирумеся на последний загруженный период
  VPred := '';
  odsList.First;
  while not odsList.Eof do
  begin
    // ищем последий расчитанный период
    if (odsListFILE_COUNT.IsNull) and (VPred <> '') then
    begin
      odsList.Prior;
      KeyValue := odsList[KeyFieldName];
      Exit;
    end;
    VPred := odsListFILE_COUNT.AsString;
    odsList.Next;
  end;

  // не нашли
  odsList.First;
  KeyValue := odsList[KeyFieldName];
end;

end.
