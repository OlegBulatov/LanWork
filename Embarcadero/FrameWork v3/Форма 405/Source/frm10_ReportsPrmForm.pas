unit frm10_ReportsPrmForm;

interface

uses
  frm03_DialogForm, Classes, Forms, ActnList, StdCtrls, Controls,
  ExtCtrls, Messages, fm02_PrmParentFrame, untParams, unt203_Reports,
  frm00_ParentForm;

type
  TParamValue = class(TCollectionItem)
  private
    FParamFrame: Tfm02_PrmParent;
    function GetParam: TRepParam;
    procedure SetParam(const Value: TRepParam);
  published
    destructor Destroy; override;
    property Param: TRepParam read GetParam write SetParam;
  end;

  TParamValues = class(TCollection)
  private
    FOwner: TWinControl;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TParamValue;
    procedure SetItem(Index: Integer; const Value: TParamValue);
  public
    constructor Create(Owner: TWinControl);
    function Add(AParam: TRepParam): TParamValue;
    property Items[Index: Integer]: TParamValue read GetItem write SetItem;
  end;

  Tfrm10_ReportsPrm = class(Tfrm03_Dialog)
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FReport: TReport;
    FParamValues: TParamValues;
    procedure DrawFrames;
  protected
    procedure IsNext(var AKey: Char);
    //
    function SaveChange: Boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    property Report: TReport read FReport write FReport;
    class function RetriveRepParams(AReport: TReport): Boolean;
  end;

var
  frm10_ReportsPrm: Tfrm10_ReportsPrm;

implementation

uses
  SysUtils, fm03_DateFrame, fm17_DirectionFrame, fm18_SecTypeFilterFrame,
  fm21_QuarterFrame, fm22_OperSHSFrame, fm23_OperBONFrame, fm24_ProcFrame,
  fm25_711QuarterFrame, fm26_711CodeFrame, fm27_SecRep31Frame, fm28_AllSHSFrame,
  fm28_SHSListFrame, fm29_BONListFrame, fm30_MonthFrame, fm30_MonthFromFrame,
  fm30_MonthToFrame, fm32_BONEmissListFrame, fm33_711BlueEmissFrame,
  fm34_BlueEmissListFrame, fm35_EmissGroupFrame, fm35_RepoFrame,
  fm37_DateTreeFrame, fm38_CurrUsdFrame, fm39_CurrFilterFrame, fm40_RezidTypeFrame,
  fm45_FinInterFrame, fm46_FinInterAllFrame, P001_EmissGroupFrame, P002_SectorFrame,
  P003_SecTypesFrame, P004_CountCodesFrame, fm44_SectorsRepListFrame, fm47_ShowRatesPrm;

{$R *.DFM}

{ TParamValue }

destructor TParamValue.Destroy;
begin
  if Assigned(FParamFrame) then FreeAndNil(FParamFrame);
  inherited;
end;

function TParamValue.GetParam: TRepParam;
begin
  Result := FParamFrame.Param;
end;

procedure TParamValue.SetParam(const Value: TRepParam);
begin
  FParamFrame.Param := Value;
end;

{ TParamValues }

function TParamValues.Add(AParam: TRepParam): TParamValue;
var
  VParamValueFrames: Tfm02_PrmParents;
  VForm: TForm;
begin
  Result := TParamValue(inherited Add);

  // создаем фрейм
  VParamValueFrames := Tfm02_PrmParents(FindClass(AParam.DisplayClassName));
  Result.FParamFrame := VParamValueFrames.Create(nil);
  Result.FParamFrame.Param := AParam;

  // помещаем фрейм вниз формы
  if not AParam.Visible then Exit;

  Result.FParamFrame.Top := FOwner.Height;
  Result.FParamFrame.Parent := FOwner;
  Result.FParamFrame.Align := alTop;

  VForm := TForm(FOwner);
  VForm.Height := VForm.Height + Result.FParamFrame.Height;
end;

constructor TParamValues.Create(Owner: TWinControl);
begin
  inherited Create(TParamValue);
  FOwner := Owner;
end;

function TParamValues.GetItem(Index: Integer): TParamValue;
begin
  Result := TParamValue(inherited Items[Index])
end;

function TParamValues.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TParamValues.SetItem(Index: Integer; const Value: TParamValue);
begin
  Items[Index].Assign(Value);
end;

{ Tfrm10_ReportsPrm }

class function Tfrm10_ReportsPrm.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm10_ReportsPrm;
end;

class function Tfrm10_ReportsPrm.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm10_ReportsPrm;
end;

function Tfrm10_ReportsPrm.SaveChange: Boolean;
var
  I: Integer;
begin
  // сохраняем значения параметров
  for I := 0 to FParamValues.Count - 1 do
  begin
    FParamValues.Items[I].FParamFrame.GetParamsValues;
  end;
  Result := True;
end;

class procedure Tfrm10_ReportsPrm.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm10_ReportsPrm) := AForm;
end;

procedure Tfrm10_ReportsPrm.FormCreate(Sender: TObject);
begin
  FParamValues := TParamValues.Create(Self);
end;

class function Tfrm10_ReportsPrm.RetriveRepParams(
  AReport: TReport): Boolean;
begin
  Result := False;

  // проверка
  if not Assigned(AReport) then Exit;
  if AReport.Params.Count = 0 then
  begin
    Result := True;
    Exit;
  end;

  // показываем форму
  frm10_ReportsPrm := Tfrm10_ReportsPrm.Create(nil);
  try
    frm10_ReportsPrm.FReport := AReport;
    frm10_ReportsPrm.DrawFrames;
    Result := frm10_ReportsPrm.ShowModal = mrOk;
  finally
    FreeAndNil(frm10_ReportsPrm);
  end;
end;

procedure Tfrm10_ReportsPrm.DrawFrames;
const
  FORM_CAPTION = '  Параметры отчета - %s';
var
  I: Integer;
begin
  Self.Caption := Format(FORM_CAPTION, [FReport.RepDisplayName]);

  for I := 0 to FReport.Params.Count - 1 do
  begin
    // если DisplayClassName = '' то пропускаем параметр
    if FReport.Params[I].DisplayClassName = '' then Continue;

    // добавляем параметр 
    with FParamValues.Add(FReport.Params[I]) do
    begin
      FParamFrame.SetParamsValues;
    end;
  end;
end;

procedure Tfrm10_ReportsPrm.IsNext(var AKey: Char);
begin
  // по Enter переходим на другой конрол
  if (AKey = #13) then
  begin
    AKey := #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrm10_ReportsPrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IsNext(Key);
end;

initialization
  RegisterClasses([
    Tfm03_Date,
//    Tfm03_PrmPeriod,
    Tfm17_Direction,
    Tfm18_SecTypeFilter,
    Tfm21_Quarter,
    Tfm22_OperSHS,
    Tfm23_OperBON,
    Tfm24_Proc,
    Tfm25_711Quarter,
    Tfm26_711Code,
    Tfm27_SecRep31,
    Tfm28_AllSHS,
    Tfm28_SHSList,
    Tfm29_BONList,
    Tfm30_Month,
    Tfm30_MonthFrom,
    Tfm30_MonthTo,
    Tfm32_BONEmissList,
    Tfm33_711BlueEmiss,
    Tfm34_BlueEmissList,
    Tfm35_EmissGroup,
    Tfm35_Repo,
    Tfm37_DateTree,
    Tfm38_CurrUsd,
    Tfm39_CurrFilter,
    Tfm40_RezidType,
    Tfm45_FinInter,
    Tfm46_FinInterAll,
    TP001_EmissGroup,
    TP002_Sector,
    TP003_SecTypes,
    TP004_CountCodes,
    TTfm44_SectorsRepList,
    Tfm47_ShowRates
    ]);
end.
