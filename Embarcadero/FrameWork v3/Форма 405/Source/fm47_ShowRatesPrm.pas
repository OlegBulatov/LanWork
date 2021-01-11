unit fm47_ShowRatesPrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm02_PrmParentFrame, StdCtrls;

type
  Tfm47_ShowRates = class(Tfm02_PrmParent)
    cb1: TCheckBox;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm47_ShowRates: Tfm47_ShowRates;

implementation

{$R *.DFM}

{ Tfm47_ShowRates }

procedure Tfm47_ShowRates.GetParamsValues;
begin
  if cb1.Checked then
    Param.AsString := 'Y'
  else
    Param.AsString := 'N';
end;

procedure Tfm47_ShowRates.SetParamsValues;
begin
  if Param.AsString = 'Y' then
    cb1.Checked := True
  else
    cb1.Checked := False;
end;

end.
