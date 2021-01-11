unit fm35_RepoFrame;

interface

uses
  fm02_PrmParentFrame, Controls, StdCtrls, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  Db, OracleData, DBCtrls, fm02_PrmParentFrame;

type
  Tfm35_Repo = class(Tfm02_PrmParent)
    cmbRepo: TComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm35_Repo: Tfm35_Repo;

implementation

{$R *.DFM}

{ Tfm24_Proc }

procedure Tfm35_Repo.GetParamsValues;
begin
  if cmbRepo.ItemIndex = 1 then
  begin
    // Прямое РЕПО
    Param.AsString := 'P';
  end else
  if cmbRepo.ItemIndex = 2 then
  begin
    // Обратное РЕПО
    Param.AsString := 'O';
  end else
  if cmbRepo.ItemIndex = 3 then
  begin
    // Все кроме РЕПО
    Param.AsString := 'S';
  end else
  begin
    // Все
    Param.AsString := 'A';
  end;
end;

procedure Tfm35_Repo.SetParamsValues;
begin
  if Param.AsString = 'P' then
  begin
    cmbRepo.ItemIndex := 1;
  end else
  if Param.AsString = 'O' then
  begin
    cmbRepo.ItemIndex := 2;
  end else
  if Param.AsString = 'S' then
  begin
    cmbRepo.ItemIndex := 3;
  end else
  begin
    cmbRepo.ItemIndex := 0;
  end;
end;

end.
