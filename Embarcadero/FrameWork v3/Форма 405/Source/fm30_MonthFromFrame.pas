unit fm30_MonthFromFrame;

interface

uses
  fm30_MonthFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm30_MonthFrom = class(Tfm30_Month)
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm30_MonthFrom: Tfm30_MonthFrom;

implementation

{$R *.DFM}

end.
