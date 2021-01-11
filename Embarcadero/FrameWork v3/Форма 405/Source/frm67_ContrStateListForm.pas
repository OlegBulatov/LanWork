unit frm67_ContrStateListForm;

interface

uses
  frm00_ParentForm, Db, OracleData, Oracle, StdCtrls, DBCtrls,
  Controls, ComCtrls, DBCGrids, Classes, ExtCtrls;
//  Windows, Messages, Graphics, Dialogs,
//  ActnList;

type
  Tfrm67_ContrStateList = class(Tfrm00_Parent)
    dsList: TDataSource;
    Panel1: TPanel;
    oqUpdate: TOracleQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    odsList: TOracleDataSet;
    DBCheckBox1: TDBCheckBox;
    DBMemo6: TDBMemo;
    odsListT070_ID: TFloatField;
    odsListT068_DESC: TStringField;
    odsListT070_DESC: TStringField;
    odsListT070_POINT: TFloatField;
    odsListT070_YES_NO: TStringField;
    odsListTOTAL_SUM: TFloatField;
    Panel3: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    Panel5: TPanel;
    Panel6: TPanel;
    HeaderControl1: THeaderControl;
    Label4: TLabel;
    Label5: TLabel;
    odsListT068_ID: TFloatField;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    btnSetFict: TButton;
    btnSetReal: TButton;
    Label7: TLabel;
    Label8: TLabel;
    odsListT071_ID: TFloatField;
    btnRecalc: TButton;
    btnCansel: TButton;
    odsListT068_NUM: TIntegerField;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure odsListApplyRecord(Sender: TOracleDataSet;
      Action: Char; var Applied: Boolean; var NewRowId: String);
    procedure btnRecalcClick(Sender: TObject);
    procedure btnCanselClick(Sender: TObject);
    procedure btnSetRealClick(Sender: TObject);
    procedure btnSetFictClick(Sender: TObject);
  private
    FT071_ID: Double;
    procedure ApplyChange;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    property T071_ID: Double write FT071_ID;
    //
    class function Instance: Tfrm67_ContrStateList;
  end;

var
  frm67_ContrStateList: Tfrm67_ContrStateList;

implementation

uses SysUtils, Forms, dm005_MainData, frm42_ClassificationForm,
  frm41_ContrGrpStateForm;

//untMessages;

{$R *.DFM}

{ Tfrm67_ContrStateList }

class function Tfrm67_ContrStateList.Instance: Tfrm67_ContrStateList;
begin
  Result := Tfrm67_ContrStateList(inherited Instance);
end;

class function Tfrm67_ContrStateList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm67_ContrStateList;
end;

class function Tfrm67_ContrStateList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm67_ContrStateList;
end;

class procedure Tfrm67_ContrStateList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm67_ContrStateList) := AForm;
end;

procedure Tfrm67_ContrStateList.FormResize(Sender: TObject);
begin
  HeaderControl1.Sections[2].Width := DBMemo3.Width;
end;

procedure Tfrm67_ContrStateList.FormShow(Sender: TObject);
const
  CAPTION_01 = '%s (ИНН: %s)';
  CAPTION_02 = '%s (Страна: %s)';
var
  VBalls: Double;
begin
  // рисуем заголовок
  Label8.Caption := Format(CAPTION_01, [
    Tfrm42_Classification(Tfrm42_Classification.Instance).ResName,
    Tfrm42_Classification(Tfrm42_Classification.Instance).ResINN
    ]);

  // смотрим данные
  odsList.Close;
  odsList.SetVariable('T071_ID', FT071_ID);
  odsList.Open;

  VBalls := odsListTOTAL_SUM.AsFloat + Tfrm42_Classification(Tfrm42_Classification.Instance).RezidBalls + Tfrm42_Classification(Tfrm42_Classification.Instance).KOBalls;
  Label5.Caption := FloatToStr(VBalls);

  FormResize(Self);
end;

procedure Tfrm67_ContrStateList.odsListApplyRecord(
  Sender: TOracleDataSet; Action: Char; var Applied: Boolean;
  var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  // DoInsert, DoEdit, DoDelete
  Applied := True;
end;

procedure Tfrm67_ContrStateList.btnRecalcClick(Sender: TObject);
begin
  ApplyChange;
  odsList.Close;
  odsList.SetVariable('T071_ID', FT071_ID);
  odsList.Open;
end;

procedure Tfrm67_ContrStateList.ApplyChange;
var
  VOldCursor: TCursor;
begin
  // Проставляем для КО признак что её нужно пересчитать
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    odsList.First;
    while not odsList.Eof do
    begin
      // запускаем расчет
      oqUpdate.SetVariable('I_T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
      oqUpdate.SetVariable('I_T070_ID', odsListT070_ID.AsFloat);
      oqUpdate.SetVariable('I_T070_YES_NO_ID', odsListT070_YES_NO.AsString);
      oqUpdate.SetVariable('I_T070_DESC', odsListT070_DESC.AsString);
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

procedure Tfrm67_ContrStateList.btnCanselClick(Sender: TObject);
begin
  odsList.Close;
  odsList.SetVariable('T071_ID', FT071_ID);
  odsList.Open;
end;

procedure Tfrm67_ContrStateList.btnSetRealClick(Sender: TObject);
begin
  ApplyChange;
  frm41_ContrGrpState.actReal.Execute;

  odsList.Close;
  odsList.SetVariable('T071_ID', FT071_ID);
  odsList.Open;
end;

procedure Tfrm67_ContrStateList.btnSetFictClick(Sender: TObject);
begin
  ApplyChange;
  frm41_ContrGrpState.actFic.Execute;

  odsList.Close;
  odsList.SetVariable('T071_ID', FT071_ID);
  odsList.Open;
end;

end.
