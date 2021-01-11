unit frm47_IssuerGroupBottomForm;

interface

uses
  frm45_DoubleListBottomForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm47_IssuerGroupBottom = class(Tfrm45_DoubleListBottom)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT036_ISBANK: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT028_INN: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT036_TICKER_SKRIN: TStringField;
    odsListT036_MAIL_ADDRESS: TStringField;
    odsListT036_REG_NUMBER: TStringField;
    odsListT036_COMPANY_HEAD: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm47_IssuerGroupBottom: Tfrm47_IssuerGroupBottom;

implementation

uses frm04_ListForm, frm47_IssuerGroupDoubleForm;

{$R *.DFM}

{ Tfrm47_IssuerGroupBottom }

class function Tfrm47_IssuerGroupBottom.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupBottom;
end;

class function Tfrm47_IssuerGroupBottom.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupBottom;
end;

class procedure Tfrm47_IssuerGroupBottom.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupBottom) := AForm;
end;

procedure Tfrm47_IssuerGroupBottom.RefreshAfterListChange;
begin
  RefreshData('T028_ID', Linker.BottomID);
end;

procedure Tfrm47_IssuerGroupBottom.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T042_ID', Tfrm47_IssuerGroupDouble(Linker).T042_ID);
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
