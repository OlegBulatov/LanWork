unit frm85_RemainsPortListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Gaphics, Dialogs,

type
  Tfrm85_RemainsPortList = class(Tfrm04_List)
    actGoToForm405: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    odsListT100_ID: TFloatField;
    odsListT001_ID: TFloatField;
    odsListT100_DATE: TDateTimeField;
    odsListT100_OP_COUNT: TFloatField;
    odsListT100_OP_SUM: TFloatField;
    odsListT100_COUNT: TFloatField;
    odsListT100_SUM: TFloatField;
    odsListT100_PERCENT: TFloatField;
    odsListT100_EFFECT: TFloatField;
    odsListT100_CURR_ID: TStringField;
    odsListT100_CLOSE_SUM: TFloatField;
    odsListT100_SOURCE: TStringField;
    odsListT100_MAIN_SUM: TFloatField;
    odsListT011_ROW_NUM: TFloatField;
    procedure actGoToForm405Execute(Sender: TObject);
  private
    FT057_ID: Double;
  protected
    //
    function GetT058_TYPE: Double; virtual;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    property T057_ID: Double read FT057_ID write FT057_ID;
    //
    class function Instance: Tfrm85_RemainsPortList;
  end;

var
  frm85_RemainsPortList: Tfrm85_RemainsPortList;

implementation

uses frm01_MainForm;

//uses frm01_MainForm, frm86_RemainsPortDayListForm, frm80_CalcRemainsForm;

{$R *.DFM}

{ Tfrm61_PortfelItems }

class function Tfrm85_RemainsPortList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm85_RemainsPortList;
end;

class function Tfrm85_RemainsPortList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm85_RemainsPortList;
end;

function Tfrm85_RemainsPortList.GetT058_TYPE: Double;
begin
  // нерезидент
  Result := 3;
end;

class function Tfrm85_RemainsPortList.Instance: Tfrm85_RemainsPortList;
begin
  Result := Tfrm85_RemainsPortList(inherited Instance);
end;

procedure Tfrm85_RemainsPortList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

class procedure Tfrm85_RemainsPortList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm85_RemainsPortList) := AForm;
end;


procedure Tfrm85_RemainsPortList.actGoToForm405Execute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindOper(
    odsListT001_ID.AsFloat
    );
end;

end.
