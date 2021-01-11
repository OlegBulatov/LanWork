unit frm52_ProgressForm;

interface

uses
  frm00_ParentForm, Db, OracleData, Oracle, ExtCtrls, Gauges, Controls,
  StdCtrls, Classes;
//  Windows, Messages, Graphics, Dialogs,

type
  Tfrm52_Progress = class(Tfrm00_Parent)
    Timer1: TTimer;
    btnOk: TButton;
    Label1: TLabel;
    oqStep: TOracleQuery;
    oqCancel: TOracleQuery;
    btnCancel: TButton;
    odsInit: TOracleDataSet;
    odsInitH008_ID: TFloatField;
    odsInitH008_CAPTION: TStringField;
    odsInitH008_STEP_PROC: TStringField;
    odsInitH008_DESC_PROC: TStringField;
    odsInitH008_COUNT_PROC: TStringField;
    odsInitH008_TOTAL_PROC: TStringField;
    odsInitH008_PROGRESS_PROC: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    ProgressBar1: TGauge;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    FH010_ID: Double;
    ProcTime: TDateTime;
    procedure Clear();
  protected
    procedure StepIt;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    procedure InitForm(H008_ID: Double; H010_ID: Double);
  end;

var
  frm52_Progress: Tfrm52_Progress;

implementation

uses SysUtils, Forms;
//dm005_MainData, untMessages, untProgressThreads;

{$R *.DFM}

{ Tfrm52_Progress }

procedure Tfrm52_Progress.Clear();
begin
  Label1.Caption := '';
  Label2.Caption := '';
  Label3.Caption := 'Прошло времени: 0:00';
  ProgressBar1.Visible := False;
  ProgressBar1.Progress := 0;
  ProgressBar1.MaxValue := 100;
  Timer1.Enabled := False;
  FH010_ID := 0;
  ProcTime := Now;
end;

procedure Tfrm52_Progress.InitForm(H008_ID: Double; H010_ID: Double);
const
  SQL_TEXT = 'BEGIN :STEP_CAPTION := %s(:H010_ID1); ' +
                    ':STEP_DESC := %s(:H010_ID2); ' +
                    ':STEP_CURR := %s(:H010_ID3); ' +
                    ':STEP_TOTAL := %s(:H010_ID4); ' +
                    ':STEP_PROGRESS := %s(:H010_ID5); END;';
begin
  Clear;

  odsInit.Close;
  odsInit.SetVariable('H008_ID', H008_ID);
  odsInit.Open;
  Caption := odsInitH008_CAPTION.AsString;
  oqStep.ClearVariables;
  oqStep.SQL.Text := format(SQL_TEXT, [odsInitH008_STEP_PROC.AsString, odsInitH008_DESC_PROC.AsString,
    odsInitH008_COUNT_PROC.AsString, odsInitH008_TOTAL_PROC.AsString, odsInitH008_PROGRESS_PROC.AsString]);
  oqStep.DeclareVariable('STEP_CAPTION', otString);
  oqStep.DeclareVariable('STEP_DESC', otString);
  oqStep.DeclareVariable('STEP_CURR', otFloat);
  oqStep.DeclareVariable('STEP_TOTAL', otFloat);
  oqStep.DeclareVariable('STEP_PROGRESS', otString);
  oqStep.DeclareVariable('H010_ID1', otFloat);
  oqStep.DeclareVariable('H010_ID2', otFloat);
  oqStep.DeclareVariable('H010_ID3', otFloat);
  oqStep.DeclareVariable('H010_ID4', otFloat);
  oqStep.DeclareVariable('H010_ID5', otFloat);

  odsInit.Close;

  FH010_ID := H010_ID;
end;

class function Tfrm52_Progress.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm52_Progress;
end;

class function Tfrm52_Progress.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm52_Progress;
end;

class procedure Tfrm52_Progress.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm52_Progress) := AForm;
end;

procedure Tfrm52_Progress.StepIt;
var
  total, curr: integer;
begin
  oqStep.SetVariable('H010_ID1', FH010_ID);
  oqStep.SetVariable('H010_ID2', FH010_ID);
  oqStep.SetVariable('H010_ID3', FH010_ID);
  oqStep.SetVariable('H010_ID4', FH010_ID);
  oqStep.SetVariable('H010_ID5', FH010_ID);
  oqStep.Execute;
  Label1.Caption := oqStep.GetVariable('STEP_CAPTION');
  Label2.Caption := oqStep.GetVariable('STEP_DESC');
  total := oqStep.GetVariable('STEP_TOTAL');
  curr := oqStep.GetVariable('STEP_CURR');
  ProgressBar1.Visible := (oqStep.GetVariable('STEP_PROGRESS') = 'Y');
  ProgressBar1.MaxValue := total;
  ProgressBar1.Progress := curr;
end;

procedure Tfrm52_Progress.Timer1Timer(Sender: TObject);
var CurTime: TDateTime;
begin
  // обновляем форму
  CurTime := Now;
  Label3.Caption := Format('Прошло времени: %s', [FormatDateTime('N:SS', CurTime - ProcTime)]);
  StepIt;
  Application.ProcessMessages;
end;

end.
