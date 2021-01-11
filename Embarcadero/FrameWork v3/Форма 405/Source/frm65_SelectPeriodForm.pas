unit frm65_SelectPeriodForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, Controls, Forms, fm01_PeriodFrame,
  frm42_ClassificationForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , StdCtrls, fm02_PrmParentFrame, fm03_PrmPeriodFrame,
//  fm21SepDescriptionFrame,

type
  Tfrm65_SelectPeriod = class(Tfrm00_Parent, TStepPage)
    fm01_Period: Tfm01_Period;
    oqPeriod: TOracleQuery;
  private
    function GetT055_ID: Double;
  protected

    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);    
    //
    property T055_ID: Double read GetT055_ID;
  end;

var
  frm65_SelectPeriod: Tfrm65_SelectPeriod;

implementation

{$R *.DFM}

{ Tfrm65_SelectPeriod }

class function Tfrm65_SelectPeriod.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm65_SelectPeriod;
end;

class function Tfrm65_SelectPeriod.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm65_SelectPeriod;
end;

class procedure Tfrm65_SelectPeriod.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm65_SelectPeriod) := AForm;
end;

function Tfrm65_SelectPeriod.GetT055_ID: Double;
begin
  Result := fm01_Period.odsPeriod.FieldByName('T055_ID').AsFloat;
end;

procedure Tfrm65_SelectPeriod.DoOnShowPage(const AMainForm: TForm);
begin
  if fm01_Period.odsPeriod.Active then Exit;

  fm01_Period.Init;
end;

procedure Tfrm65_SelectPeriod.DoOnClosePage(const AMainForm: TForm);
begin                                                            
  oqPeriod.SetVariable('I_T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
  oqPeriod.Execute;
end;

end.
