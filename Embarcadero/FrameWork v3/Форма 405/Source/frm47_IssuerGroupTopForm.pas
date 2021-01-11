unit frm47_IssuerGroupTopForm;

interface

uses
  frm45_DoubleListTopForm, Db, Oracle, OracleData, Menus, Classes,
  ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm45_DoubleListBottomForm,

type
  Tfrm47_IssuerGroupTop = class(Tfrm45_DoubleListTop)
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
  frm47_IssuerGroupTop: Tfrm47_IssuerGroupTop;

implementation

uses
  frm47_IssuerGroupDoubleForm, frm04_ListForm;

{$R *.DFM}

{ Tfrm47_IssuerGroupTop }

class function Tfrm47_IssuerGroupTop.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupTop;
end;

class function Tfrm47_IssuerGroupTop.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupTop;
end;

class procedure Tfrm47_IssuerGroupTop.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupTop) := AForm;
end;

procedure Tfrm47_IssuerGroupTop.RefreshAfterListChange;
begin
  RefreshData('T028_ID', Linker.TopID);
end;

procedure Tfrm47_IssuerGroupTop.RefreshData(const KeyFields: string;
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
