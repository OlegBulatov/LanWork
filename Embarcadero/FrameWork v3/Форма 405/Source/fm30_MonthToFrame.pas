unit fm30_MonthToFrame;

interface

uses
  fm30_MonthFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm30_MonthTo = class(Tfm30_Month)
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm30_MonthTo: Tfm30_MonthTo;

implementation

{$R *.DFM}

end.
