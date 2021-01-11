unit frm51_EmisLinkerForm;

interface

uses
  frm27_LinkerForm, Db, ExtCtrls, Oracle, Classes, ActnList, OracleData,
  fm31_FilterFrame, Forms, fmSeach, DBCtrls, Buttons, Grids, DBGrids,
  xxxDBGrid, StdCtrls, Controls, frm00_ParentForm, Variants, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, ToolWin,

type
  Tfrm51_EmisLinker = class(Tfrm27_Linker)
    Bevel1: TBevel;
    lcSecType: TDBLookupComboBox;
    lcIssuers: TDBLookupComboBox;
    Label4: TLabel;
    odsSecType: TOracleDataSet;
    dsSecType: TDataSource;
    odsIssuers: TOracleDataSet;
    dsIssuers: TDataSource;
    odsIssuersT028_ID: TFloatField;
    odsIssuersT028_SHOT_NAME: TStringField;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    odsSecTypeT028_ID: TFloatField;
    odsLookupT030_ID: TFloatField;
    odsLookupT026_ID: TFloatField;
    odsLookupT026_SEC_REGN: TStringField;
    odsLookupT028_PARENT_ID: TFloatField;
    odsLookupT027_ID: TFloatField;
    SpeedButton7: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure lcIssuersCloseUp(Sender: TObject);
    procedure lcIssuersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcSecTypeCloseUp(Sender: TObject);
    procedure lcSecTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure odsIssuersAfterScroll(DataSet: TDataSet);
  private
    procedure RefreshIssures;
    procedure RefreshSecType;
    procedure RefreshSecRegn;
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
    procedure SetLookup; override;

    procedure RefreshLookUp; override;
    procedure RefreshAfter; override;
    //
  end;

var
  frm51_EmisLinker: Tfrm51_EmisLinker;

implementation

uses
  frm51_EmisBottomForm, frm51_EmisTopForm;

{$R *.DFM}

{ Tfrm51_EmisLinker }

function Tfrm51_EmisLinker.GetMasterFieldName: string;
begin
  Result := 'T030_ID';
end;

class function Tfrm51_EmisLinker.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm51_EmisLinker;
end;

class function Tfrm51_EmisLinker.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm51_EmisLinker;
end;

procedure Tfrm51_EmisLinker.InitLeftForm;
begin
  LeftForm := Tfrm51_EmisBottom.Instance;
  Tfrm51_EmisBottom.Instance.Linker := Self;
end;

procedure Tfrm51_EmisLinker.InitRightForm;
begin
  RightForm := Tfrm51_EmisTop.Instance;
  Tfrm51_EmisTop.Instance.Linker := Self;
end;

procedure Tfrm51_EmisLinker.OnMoveToLeft;
begin
  // переносим запись
  oqToLeft.SetVariable('i_id', RightDataSet.FieldByName('T030_ID').AsFloat);
  oqToLeft.Execute;

  // для поиска
  LeftID := RightDataSet.FieldByName('T030_ID').AsFloat;
  RightDataSet.Next;
  RightID := RightDataSet.FieldByName('T030_ID').AsFloat;
end;

procedure Tfrm51_EmisLinker.OnMoveToRight;
begin
  // переносим запись
  oqToRight.SetVariable('i_id', LeftDataSet.FieldByName('T030_ID').AsFloat);
  oqToRight.SetVariable('i_parent_id', odsLookup.FieldByName('T030_ID').AsFloat);
  oqToRight.Execute;

  // для поиска
  RightID := LeftDataSet.FieldByName('T030_ID').AsFloat;
  LeftDataSet.Next;
  LeftID := LeftDataSet.FieldByName('T030_ID').AsFloat;
end;

procedure Tfrm51_EmisLinker.OnSelectItem;
begin
  // выбираем текущего эмитента
  oqSelect.SetVariable('i_id', LeftDataSet.FieldByName('T030_ID').AsFloat);
  oqSelect.Execute;

  // для поиска
  RightID := oqSelect.GetVariable('O_PARENT_ID');
  LeftDataSet.Next;
  LeftID := LeftDataSet.FieldByName('T030_ID').AsFloat;
end;

procedure Tfrm51_EmisLinker.OnClearSelect;
begin
  // выбираем текущего эмитента
  oqClearSelect.SetVariable('i_id', odsLookup.FieldByName('T030_ID').AsFloat);
  oqClearSelect.Execute;

  // для поиска
  RightID := odsLookup.FieldByName('T030_ID').AsFloat;
  LeftID := odsLookup.FieldByName('T030_ID').AsFloat;
end;

class procedure Tfrm51_EmisLinker.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm51_EmisLinker) := AForm;
end;

procedure Tfrm51_EmisLinker.FormShow(Sender: TObject);
begin
  if odsIssuers.Active then Exit;

  RefreshIssures;
end;

procedure Tfrm51_EmisLinker.lcIssuersCloseUp(Sender: TObject);
begin
  //RefreshSecType;
end;

procedure Tfrm51_EmisLinker.lcIssuersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  (*
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcIssuersCloseUp(nil);
  end;
  *)
end;

procedure Tfrm51_EmisLinker.lcSecTypeCloseUp(Sender: TObject);
begin
  RefreshSecRegn;
end;

procedure Tfrm51_EmisLinker.lcSecTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcSecTypeCloseUp(nil);
  end;
end;

procedure Tfrm51_EmisLinker.RefreshSecRegn;
begin
  odsLookup.Close;
  odsLookup.SetVariable('T027_ID', odsSecType.FieldByName('T027_ID').AsFloat);
  odsLookup.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsLookup.Open;
  lcName.KeyValue := odsLookup.FieldByName(MasterFieldName).AsFloat;

  RightForm.RefreshData('', Unassigned);
end;

procedure Tfrm51_EmisLinker.RefreshSecType;
begin
  odsSecType.Close;
  odsSecType.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsSecType.Open;
  odsSecType.First;
  lcSecType.KeyValue := odsSecType.FieldByName(lcSecType.KeyField).AsFloat;

  RefreshSecRegn;
end;

procedure Tfrm51_EmisLinker.SpeedButton7Click(Sender: TObject);
begin
  RefreshIssures;
end;

procedure Tfrm51_EmisLinker.RefreshIssures;
begin
  odsIssuers.Close;
  odsIssuers.Open;
  lcIssuers.KeyValue := odsIssuers.FieldByName(lcIssuers.KeyField).AsFloat;

  RefreshSecType;
end;

procedure Tfrm51_EmisLinker.odsIssuersAfterScroll(DataSet: TDataSet);
begin
  if not lcIssuers.ListVisible then
  begin
    RefreshSecType;
    LeftForm.RefreshData('', Unassigned);
  end;
end;

procedure Tfrm51_EmisLinker.RefreshLookUp;
begin
  inherited;

end;

procedure Tfrm51_EmisLinker.RefreshAfter;
begin
  RefreshData('T028_SHOT_NAME', odsIssuers['T028_SHOT_NAME']);
end;

procedure Tfrm51_EmisLinker.SetLookup;
begin
 ActLookup:=lcIssuers;
end;

end.
