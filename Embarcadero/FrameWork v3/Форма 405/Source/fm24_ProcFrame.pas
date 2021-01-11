unit fm24_ProcFrame;

interface

uses
  fm04_LookUpFrame, fm02_PrmParentFrame, Controls, StdCtrls, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  , Db, OracleData, DBCtrls,

type
  Tfm24_Proc = class(Tfm02_PrmParent)
    Label1: TLabel;
    Edit1: TEdit;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm24_Proc: Tfm24_Proc;

implementation

uses
  SysUtils;

{$R *.DFM}

{ Tfm24_Proc }

procedure Tfm24_Proc.GetParamsValues;
begin
  Param.AsInteger := StrToInt(Edit1.Text);
end;

procedure Tfm24_Proc.SetParamsValues;
begin
  Edit1.Text := '20';
end;

procedure Tfm24_Proc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if Key not in [] then exit;
end;

end.
