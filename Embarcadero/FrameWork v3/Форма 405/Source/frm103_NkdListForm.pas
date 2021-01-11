unit Frm103_NkdListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm, System.Actions;
//  Windows, Messages, Graphics, Dialogs,

type
  TCalcType = (ctNone, ctAll, ctAbsent, ctSelected);

  Tfrm103_NkdList = class(Tfrm04_List)
    odsListT030_ID: TFloatField;
    odsListT121_DATE: TDateTimeField;
    odsListT121_NKD: TFloatField;
    odsListT121_COMMENT: TStringField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    oqUpdateAll: TOracleQuery;
    procedure ToolButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure DoCalcAll(vType: integer);
    procedure DoCalc(T030_ID: Variant);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    class function Instance: Tfrm103_NkdList;
  end;

var
  frm103_NkdList: Tfrm103_NkdList;

implementation

uses SysUtils, untMessages, dm005_MainData, frm103_NkdCalcEdit, frm31_EmisInfListForm;

{$R *.DFM}

{ Tfrm103_NkdList }

class function Tfrm103_NkdList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm103_NkdList;
end;

class function Tfrm103_NkdList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm103_NkdList;
end;

class procedure Tfrm103_NkdList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm103_NkdList) := AForm;
end;

class function Tfrm103_NkdList.Instance: Tfrm103_NkdList;
begin
  Result := Tfrm103_NkdList(inherited Instance);
end;

procedure Tfrm103_NkdList.ToolButton6Click(Sender: TObject);
var
  vCalcType: TCalcType;
  Edit: Tfrm103_NkdCalcEditForm;
  i: integer;
  VOldCursor: TCursor;
begin
  vCalcType := ctNone;
  Edit := Tfrm103_NkdCalcEditForm.Create(Self);
  if Edit.ShowModal = mrOk then
    begin
    if Edit.rbAll.Checked then
      vCalcType := ctAll
    else if Edit.rbAbsent.Checked then
      vCalcType := ctAbsent
    else if Edit.rbSelected.Checked then
      vCalcType := ctSelected;
    end;
  Edit.Free;

  if vCalcType = ctAll then
    DoCalcAll(1)
  else if vCalcType = ctAbsent then
    DoCalcAll(2)
  else if vCalcType = ctSelected then
    begin
    VOldCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;

    odsList.Close;
    Application.ProcessMessages;
    try
      if frm31_EmisInfList.xxxDBGrid.SelectedRows.Count = 0 then
	DoCalc(frm31_EmisInfList.odsList['T030_ID'])
      else
	with frm31_EmisInfList.xxxDBGrid.DataSource.DataSet do
	  for i :=0 to frm31_EmisInfList.xxxDBGrid.SelectedRows.Count-1 do
	    begin
	    GotoBookmark(frm31_EmisInfList.xxxDBGrid.SelectedRows.Items[i]);
	    DoCalc(odsList['T030_ID']);
	    end;
    finally
      odsList.Open;
      Screen.Cursor:= VOldCursor;
      end;
    end;
end;

procedure Tfrm103_NkdList.DoCalc(T030_ID: Variant);
begin
  try
    oqUpdate.SetVariable('T030_ID', T030_ID);
    dmMain.StartTransaction;
    oqUpdate.Execute;
    dmMain.Commit;
  except
    on E: Exception do
      begin
      dmMain.Rollback;
      TAppMessages.ShowError(E.Message);
      end;
  end;
end;

procedure Tfrm103_NkdList.DoCalcAll(vType: integer);
var
  VOldCursor: TCursor;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;

  odsList.Close;
  Application.ProcessMessages;
  try
    try
      oqUpdateAll.SetVariable('TYPE', vType);
      dmMain.StartTransaction;
      oqUpdateAll.Execute;
      dmMain.Commit;
    except
      on E: Exception do
	begin
	dmMain.Rollback;
	TAppMessages.ShowError(E.Message);
	end;
    end;
  finally
    odsList.Open;
    Screen.Cursor:= VOldCursor;
  end;
end;

end.
