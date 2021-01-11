unit frm74_MMVBRightListForm;

interface

uses
  frm04_ListForm, Db, StdCtrls, Oracle, OracleData, Menus, Classes,
  ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm74_MMVBRightList = class(Tfrm04_List)
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
    Label2: TLabel;
    odsListT081_ID: TFloatField;
    odsListT082_ID: TFloatField;
    procedure actEditAttributesUpdate(Sender: TObject);
  private
    { Private declarations }
    function GetMaster: TOracleDataSet;
    procedure SetMaster(const Value: TOracleDataSet);
    function GetMasterFields: string;
    procedure SetMasterFields(const Value: string);
  protected
    //
    procedure OnEdit; override;
    //
    function EditForm: Tfrm04_Edit; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    class function Instance(): Tfrm74_MMVBRightList;
    property MasterFields: string read GetMasterFields write SetMasterFields;
    property Master: TOracleDataSet read GetMaster write SetMaster;
  end;

var
  frm74_MMVBRightList: Tfrm74_MMVBRightList;

implementation

uses
  frm74_MMVBDoubleForm;
//  frm75_RTSDoubleForm, A00_MatrixConst, Matrix, dm005_MainData,

{$R *.DFM}

{ Tfrm75_RTSRightList }

procedure Tfrm74_MMVBRightList.OnEdit;
begin
  if EditForm = nil then Exit;

  // отображаем форму для изменения состава эмиссий
  with Tfrm74_MMVBDouble(EditForm) do
  begin
    EditType := etEdit;
    Tfrm74_MMVBDouble(EditForm).OnSaveChange := Self.SaveChange;
    Tfrm74_MMVBDouble(EditForm).OnCancelChange := Self.CancelChange;
    T081_ID := odsList.Master.FieldByName(odsList.MasterFields).AsFloat;
    ShowModal;
  end;
end;

function Tfrm74_MMVBRightList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm74_MMVBDouble.Instance;
end;

class function Tfrm74_MMVBRightList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBRightList;
end;

class function Tfrm74_MMVBRightList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBRightList;
end;

class procedure Tfrm74_MMVBRightList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBRightList) := AForm;
end;

function Tfrm74_MMVBRightList.GetMaster: TOracleDataSet;
begin
  Result := odsList.Master;
end;

function Tfrm74_MMVBRightList.GetMasterFields: string;
begin
  Result := odsList.MasterFields;
end;

procedure Tfrm74_MMVBRightList.SetMaster(const Value: TOracleDataSet);
begin
  odsList.Master := Value;
end;

procedure Tfrm74_MMVBRightList.SetMasterFields(const Value: string);
begin
  odsList.MasterFields := Value;
end;

class function Tfrm74_MMVBRightList.Instance(): Tfrm74_MMVBRightList;
begin
  Result := Tfrm74_MMVBRightList(inherited Instance);
end;


procedure Tfrm74_MMVBRightList.actEditAttributesUpdate(Sender: TObject);
begin
  actEditAttributes.Enabled := not Master.IsEmpty;
end;

end.
