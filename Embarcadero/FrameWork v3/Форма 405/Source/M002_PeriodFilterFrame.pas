unit M002_PeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo, System.Actions, Variants;

type
  TM002_PeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  M002_PeriodFilter: TM002_PeriodFilter;

implementation

{$R *.DFM}

{ TM002_PeriodFilter }

procedure TM002_PeriodFilter.InitFrame(Sender: TObject);
var
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
  vDateSeparator := FormatSettings.DateSeparator;
  vShortDateFormat := FormatSettings.ShortDateFormat;
  FormatSettings.DateSeparator := '.';
  FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
  try
    odsList.Close;
    odsList.SetVariable(0, StrToDate('31.12.2099'));
    odsList.Open;
    odsList.Last;

    if not odsList.IsEmpty then
      lcb.KeyValue := odsList[lcb.LookupField]
    else
      lcb.KeyValue := StrToDate('01.01.1900');

    odsList2.Close;
    dsList2.DataSet := nil;
    if not VarIsEmpty(lcb.KeyValue) then
      odsList2.SetVariable(0, lcb.KeyValue)
    else
      odsList2.SetVariable(0, StrToDate('01.01.1900'));

    odsList2.Open;
    dsList2.DataSet := odsList2;
    odsList2.Last;
    if not odsList2.IsEmpty then
      lcb2.KeyValue := odsList2[lcb2.LookupField]
    else
      lcb2.KeyValue := StrToDate('');
  finally
    FormatSettings.DateSeparator := vDateSeparator;
    FormatSettings.ShortDateFormat := vShortDateFormat;
  end;
end;

end.
