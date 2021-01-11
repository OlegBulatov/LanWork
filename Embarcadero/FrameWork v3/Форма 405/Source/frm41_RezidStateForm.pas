unit frm41_RezidStateForm;

interface

uses
  frm00_ParentForm, Oracle, Db, OracleData, ComCtrls, StdCtrls, DBCtrls,
  DBCGrids, Controls, ExtCtrls, Classes;
//  Windows, Messages, Graphics, Dialogs,
//  Mask, ActnList, frm41_RezidGrpForm;

type
  Tfrm41_RezidState = class(Tfrm00_Parent)
    odsList: TOracleDataSet;
    dsList: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    DBMemo6: TDBMemo;
    HeaderControl1: THeaderControl;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    odsListT102_ID: TFloatField;
    odsListT101_ID: TFloatField;
    odsListT101_DESC: TStringField;
    odsListT102_DESC: TStringField;
    odsListT102_POINT: TFloatField;
    odsListT102_YES_NO: TStringField;
    odsListTOTAL_SUM: TFloatField;
    oqUpdate: TOracleQuery;
    odsListT103_ID: TFloatField;
    btnCansel: TButton;
    btnRecalc: TButton;
    odsListT101_NUMBER: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure btnRecalcClick(Sender: TObject);
    procedure btnCanselClick(Sender: TObject);
  private
    FT103_ID: Double;
    procedure ApplyChange;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    class function Instance: Tfrm41_RezidState;
    //
    property T103_ID: Double write FT103_ID;
  end;

var
  frm41_RezidState: Tfrm41_RezidState;

implementation

uses SysUtils, Forms, dm005_MainData, frm42_ClassificationForm;

{$R *.DFM}

{ Tfrm41_RezidState }

class function Tfrm41_RezidState.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm41_RezidState;
end;

class function Tfrm41_RezidState.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm41_RezidState;
end;

class procedure Tfrm41_RezidState.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm41_RezidState) := AForm;
end;

procedure Tfrm41_RezidState.FormShow(Sender: TObject);
begin
  Label2.Caption := Tfrm42_Classification(Tfrm42_Classification.Instance).T012_NAME;

  // смотрим данные
  odsList.Close;
  odsList.SetVariable('T103_ID', FT103_ID);
  odsList.Open;
end;

procedure Tfrm41_RezidState.Panel3Resize(Sender: TObject);
begin
  HeaderControl1.Sections[2].Width := DBMemo3.Width;
end;

class function Tfrm41_RezidState.Instance: Tfrm41_RezidState;
begin
  Result := Tfrm41_RezidState(inherited Instance);
end;

procedure Tfrm41_RezidState.ApplyChange;
var
  VOldCursor: TCursor;
begin
  // Проставляем для резидента признак что его нужно пересчитать
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    odsList.First;
    while not odsList.Eof do
    begin
      // запускаем расчет
      oqUpdate.SetVariable('I_T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
      oqUpdate.SetVariable('I_T102_ID', odsListT102_ID.AsFloat);
      oqUpdate.SetVariable('I_T102_YES_NO_ID', odsListT102_YES_NO.AsString);
      oqUpdate.SetVariable('I_T102_DESC', odsListT102_DESC.AsString);
      oqUpdate.Execute;

      odsList.Next;
    end;

    dmMain.Commit;
    Screen.Cursor:= VOldCursor;
  except on E:Exception do
    begin
      Screen.Cursor:= VOldCursor;
      dmMain.Rollback;
      raise;
    end;
  end;
end;

procedure Tfrm41_RezidState.odsListApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  // DoInsert, DoEdit, DoDelete
  Applied := True;
end;

procedure Tfrm41_RezidState.btnRecalcClick(Sender: TObject);
begin
  ApplyChange;
  odsList.Close;
  odsList.SetVariable('T103_ID', FT103_ID);
  odsList.Open;
end;

procedure Tfrm41_RezidState.btnCanselClick(Sender: TObject);
begin
  odsList.Close;
  odsList.SetVariable('T103_ID', FT103_ID);
  odsList.Open;
end;

end.
