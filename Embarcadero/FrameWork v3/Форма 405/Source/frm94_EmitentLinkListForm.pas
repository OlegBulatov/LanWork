unit frm94_EmitentLinkListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
    Tfrm94_EmitentLinkList = class(Tfrm04_List)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT036_FULL_NAME: TStringField;
    procedure FormShow(Sender: TObject);
  private
    FINN: string;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function GetIDFieldName: string; override;
  public
    ParentID: Double ;

    procedure ClearFilters;
    procedure FilterByINN;
    class function Instance: Tfrm94_EmitentLinkList;
    //
    property INN: string read FINN write FINN;
  end;

var
  frm94_EmitentLinkList: Tfrm94_EmitentLinkList;

implementation

{$R *.DFM}

{ Tfrm94_EmitentLinkList }

function Tfrm94_EmitentLinkList.GetIDFieldName: string;
begin
  Result := 'T028_ID';
end;

class function Tfrm94_EmitentLinkList.GetSelfClass: Tfrm00_Parents;
begin
  result := Tfrm94_EmitentLinkList;
end;

class function Tfrm94_EmitentLinkList.GetSelfForm: Tfrm00_Parent;
begin
  result := frm94_EmitentLinkList;
end;

class procedure Tfrm94_EmitentLinkList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm94_EmitentLinkList) := AForm;
end;

procedure Tfrm94_EmitentLinkList.FilterByINN;
begin
  actShowSimpleFilter.Checked := True;

  if FINN <> '-' then
    begin
    // показываем фильтр
    fm31_Filter.Show;
    end;

  fm31_Filter.KeyFieldName := 'T028_CODE';
  fm31_Filter.SearchText := FINN;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('T028_CODE');

  if FINN <> '-' then
    begin
    SetStrFilter('T028_CODE', FINN);
    end;

  fm31_Filter.actSearchExecute(self);
end;

class function Tfrm94_EmitentLinkList.Instance: Tfrm94_EmitentLinkList;
begin
  Result := Tfrm94_EmitentLinkList(inherited Instance);
end;

procedure Tfrm94_EmitentLinkList.FormShow(Sender: TObject);
begin
  if FINN <> '-' then
    begin
    Caption := 'Ёмитенты - поиск по »ЌЌ';
    FilterByINN;
    end
  else
    begin
    Caption := 'Ёмитенты';
    actShowSimpleFilter.Checked := False;
    fm31_Filter.Hide;
    end;

  inherited;
end;

procedure Tfrm94_EmitentLinkList.ClearFilters;
begin
  xxxDBGrid.MainDataSet.Conditions.Clear;
end;

end.
