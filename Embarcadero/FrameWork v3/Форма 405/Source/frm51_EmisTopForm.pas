unit frm51_EmisTopForm;

interface

uses
  frm27_LinkerTopForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, Graphics, Controls, Dialogs,

type
  Tfrm51_EmisTop = class(Tfrm27_LinkerTop)
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
    actGoToForm405: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    actGoToForm711_31: TAction;
    actGoToForm711_32: TAction;
    pmGoTo: TPopupMenu;
    N4051: TMenuItem;
    N711311: TMenuItem;
    N711321: TMenuItem;
    oqCount: TOracleQuery;
    procedure actGoToForm405Execute(Sender: TObject);
    procedure actGoToForm711_31Execute(Sender: TObject);
    procedure actGoToForm711_32Execute(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm51_EmisTop: Tfrm51_EmisTop;

implementation

uses
  SysUtils, frm01_MainForm, frm04_ListForm;

{$R *.DFM}

{ Tfrm51_EmisTop }

class function Tfrm51_EmisTop.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm51_EmisTop;
end;

class function Tfrm51_EmisTop.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm51_EmisTop;
end;

procedure Tfrm51_EmisTop.RefreshAfterListChange;
begin
  RefreshData('T030_ID', Linker.RightID);
end;

procedure Tfrm51_EmisTop.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T030_PARENT_ID', Linker.MainDataSet.FieldByName('T030_ID').AsFloat);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

class procedure Tfrm51_EmisTop.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm51_EmisTop) := AForm;
end;

procedure Tfrm51_EmisTop.actGoToForm405Execute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllEmission(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisTop.actGoToForm711_31Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.1
  frm01_Main.FindAllEmission_711_31(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisTop.actGoToForm711_32Execute(Sender: TObject);
begin
  // найти операции формы 711 раздел 3.2
  frm01_Main.FindAllEmission_711_32(
    odsListT030_ID.AsFloat
    );
end;

procedure Tfrm51_EmisTop.odsListAfterScroll(DataSet: TDataSet);
begin
  // считаем кол-во записей
  oqCount.SetVariable('T030_ID', odsList['T030_ID']);
  oqCount.Execute;
  StatusBar.Panels[0].Text := IntToStr(oqCount.GetVariable('o_count_405'));
  StatusBar.Panels[1].Text := IntToStr(oqCount.GetVariable('o_count_711_31'));
  StatusBar.Panels[2].Text := IntToStr(oqCount.GetVariable('o_count_711_32'));
end;

end.
