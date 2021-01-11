unit F005_Opers23EditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm002_EditFrame, ActnList, StdCtrls, Mask, DBCtrls, Db;

type
  TF005_Opers23Edit = class(TfmEdit)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ed1: TDBEdit;
    Label2: TLabel;
    ed2: TDBEdit;
    Label3: TLabel;
    ed3: TDBEdit;
    Label4: TLabel;
    ed4: TDBEdit;
    Label5: TLabel;
    ed5: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    ed6: TDBEdit;
    Label7: TLabel;
    ed7: TDBEdit;
    Label8: TLabel;
    ed8: TDBEdit;
    Label9: TLabel;
    ed9: TDBEdit;
    Label10: TLabel;
    ed13: TDBEdit;
    Label11: TLabel;
    ed14: TDBEdit;
    Label12: TLabel;
    ed10: TDBEdit;
    Label13: TLabel;
    ed11: TDBEdit;
    Label15: TLabel;
    ed15: TDBEdit;
    Label16: TLabel;
    ed16: TDBEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    ed17: TDBEdit;
    Label18: TLabel;
    ed18: TDBEdit;
    Label19: TLabel;
    ed19: TDBEdit;
    Label20: TLabel;
    ed20: TDBEdit;
    Label21: TLabel;
    ed21: TDBEdit;
    Label22: TLabel;
    ed22: TDBEdit;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    ed23: TDBEdit;
    Label24: TLabel;
    ed24: TDBEdit;
  private
    { Private declarations }
  public
    procedure SetDataSource(Value: TDataSource); override;
    function CheckValues: Boolean; override;
  end;

var
  F005_Opers23Edit: TF005_Opers23Edit;

implementation

{$R *.DFM}

{ TF005_Opers23Edit }

function TF005_Opers23Edit.CheckValues: Boolean;
begin
  Result := True;
end;

procedure TF005_Opers23Edit.SetDataSource(Value: TDataSource);
begin
  ed1.DataField := 'T240_VEKSDAT_NAME';
  ed1.DataSource := Value;
  ed2.DataField := 'T240_VEKSDAT_CODE';
  ed2.DataSource := Value;
  ed3.DataField := 'T240_VEKSDAT_OGRN';
  ed3.DataSource := Value;
  ed4.DataField := 'T240_VEKSDAT_STRAN';
  ed4.DataSource := Value;
  ed5.DataField := 'T240_VEKSDAT_REGION';
  ed5.DataSource := Value;

  ed6.DataField := 'T240_SEC_TYPE';
  ed6.DataSource := Value;
  ed7.DataField := 'T240_VEKS_NUM';
  ed7.DataSource := Value;
  ed8.DataField := 'T240_VEKS_SERIAL';
  ed8.DataSource := Value;
  ed9.DataField := 'T240_VEKS_BLANK';
  ed9.DataSource := Value;
  ed10.DataField := 'T240_VEKS_KODVAL';
  ed10.DataSource := Value;
  ed11.DataField := 'T240_VEKS_SUM';
  ed11.DataSource := Value;
//  ed12.DataField := 'T240_VEKS_SUM_USD';
//  ed12.DataSource := Value;
  ed13.DataField := 'T240_VEKS_DTSOST';
  ed13.DataSource := Value;
  ed14.DataField := 'T240_VEKS_SROKPLAT';
  ed14.DataSource := Value;
  ed15.DataField := 'T240_VEKS_DTBAL';
  ed15.DataSource := Value;
  ed16.DataField := 'T240_VEKS_OSNPRI';
  ed16.DataSource := Value;

  ed17.DataField := 'T240_VEKSDERJ_NAME';
  ed17.DataSource := Value;
  ed18.DataField := 'T240_VEKSDERJ_CODE';
  ed18.DataSource := Value;
  ed19.DataField := 'T240_VEKSDERJ_OGRN';
  ed19.DataSource := Value;
  ed20.DataField := 'T240_VEKSDERJ_STRAN';
  ed20.DataSource := Value;
  ed21.DataField := 'T240_VEKSDERJ_REGION';
  ed21.DataSource := Value;

  ed22.DataField := 'T240_PRIM';
  ed22.DataSource := Value;

  ed23.DataField := 'T243_REPORTER_SHORT_NAME';
  ed23.DataSource := Value;
  ed24.DataField := 'T243_REPORTER_INN';
  ed24.DataSource := Value;


  inherited;
end;

end.
