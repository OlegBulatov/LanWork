unit frm74_MMVBDoubleTopForm;

interface

uses
  frm45_DoubleListTopForm, Db, frm00_ParentForm, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, OracleData, Menus, ActnList,
//  StdCtrls, ExtCtrls, fmSeach, ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
//  , fm31_FilterFrame;

type
  Tfrm74_MMVBDoubleTop = class(Tfrm45_DoubleListTop)
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_CODE: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT081_ID: TFloatField;
    odsListT082_ID: TFloatField;
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm74_MMVBDoubleTop: Tfrm74_MMVBDoubleTop;

implementation

uses
  frm74_MMVBDoubleForm, frm04_ListForm;
// frm75_RTSDoubleForm,

{$R *.DFM}

{ Tfrm75_RTSDoubleTop }

class function Tfrm74_MMVBDoubleTop.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBDoubleTop;
end;

class function Tfrm74_MMVBDoubleTop.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBDoubleTop;
end;

class procedure Tfrm74_MMVBDoubleTop.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBDoubleTop) := AForm;
end;

procedure Tfrm74_MMVBDoubleTop.RefreshAfterListChange;
begin
  RefreshData('T030_ID', Linker.TopID);
end;

procedure Tfrm74_MMVBDoubleTop.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T081_ID', Tfrm74_MMVBDouble(Linker).T081_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

end.
