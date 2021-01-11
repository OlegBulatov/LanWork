unit frm70_BankStateHistoryForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Graphics, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  DBCtrls, DBCGrids

type
  Tfrm70_BankStateHistory = class(Tfrm04_List)
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_BANK_NAME: TStringField;
    odsListT001_OP_SUM_IN: TFloatField;
    odsListT001_OP_SUM_OUT: TFloatField;
    odsListT001_OP_SUM_SALDO: TFloatField;
    odsListT001_OP_SUM_OB: TFloatField;
    odsListT001_OP_SUM_IN_F: TFloatField;
    odsListT001_OP_SUM_OUT_F: TFloatField;
    odsListT001_OP_SUM_SALDO_F: TFloatField;
    odsListT001_OP_SUM_OB_F: TFloatField;
    odsListEVALUATION_STATE_DESC: TStringField;
    odsListT002_CALC_DATE: TDateTimeField;
    odsListT002_CHANGE_DATE: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
  protected
    //
    function GetRowFontColor: TColor; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm70_BankStateHistory: Tfrm70_BankStateHistory;

implementation

//uses frm41_ContrStateForm, frm40_BankStateForm;

{$R *.DFM}

{ Tfrm40_BankState }

function Tfrm70_BankStateHistory.GetRowFontColor: TColor;
begin
  if odsListEVALUATION_STATE_DESC.AsString = 'Оценка КО произведена' then
  begin
    Result := inherited GetRowFontColor;
  end else
  begin
    Result := clRed;
  end;
end;

class function Tfrm70_BankStateHistory.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm70_BankStateHistory;
end;

class function Tfrm70_BankStateHistory.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm70_BankStateHistory;
end;

class procedure Tfrm70_BankStateHistory.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm70_BankStateHistory) := AForm;
end;

procedure Tfrm70_BankStateHistory.FormCreate(Sender: TObject);
begin
  inherited;
	ReleaseMemory := True;
end;

end.
