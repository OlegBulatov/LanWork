unit A000_ProgessForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Gauges, Db, OracleData, Oracle;

type
  TThreads = class of TThread;

  TA000_Progess = class(TForm)
    ProgressBar1: TGauge;
    btnOk: TButton;
    Label1: TLabel;
    Label2: TLabel;
  private
  public
  end;

var
  A000_Progess: TA000_Progess;

implementation


{$R *.DFM}

{ TA000_Progess }

end.
