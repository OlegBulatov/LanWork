unit frm881_SectorsListForm;

interface

uses
  frm04_TabListForm, Db, frm04_TabListItemForm, frm00_ParentForm, Oracle,
  OracleData, Menus, Classes, ActnList, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm881_SectorsList = class(Tfrm04_TabList)
    odsListSECTOR_NAME: TStringField;
    odsListSECTOR_LEVEL: TIntegerField;
    odsListSECTOR_POS: TIntegerField;
    odsListLEVEL_SECTOR_NAME: TStringField;
    odsListT140_ID: TIntegerField;
    odsListSECTOR_NUMBER: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetListItem: Tfrm04_TabListItem; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm881_SectorsList: Tfrm881_SectorsList;

implementation

uses
  frm881_IndustryBySectorListForm;

{$R *.DFM}

class function Tfrm881_SectorsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm881_SectorsList;
end;

class function Tfrm881_SectorsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm881_SectorsList;
end;

class procedure Tfrm881_SectorsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm881_SectorsList) := AForm;
end;

function Tfrm881_SectorsList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm881_IndustryBySectorList.Instance;
end;

procedure Tfrm881_SectorsList.FormCreate(Sender: TObject);
begin
  inherited;

  Panel1.Width := Self.Width div 2;
end;

end.
