unit frm66_KOStateListForm;

interface

uses
  frm00_ParentForm, frm42_ClassificationForm, Oracle, Db, OracleData,
  ComCtrls, StdCtrls, DBCtrls, DBCGrids, Controls, ExtCtrls, Classes, Forms;
//  Windows, Messages, Graphics, Dialogs,
//  Mask;

type
  Tfrm66_KOStateList = class(Tfrm00_Parent, TStepPage)
    odsList: TOracleDataSet;
    dsList: TDataSource;
    odsListT069_ID: TFloatField;
    odsListT067_ID: TFloatField;
    odsListT067_DESC: TStringField;
    odsListT069_DESC: TStringField;
    odsListT069_POINT: TFloatField;
    odsListT069_YES_NO: TStringField;
    Panel1: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    odsListTOTAL_SUM: TFloatField;
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
    odsListT002_ID: TFloatField;
    btnRecalc: TButton;
    btnCansel: TButton;
    oqUpdate: TOracleQuery;
    procedure FormShow(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure btnRecalcClick(Sender: TObject);
    procedure btnCanselClick(Sender: TObject);
    procedure odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
  private
    procedure ApplyChange;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
  end;

var
  frm66_KOStateList: Tfrm66_KOStateList;

implementation

uses SysUtils, dm005_MainData;

{$R *.DFM}

{ Tfrm66_KOStateList }

class function Tfrm66_KOStateList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm66_KOStateList;
end;

class function Tfrm66_KOStateList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm66_KOStateList;
end;

class procedure Tfrm66_KOStateList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm66_KOStateList) := AForm;
end;

procedure Tfrm66_KOStateList.DoOnShowPage(const AMainForm: TForm);
const
  CAPTION = '%s (рег. номер: %s)';
begin
  // рисуем заголовок
  Label2.Caption := Format(CAPTION, [
    Tfrm42_Classification(AMainForm).BankName,
    Tfrm42_Classification(AMainForm).Regn
    ]);

  // запускаем расчет
{  oqUpdate.SetVariable('I_T002_ID', Tfrm42_Classification(AMainForm).T002_ID);
  oqUpdate.SetVariable('I_T055_ID', Tfrm42_Classification(AMainForm).T055_ID);
  oqUpdate.SetVariable('I_REGN', Tfrm42_Classification(AMainForm).Regn);
  oqUpdate.Execute;}
  
  // смотрим данные
  odsList.Close;
  odsList.SetVariable('T002_ID', Tfrm42_Classification(AMainForm).T002_ID);
  odsList.Open;
end;

procedure Tfrm66_KOStateList.DoOnClosePage(const AMainForm: TForm);
begin

end;

procedure Tfrm66_KOStateList.FormShow(Sender: TObject);
const
  CAPTION = '%s (рег. номер: %s)';
begin
  // рисуем заголовок
  Label2.Caption := Format(CAPTION, [
    Tfrm42_Classification(Tfrm42_Classification.Instance).BankName,
    Tfrm42_Classification(Tfrm42_Classification.Instance).Regn
    ]);

  // смотрим данные
  odsList.Close;
  odsList.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  odsList.Open;
end;

procedure Tfrm66_KOStateList.Panel3Resize(Sender: TObject);
begin
  HeaderControl1.Sections[2].Width := DBMemo3.Width;
end;

procedure Tfrm66_KOStateList.btnRecalcClick(Sender: TObject);
begin
  ApplyChange;
  odsList.Close;
  odsList.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  odsList.Open;
end;

procedure Tfrm66_KOStateList.btnCanselClick(Sender: TObject);
begin
  odsList.Close;
  odsList.SetVariable('T002_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T002_ID);
  odsList.Open;
end;

procedure Tfrm66_KOStateList.ApplyChange;
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
        oqUpdate.SetVariable('I_T069_ID', odsListT069_ID.AsFloat);
        oqUpdate.SetVariable('I_T069_YES_NO_ID', odsListT069_YES_NO.AsString);
        oqUpdate.SetVariable('I_T069_DESC', odsListT069_DESC.AsString);
        oqUpdate.Execute;

        odsList.Next;
      end;

      dmMain.Commit;
      Screen.Cursor:= VOldCursor;
    except on e:Exception do
      begin
        dmMain.Rollback;
        Screen.Cursor:= VOldCursor;
        raise;
      end;
    end;
end;

procedure Tfrm66_KOStateList.odsListApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  // DoInsert, DoEdit, DoDelete
  Applied := True;
end;

end.
