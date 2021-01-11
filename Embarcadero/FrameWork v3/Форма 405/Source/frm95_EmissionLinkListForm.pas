unit frm95_EmissionLinkListForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm00_ParentForm, frm04_ListForm, Oracle, Db, OracleData, Menus, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
  ToolWin, frm91_405LinksForm, frm96_711LinksForm, ExtCtrls, Variants,
  System.Actions;

type
  TFilterBy = (fbAuto, fbIssuer, fbRegn, fbIsin);

  Tfrm95_EmissionLinkList = class(Tfrm04_List)
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
    odsListT023_NAME: TStringField;
    odsListT031_DATE_ANNUL: TDateTimeField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    pmSelect: TPopupMenu;
    actFilterByIsin: TAction;
    actFilterByIssuer: TAction;
    actFilterByRegn: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    ISIN1: TMenuItem;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure actFilterByIssuerUpdate(Sender: TObject);
    procedure actFilterByRegnUpdate(Sender: TObject);
    procedure actFilterByIsinUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterByIssuerExecute(Sender: TObject);
    procedure actFilterByRegnExecute(Sender: TObject);
    procedure actFilterByIsinExecute(Sender: TObject);

  private
    F_ISIN:  string;
    F_ActiveFilter: TFilterBy;

    function GetISIN: string;
  protected
    function GetRowFontColor: TColor; override;
  public
    RegNum: string;
    T028_ID: Double;
    T026_SEC_REGN: string;
    procedure LocateByRegNum;
  class function Instance: Tfrm95_EmissionLinkList;
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function GetIDFieldName: string; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    property ISIN: string read GetISIN write F_ISIN;
  end;

var
  frm95_EmissionLinkList: Tfrm95_EmissionLinkList;

implementation

{$R *.DFM}

{ Tfrm95_EmissionLinkList }

function Tfrm95_EmissionLinkList.GetIDFieldName: string;
begin
  Result := 'T030_ID'
end;

function Tfrm95_EmissionLinkList.GetISIN: string;
begin
  Result := F_ISIN;
  if (F_ISIN = '') then
    Result := '-';
end;

function Tfrm95_EmissionLinkList.GetRowFontColor: TColor;
begin
  (*
  ≈сли эмисси€ аннулирована красим в серый цверт
  *)
  if Pos('јннулирован', odsListT023_NAME.AsString) > 0 then
  begin
    Result := clSilver;
  end else
  begin
    Result := inherited GetRowFontColor;
  end
end;

class function Tfrm95_EmissionLinkList.GetSelfClass: Tfrm00_Parents;
begin
  result := Tfrm95_EmissionLinkList;
end;

class function Tfrm95_EmissionLinkList.GetSelfForm: Tfrm00_Parent;
begin
  result := frm95_EmissionLinkList;
end;

class function Tfrm95_EmissionLinkList.Instance: Tfrm95_EmissionLinkList;
begin
  Result := Tfrm95_EmissionLinkList(inherited Instance);
end;

procedure Tfrm95_EmissionLinkList.LocateByRegNum;
begin
  fmSeach.fNotShowMessage := true;
  fmSeach.KeyFieldName := 'T026_SEC_REGN';
  fmSeach.SearchText := RegNum;
  if RegNum <> '' then
  begin
    fmSeach.StartSearch;
  end;
end;

procedure Tfrm95_EmissionLinkList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновл€ем данные
  DataSet.Close;

  // снимаем фильтры по пол€м
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T028_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T026_SEC_REGN');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T010_ISIN_TRANSL');

  // устанавливаем фильтры
  case F_ActiveFilter of
    fbAuto:
      begin
      if T028_ID <> -1 then
        begin
        Caption := 'Ёмиссии - фильтр по эмитенту';
        SetNumbFilter('T028_ID', T028_ID);
        end
      else if ISIN <> '-' then
        begin
        Caption := 'Ёмиссии - фильтр по ISIN';
        SetStrFilter('T010_ISIN_TRANSL', ISIN);
        end
      else
        begin
        Caption := 'Ёмиссии - фильтр по рег.номеру';
        SetStrFilter('T026_SEC_REGN', RegNum);
        end;
      end;
    fbIssuer:
      begin
      Caption := 'Ёмиссии - фильтр по эмитенту';
      SetNumbFilter('T028_ID', T028_ID);
      end;
    fbRegn:
      begin
      Caption := 'Ёмиссии - фильтр по рег.номеру';
      SetStrFilter('T026_SEC_REGN', RegNum);
      end;
    fbIsin:
      begin
      Caption := 'Ёмиссии - фильтр по ISIN';
      SetStrFilter('T010_ISIN_TRANSL', ISIN);
      end;
    end;

  DataSet.Open;

  if RegNum <> ''then
  begin
    LocateByRegNum;
  end else
  begin
    if KeyFields = '' then
    begin
      if DefPosition = dpLast then DataSet.Last;
    end else
    begin
      DataSet.Locate(KeyFields, KeyValues, [])
    end;
  end;
end;

class procedure Tfrm95_EmissionLinkList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
    TForm(frm95_EmissionLinkList) := AForm;
end;

procedure Tfrm95_EmissionLinkList.actFilterByIssuerUpdate(Sender: TObject);
begin
  actFilterByIssuer.Enabled := (T028_ID <> -1) and (F_ActiveFilter <> fbIssuer);
end;

procedure Tfrm95_EmissionLinkList.actFilterByRegnUpdate(Sender: TObject);
begin
  actFilterByRegn.Enabled := (F_ActiveFilter <> fbRegn);
end;

procedure Tfrm95_EmissionLinkList.actFilterByIsinUpdate(Sender: TObject);
begin
  actFilterByIsin.Enabled := (ISIN <> '-') and (F_ActiveFilter <> fbIsin);
end;

procedure Tfrm95_EmissionLinkList.FormShow(Sender: TObject);
begin
  F_ActiveFilter := fbAuto;
  RefreshData('', Unassigned);
//  inherited;
end;

procedure Tfrm95_EmissionLinkList.actFilterByIssuerExecute(
  Sender: TObject);
begin
  F_ActiveFilter := fbIssuer;
  RefreshData('', Unassigned);
end;

procedure Tfrm95_EmissionLinkList.actFilterByRegnExecute(Sender: TObject);
begin
  F_ActiveFilter := fbRegn;
  RefreshData('', Unassigned);
end;

procedure Tfrm95_EmissionLinkList.actFilterByIsinExecute(Sender: TObject);
begin
  F_ActiveFilter := fbIsin;
  RefreshData('', Unassigned);
end;

end.
