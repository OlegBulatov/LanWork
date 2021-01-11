unit fm020_RadioLookUpFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, RxLookup, untParams,
  xxxDbLookupCheckCombo;

type
  TfmRadioLookUp = class(TfmLookUp)
    rb: TRadioButton;
    procedure rbClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetIsChecked: Boolean; override;
    procedure SetEnabled(Value: Boolean); override;
    procedure ChangeState; override;
  public
    procedure Disable;
    procedure Enable;
  end;

var
  fmRadioLookUp: TfmRadioLookUp;

implementation

{$R *.DFM}

procedure TfmRadioLookUp.SetEnabled(Value: Boolean);
begin
  inherited SetEnabled(Value);
  rb.Enabled := Value;
end;

procedure TfmRadioLookUp.rbClick(Sender: TObject);
begin
  ChangeState;
end;

procedure TfmRadioLookUp.ChangeState;
begin
  if not Assigned(rb) then Exit;

  lcb.Enabled := rb.Checked;
  if Assigned(lcb.OnChange) then
    lcb.OnChange(lcb);
end;

procedure TfmRadioLookUp.Disable;
begin
  rb.Checked := False;
  ChangeState;
end;

procedure TfmRadioLookUp.Enable;
begin
  rb.Checked := True;
  ChangeState;
end;

function TfmRadioLookUp.GetIsChecked: Boolean;
begin
  Result := Self.Enabled and rb.Checked;
end;

end.
