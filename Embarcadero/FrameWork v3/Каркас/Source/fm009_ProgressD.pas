unit fm009_ProgressD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dm001_DataList, Db, ActnList, OracleData, Oracle;

type
  Tdm009_Progress = class(TDataList)
  private
    { Private declarations }
  public

  end;

var
  dm009_Progress: Tdm009_Progress;

implementation

uses dm005_MainData;

{$R *.DFM}

end.
