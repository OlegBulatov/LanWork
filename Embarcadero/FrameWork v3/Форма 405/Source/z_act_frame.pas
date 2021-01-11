unit z_act_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  Tz_act = class(TfmLookUp)
    odsListID: TFloatField;
    odsListDESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z_act: Tz_act;

implementation

{$R *.DFM}

end.
