unit frm74_MMVBListForm;

interface

uses
  frm04_TabListForm, Db, frm74_MMVBRightListForm, frm04_TabListItemForm,
  frm00_ParentForm, Oracle, OracleData, Menus, Classes, ActnList, StdCtrls,
  ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid,
  ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  frm14_DBFParentListForm, Oracle, OracleData, Menus, ActnList,
//  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, fmSeach, ComCtrls, Grids,
//  DBGrids, xxxDBGrid, ToolWin, , frm04_EditForm,
//  , , fm31_FilterFrame,

type
  Tfrm74_MMVBList = class(Tfrm04_TabList)
    odsListT081_ID: TFloatField;
    odsListT081_SECURITYID: TStringField;
    odsListIS_LINKED: TStringField;
    odsListT081_REGNUMBER: TStringField;
    odsListT081_TYPE: TStringField;
    procedure FormShow(Sender: TObject);
  private
    FT081_ID: Double;
    FRightForm: Tfrm74_MMVBRightList;
  protected
    function GetListItem: Tfrm04_TabListItem; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
  end;

var
  frm74_MMVBList: Tfrm74_MMVBList;

resourcestring
  SFileNotFound =
    'Файл ''%s'' '              + #13#10 +
    'не найден!';
  SErrorLoad =
    'Ошибка при загрузке файла!'              + #13#10 +
    '%s';

implementation

uses
  frm74_MMVBItemsForm;
//  frm74_MMVBEditForm, A00_MatrixConst, Matrix, untMessages, dm005_MainData, DBF, frm14_LoadConstUnt, A000_File2DbDM, A000_FileDescUnt,
//  A000_ParserCsvDM;

{$R *.DFM}

{ Tfrm74_MMVBList }

class function Tfrm74_MMVBList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBList;
end;

class function Tfrm74_MMVBList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBList;
end;

class procedure Tfrm74_MMVBList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBList) := AForm;
end;

procedure Tfrm74_MMVBList.RefreshAfterListChange;
begin
  RefreshData('T081_ID', FT081_ID);
end;

function Tfrm74_MMVBList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm74_MMVBItems.Instance;
end;

procedure Tfrm74_MMVBList.FormShow(Sender: TObject);
begin
  inherited;

  FRightForm := Tfrm74_MMVBRightList.Instance;
  FRightForm.Master := odsList;
  FRightForm.PlaceToWinControl(paRight);
end;

end.
