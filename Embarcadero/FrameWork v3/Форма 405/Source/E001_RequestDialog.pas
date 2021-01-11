unit E001_RequestDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TE001_RequestDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    cbRecalc: TCheckBox;
    cbEmissSize: TCheckBox;
    cbRates: TCheckBox;
    cbBlm: TCheckBox;
    cbMvb: TCheckBox;
    cbReu: TCheckBox;
    cb405: TCheckBox;
    cb417: TCheckBox;
    cbMoe: TCheckBox;
    cb711: TCheckBox;
    cb415: TCheckBox;
    Bevel1: TBevel;
    cbSi: TCheckBox;
    Bevel2: TBevel;
    procedure cbRatesClick(Sender: TObject);
  private
    function GetRecalc: boolean;
    function GetEmissSize: boolean;
    function GetBlmRates: boolean;
    function GetMvbRates: boolean;
    function GetReuRates: boolean;
    function Get405Rates: boolean;
    function Get417Rates: boolean;
    function GetMoeRates: boolean;
    function Get711Rates: boolean;
    function Get415Rates: boolean;
    function GetSiData: boolean;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; AText: string); reintroduce;
    property AskEmissSize: boolean read GetEmissSize;
    property AskBlmRates: boolean read GetBlmRates;
    property AskMvbRates: boolean read GetMvbRates;
    property AskReuRates: boolean read GetReuRates;
    property Ask405Rates: boolean read Get405Rates;
    property Ask417Rates: boolean read Get417Rates;
    property AskMoeRates: boolean read GetMoeRates;
    property Ask711Rates: boolean read Get711Rates;
    property Ask415Rates: boolean read Get415Rates;
    property AskSiData: boolean read GetSiData;
    property Recalc: boolean read GetRecalc;
  end;

var
  E001_RequestDlg: TE001_RequestDlg;

implementation

{$R *.DFM}

{ TE001_RequestDlg }

constructor TE001_RequestDlg.Create(AOwner: TComponent; AText: string);
begin
  inherited Create(AOwner);
  Label1.Caption := AText;
  // пересчет ширины
  ClientWidth := Label1.Width + 24;
end;

function TE001_RequestDlg.GetEmissSize: boolean;
begin
  Result := cbEmissSize.Checked;
end;

function TE001_RequestDlg.GetBlmRates: boolean;
begin
  Result := cbBlm.Enabled and cbBlm.Checked;
end;

function TE001_RequestDlg.GetMvbRates: boolean;
begin
  Result := cbMvb.Enabled and cbMvb.Checked;
end;

function TE001_RequestDlg.GetReuRates: boolean;
begin
  Result := cbReu.Enabled and cbReu.Checked;
end;

function TE001_RequestDlg.Get405Rates: boolean;
begin
  Result := cb405.Enabled and cb405.Checked;
end;

function TE001_RequestDlg.Get417Rates: boolean;
begin
  Result := cb417.Enabled and cb417.Checked;
end;

function TE001_RequestDlg.GetMoeRates: boolean;
begin
  Result := cbMoe.Enabled and cbMoe.Checked;
end;

function TE001_RequestDlg.Get711Rates: boolean;
begin
  Result := cb711.Enabled and cb711.Checked;
end;

function TE001_RequestDlg.Get415Rates: boolean;
begin
  Result := cb415.Enabled and cb415.Checked;
end;

function TE001_RequestDlg.GetSiData: boolean;
begin
  Result := cbSi.Checked;
end;

function TE001_RequestDlg.GetRecalc: boolean;
begin
  Result := cbRecalc.Checked;
end;

procedure TE001_RequestDlg.cbRatesClick(Sender: TObject);
begin
  cbBlm.Enabled := cbRates.Checked;
  cbMvb.Enabled := cbRates.Checked;
  cbReu.Enabled := cbRates.Checked;
  cb405.Enabled := cbRates.Checked;
  cb417.Enabled := cbRates.Checked;
  cbMoe.Enabled := cbRates.Checked;
  cb711.Enabled := cbRates.Checked;
  cb415.Enabled := cbRates.Checked;
end;

end.
