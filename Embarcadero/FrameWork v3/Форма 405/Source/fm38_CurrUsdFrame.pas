unit fm38_CurrUsdFrame;

interface

uses
  fm02_PrmParentFrame, Classes, Controls, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm38_CurrUsd = class(Tfm02_PrmParent)
    cb01: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm38_CurrUsd: Tfm38_CurrUsd;

implementation

{$R *.DFM}

procedure Tfm38_CurrUsd.SetParamsValues;
begin
  cb01.Checked := False;
end;

procedure Tfm38_CurrUsd.GetParamsValues;
begin
  // если USD, то в долларах США
  Param.AsString := 'USD';
  if cb01.Checked then
  begin
    // если CUR, то в оригинальной валюте
    Param.AsString := 'CUR';
  end;
end;

end.
