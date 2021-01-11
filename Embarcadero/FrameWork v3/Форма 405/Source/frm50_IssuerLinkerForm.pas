unit frm50_IssuerLinkerForm;

interface

uses
  frm27_LinkerForm, StdCtrls, ExtCtrls, ActnList, Db, frm00_ParentForm,
  Oracle, Classes, OracleData, fm31_FilterFrame, Forms, fmSeach, DBCtrls,
  Buttons, Grids, DBGrids, xxxDBGrid, Controls, Variants, System.Actions;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  DBCtrls, Buttons,
//  ComCtrls, ToolWin, OracleData, Oracle, fm31_FilterFrame,
//  fmSeach, Grids, DBGrids, xxxDBGrid;

type
  Tfrm50_IssuerLinker = class(Tfrm27_Linker)
    Bevel1: TBevel;
    odsLookupT028_ID: TFloatField;
    odsLookupT028_SHOT_NAME: TStringField;
    CheckBox1: TCheckBox;
    actChMain: TAction;
    odsLookupT036_ISBANK: TStringField;
    procedure CheckBox1Click(Sender: TObject);
  private
  protected
    procedure OnSelectItem; override;
    procedure OnClearSelect; override;
    //
    procedure OnMoveToRight; override;
    procedure OnMoveToLeft; override;
    //
    function GetMasterFieldName: string; override;
    //
    procedure InitLeftForm; override;
    procedure InitRightForm; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshLookUp; override;
    procedure RefreshAfter; override;
  end;

var
  frm50_IssuerLinker: Tfrm50_IssuerLinker;

implementation

uses
  frm50_IssuerBottomForm, frm50_IssuerTopForm;
//  , dm005_MainData;

{$R *.DFM}

{ Tfrm50_IssuerLinker }

function Tfrm50_IssuerLinker.GetMasterFieldName: string;
begin
  Result := 'T028_ID';
end;

class function Tfrm50_IssuerLinker.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm50_IssuerLinker;
end;

class function Tfrm50_IssuerLinker.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm50_IssuerLinker;
end;

procedure Tfrm50_IssuerLinker.InitLeftForm;
begin
  LeftForm := Tfrm50_IssuerBottom.Instance;
  Tfrm50_IssuerBottom.Instance.Linker := Self;
end;

procedure Tfrm50_IssuerLinker.InitRightForm;
begin
  RightForm := Tfrm50_IssuerTop.Instance;
  Tfrm50_IssuerTop.Instance.Linker := Self;
end;

procedure Tfrm50_IssuerLinker.OnMoveToLeft;
begin
  // переносим запись
  oqToLeft.SetVariable('i_id', RightDataSet.FieldByName('T028_ID').AsFloat);
  oqToLeft.Execute;

  // для поиска
  LeftID := RightDataSet.FieldByName('T028_ID').AsFloat;
  RightDataSet.Next;
  RightID := RightDataSet.FieldByName('T028_ID').AsFloat;
end;

procedure Tfrm50_IssuerLinker.OnMoveToRight;
begin
  // переносим запись
  oqToRight.SetVariable('i_id', LeftDataSet.FieldByName('T028_ID').AsFloat);
  oqToRight.SetVariable('i_parent_id', odsLookup.FieldByName('T028_ID').AsFloat);
  oqToRight.Execute;

  // для поиска
  RightID := LeftDataSet.FieldByName('T028_ID').AsFloat;
  LeftDataSet.Next;
  LeftID := LeftDataSet.FieldByName('T028_ID').AsFloat;
end;

procedure Tfrm50_IssuerLinker.OnSelectItem;
begin
    // выбираем текущего эмитента
  oqSelect.SetVariable('i_id', LeftDataSet.FieldByName('T028_ID').AsFloat);
  if CheckBox1.Checked then
    oqSelect.SetVariable('ISBANK', 'Y')
  else
    oqSelect.SetVariable('ISBANK', 'N');
  oqSelect.Execute;

  // для поиска
  RightID := LeftDataSet.FieldByName('T028_ID').AsFloat;
  LeftDataSet.Next;
  LeftID := LeftDataSet.FieldByName('T028_ID').AsFloat;
end;

procedure Tfrm50_IssuerLinker.OnClearSelect;
begin
  // выбираем текущего эмитента
  oqClearSelect.SetVariable('i_id', odsLookup.FieldByName('T028_ID').AsFloat);
  oqClearSelect.Execute;

  // для поиска
  RightID := odsLookup.FieldByName('T028_ID').AsFloat;
  LeftID := odsLookup.FieldByName('T028_ID').AsFloat;
end;

class procedure Tfrm50_IssuerLinker.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm50_IssuerLinker) := AForm;
end;

procedure Tfrm50_IssuerLinker.RefreshLookUp;
var
  VIsBank: string;
begin
  if CheckBox1.Checked then
  begin
    VIsBank := 'Y';
  end else
  begin
    VIsBank := 'N';
  end;
  odsLookup.Close;
  //odsLookup.SetVariable('T036_ISBANK', VIsBank);
  odsLookup.Open;
end;

procedure Tfrm50_IssuerLinker.CheckBox1Click(Sender: TObject);
begin
  RefreshLookUp;
  lcName.KeyValue := odsLookup.FieldByName(MasterFieldName).AsFloat;
	RightForm.RefreshData('', Unassigned);
end;

procedure Tfrm50_IssuerLinker.RefreshAfter;
begin
  RefreshData('T028_SHOT_NAME', odsLookup['T028_SHOT_NAME']);
end;

end.
