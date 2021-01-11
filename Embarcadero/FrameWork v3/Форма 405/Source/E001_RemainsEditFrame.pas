unit E001_RemainsEditFrame;

interface

uses
  fm002_EditFrame, Oracle, Db, OracleData, Classes, ActnList, StdCtrls,
  DBCtrls, Buttons, Mask, ExtCtrls, Controls, Variants, System.Actions;

type
  TE001_RemainsEdit = class(TfmEdit)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edIssuer: TDBEdit;
    Label2: TLabel;
    edINN: TDBEdit;
    Label3: TLabel;
    edSecType: TDBEdit;
    Label4: TLabel;
    edISIN: TDBEdit;
    GroupBox7: TGroupBox;
    Label44: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    edMip_S_CNT: TDBEdit;
    edMip_S_USD: TDBEdit;
    ed405_O_CNT: TDBEdit;
    ed405_O_USD: TDBEdit;
    Label53: TLabel;
    Label56: TLabel;
    edPer_USD: TDBEdit;
    Label59: TLabel;
    edMip_E_CNT: TDBEdit;
    edMip_E_USD: TDBEdit;
    edComments: TDBMemo;
    Label9: TLabel;
    edEmissSizeS: TDBEdit;
    Bevel1: TBevel;
    Label8: TLabel;
    Label10: TLabel;
    edEmissSizeE: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ed711_CNT_S: TDBEdit;
    ed711_USD_S: TDBEdit;
    ed711_CNT_O: TDBEdit;
    ed711_USD_O: TDBEdit;
    ed711_CNT_E: TDBEdit;
    ed711_USD_E: TDBEdit;
    ed711_PRC_S: TDBEdit;
    ed711_PRC_E: TDBEdit;
    Label21: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label33: TLabel;
    odsRates: TOracleDataSet;
    odsRatesRATE_VALUE_USD_S: TFloatField;
    odsRatesRATE_DATE_S: TDateTimeField;
    odsRatesRATE_VALUE_USD_E: TFloatField;
    odsRatesRATE_DATE_E: TDateTimeField;
    dsRates: TDataSource;
    Label27: TLabel;
    edMip_O_CNT: TDBEdit;
    edMip_O_USD: TDBEdit;
    GroupBox3: TGroupBox;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Bevel4: TBevel;
    edRateS: TDBEdit;
    edRateO: TDBEdit;
    edRateE: TDBEdit;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit2: TDBEdit;
    Label36: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    oqRecalcRecord: TOracleQuery;
    ed405_C_CNT: TDBEdit;
    ed405_C_USD: TDBEdit;
    edOth_C_CNT: TDBEdit;
    edOth_C_USD: TDBEdit;
    oqCalcCNT: TOracleQuery;
    sbFix: TSpeedButton;
    actLock: TAction;
    actUnlock: TAction;
    procedure edRateSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRateSExit(Sender: TObject);
    procedure edRateEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRateEExit(Sender: TObject);
    procedure edOth_C_CNTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edOth_C_CNTExit(Sender: TObject);
    procedure edOth_C_USDExit(Sender: TObject);
    procedure edOth_C_USDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed405_C_CNTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed405_C_CNTExit(Sender: TObject);
    procedure ed405_C_USDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed405_C_USDExit(Sender: TObject);
    procedure edRateOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRateOExit(Sender: TObject);
    procedure actLockUpdate(Sender: TObject);
    procedure actLockExecute(Sender: TObject);
    procedure actUnlockUpdate(Sender: TObject);
    procedure actUnlockExecute(Sender: TObject);
  private
    procedure RecalcRecord;

    procedure RateS_Changed;
    procedure RateO_Changed;
    procedure RateE_Changed;
    procedure OthCNT_Changed;
    procedure OthUSD_Changed;
    procedure ed405_CNT_Changed;
    procedure ed405_USD_Changed;
    procedure Set_sbFix;
  public
    procedure SetDataSource(Value: TDataSource); override;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  E001_RemainsEdit: TE001_RemainsEdit;

implementation

uses Windows, Graphics;
//uses dm006_PictersData;

{$R *.DFM}

{ TE001_RemainsEdit }

procedure TE001_RemainsEdit.SetDataSource(Value: TDataSource);
begin
  inherited;

  edIssuer.ReadOnly := True;
  edIssuer.DataSource := Value;
  edINN.ReadOnly := True;
  edINN.DataSource := Value;
  edSecType.ReadOnly := True;
  edSecType.DataSource := Value;
  edISIN.ReadOnly := True;
  edISIN.DataSource := Value;
  edRateS.DataSource := Value;
  edRateO.DataSource := Value;
  edRateE.DataSource := Value;
  edEmissSizeS.ReadOnly := True;
  edEmissSizeS.DataSource := Value;
  edEmissSizeE.ReadOnly := True;
  edEmissSizeE.DataSource := Value;
  ed711_CNT_S.ReadOnly := True;
  ed711_CNT_S.DataSource := Value;
  ed711_CNT_O.ReadOnly := True;
  ed711_CNT_O.DataSource := Value;
  ed711_CNT_E.ReadOnly := True;
  ed711_CNT_E.DataSource := Value;
  ed711_USD_S.ReadOnly := True;
  ed711_USD_S.DataSource := Value;
  ed711_USD_O.ReadOnly := True;
  ed711_USD_O.DataSource := Value;
  ed711_USD_E.ReadOnly := True;
  ed711_USD_E.DataSource := Value;
  ed711_PRC_S.ReadOnly := True;
  ed711_PRC_S.DataSource := Value;
  ed711_PRC_E.ReadOnly := True;
  ed711_PRC_E.DataSource := Value;
  edMip_S_CNT.ReadOnly := True;
  edMip_S_CNT.DataSource := Value;
  edMip_S_USD.ReadOnly := True;
  edMip_S_USD.DataSource := Value;
  ed405_O_CNT.ReadOnly := True;
  ed405_O_CNT.DataSource := Value;
  ed405_O_USD.ReadOnly := True;
  ed405_O_USD.DataSource := Value;
  ed405_C_CNT.DataSource := Value;
  ed405_C_USD.DataSource := Value;
  edMip_O_CNT.ReadOnly := True;
  edMip_O_CNT.DataSource := Value;
  edMip_O_USD.ReadOnly := True;
  edMip_O_USD.DataSource := Value;
  edOth_C_CNT.DataSource := Value;
  edOth_C_USD.DataSource := Value;
  edPer_USD.ReadOnly := True;
  edPer_USD.DataSource := Value;
  edMip_E_CNT.ReadOnly := True;
  edMip_E_CNT.DataSource := Value;
  edMip_E_USD.ReadOnly := True;
  edMip_E_USD.DataSource := Value;
  edComments.DataSource := Value;
end;

procedure TE001_RemainsEdit.InitFrame(Sender: TObject);
var
  vRateSource: string;
begin
  odsRates.Close;
  odsRates.SetVariable('ISIN', DataSource.DataSet.FieldByName('T010_ISIN_TRANSL').AsString);
  vRateSource := DataSource.DataSet.FieldByName('T167_NAME').AsString  + ' ' +
                 DataSource.DataSet.FieldByName('T167_EXCHANGE').AsString  + ' Equity';
  odsRates.SetVariable('RATE_SOURCE', vRateSource);
  odsRates.SetVariable('T055_ID', DataSource.DataSet.FieldByName('T055_ID').AsFloat);
  odsRates.Open;

  if DataSource.DataSet.FieldByName('T170_E_FIXED').AsString = 'Y' then
    begin
    edOth_C_CNT.ReadOnly := True;
    edOth_C_CNT.Color := clBtnFace;
    edOth_C_USD.ReadOnly := True;
    edOth_C_USD.Color := clBtnFace;
    end
  else
    begin
    edOth_C_CNT.ReadOnly := False;
    edOth_C_CNT.Color := clWindow;
    edOth_C_USD.ReadOnly := False;
    edOth_C_USD.Color := clWindow;
    end;

  Set_sbFix;

  inherited;
end;

procedure TE001_RemainsEdit.edRateSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if edRateS.Field.AsString <> edRateS.Text then
      begin
      edRateS.Field.AsString := edRateS.Text;
      edRateS.Modified := True;
      end;

    RateS_Changed;
    end;
end;

procedure TE001_RemainsEdit.edRateSExit(Sender: TObject);
begin
  RateS_Changed;
end;

// изменение вх.котировки
procedure TE001_RemainsEdit.RateS_Changed;
begin
  // если изменено
  if edRateS.Modified then
    RecalcRecord;
end;

procedure TE001_RemainsEdit.edRateOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if edRateO.Field.AsString <> edRateO.Text then
      begin
      edRateO.Field.AsString := edRateO.Text;
      edRateO.Modified := True;
      end;

    RateO_Changed;
    end;
end;

procedure TE001_RemainsEdit.edRateOExit(Sender: TObject);
begin
  RateO_Changed;
end;

procedure TE001_RemainsEdit.RateO_Changed;
begin
  // если изменено
  if edRateO.Modified then
    RecalcRecord;
end;

procedure TE001_RemainsEdit.edRateEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if edRateE.Field.AsString <> edRateE.Text then
      begin
      edRateE.Field.AsString := edRateE.Text;
      edRateE.Modified := True;
      end;

    RateE_Changed;
    end;
end;

procedure TE001_RemainsEdit.edRateEExit(Sender: TObject);
begin
  RateE_Changed;
end;

// изменение исх.котировки
procedure TE001_RemainsEdit.RateE_Changed;
begin
  // если изменено
  if edRateE.Modified then
    RecalcRecord;
end;

procedure TE001_RemainsEdit.edOth_C_CNTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if edOth_C_CNT.Field.AsString <> edOth_C_CNT.Text then
      begin
      edOth_C_CNT.Field.AsString := edOth_C_CNT.Text;
      edOth_C_CNT.Modified := True;
      end;

    OthCNT_Changed;
    end;
end;

procedure TE001_RemainsEdit.edOth_C_CNTExit(Sender: TObject);
begin
  OthCNT_Changed;
end;

//  изменение прочие шт.
procedure TE001_RemainsEdit.OthCNT_Changed;
begin
  // если изменено
  if edOth_C_CNT.Modified then
    begin
    // прочие $ пересчитаются в процедуре
    // пересчитываем запись
    RecalcRecord;
    end;
end;

procedure TE001_RemainsEdit.edOth_C_USDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if edOth_C_USD.Field.AsString <> edOth_C_USD.Text then
      begin
      edOth_C_USD.Field.AsString := edOth_C_USD.Text;
      edOth_C_USD.Modified := True;
      end;

    OthUSD_Changed;
    end;
end;

procedure TE001_RemainsEdit.edOth_C_USDExit(Sender: TObject);
begin
  OthUSD_Changed;
end;

// изменение прочие $
procedure TE001_RemainsEdit.OthUSD_Changed;
begin
  // если изменено
  if edOth_C_USD.Modified then
    begin
    // изменяем прочие шт.
    oqCalcCNT.SetVariable('USD', edOth_C_USD.Field.Value);
    oqCalcCNT.SetVariable('RATE', edRateO.Field.Value);
    oqCalcCNT.Execute;
    edOth_C_CNT.Field.Value := oqCalcCNT.GetVariable('CNT');

    // пересчитываем запись
    RecalcRecord;
    end;
end;

procedure TE001_RemainsEdit.ed405_C_CNTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if ed405_C_CNT.Field.AsString <> ed405_C_CNT.Text then
      begin
      ed405_C_CNT.Field.AsString := ed405_C_CNT.Text;
      ed405_C_CNT.Modified := True;
      end;

    ed405_CNT_Changed;
    end;
end;

procedure TE001_RemainsEdit.ed405_C_CNTExit(Sender: TObject);
begin
  ed405_CNT_Changed;
end;

procedure TE001_RemainsEdit.ed405_CNT_Changed;
begin
  if ed405_C_CNT.Modified then
    RecalcRecord;
end;

procedure TE001_RemainsEdit.ed405_C_USDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
    if ed405_C_USD.Field.AsString <> ed405_C_USD.Text then
      begin
      ed405_C_USD.Field.AsString := ed405_C_USD.Text;
      ed405_C_USD.Modified := True;
      end;

    ed405_USD_Changed;
    end;
end;

procedure TE001_RemainsEdit.ed405_C_USDExit(Sender: TObject);
begin
  ed405_USD_Changed;
end;

procedure TE001_RemainsEdit.ed405_USD_Changed;
begin
  if ed405_C_USD.Modified then
    RecalcRecord;
end;

procedure TE001_RemainsEdit.RecalcRecord;
begin
  oqRecalcRecord.SetVariable('T170_E_FIXED', DataSource.DataSet.FieldByName('T170_E_FIXED').Value);
  oqRecalcRecord.SetVariable('T170_S_USD_RATE', DataSource.DataSet.FieldByName('T170_S_USD_RATE').Value);
  oqRecalcRecord.SetVariable('T170_O_USD_RATE', DataSource.DataSet.FieldByName('T170_O_USD_RATE').Value);
  oqRecalcRecord.SetVariable('T170_E_USD_RATE', DataSource.DataSet.FieldByName('T170_E_USD_RATE').Value);
  oqRecalcRecord.SetVariable('T170_O_405_CNT_SAL', DataSource.DataSet.FieldByName('T170_O_405_CNT_SAL').Value);
  oqRecalcRecord.SetVariable('T170_O_405_USD_SAL', DataSource.DataSet.FieldByName('T170_O_405_USD_SAL').Value);
  oqRecalcRecord.SetVariable('T170_O_DR_CNT_SAL', DataSource.DataSet.FieldByName('T170_O_DR_CNT_SAL').Value);
  oqRecalcRecord.SetVariable('T170_O_DR_USD_SAL', DataSource.DataSet.FieldByName('T170_O_DR_USD_SAL').Value);

  oqRecalcRecord.SetVariable('T170_O_405_CNT_E', DataSource.DataSet.FieldByName('T170_O_405_CNT_E').Value);
  oqRecalcRecord.SetVariable('T170_O_405_USD_E', DataSource.DataSet.FieldByName('T170_O_405_USD_E').Value);

  oqRecalcRecord.SetVariable('T170_S_170_CNT_REM', DataSource.DataSet.FieldByName('T170_S_170_CNT_REM').Value);
  oqRecalcRecord.SetVariable('T170_S_170_USD_REM', DataSource.DataSet.FieldByName('T170_S_170_USD_REM').Value);
  oqRecalcRecord.SetVariable('T170_O_OTH_CNT_E', DataSource.DataSet.FieldByName('T170_O_OTH_CNT_E').Value);
  oqRecalcRecord.SetVariable('T170_O_OTH_USD_E', DataSource.DataSet.FieldByName('T170_O_OTH_USD_E').Value);
  oqRecalcRecord.SetVariable('T170_E_170_CNT_REM', DataSource.DataSet.FieldByName('T170_E_170_CNT_REM').Value);
  oqRecalcRecord.SetVariable('T170_E_170_USD_REM', DataSource.DataSet.FieldByName('T170_E_170_USD_REM').Value);

  oqRecalcRecord.Execute;

  DataSource.DataSet.FieldByName('T170_S_170_CNT_REM').Value := oqRecalcRecord.GetVariable('T170_S_170_CNT_REM');
  if DataSource.DataSet.FieldByName('T170_S_170_CNT_REM').Value = 0 then
    DataSource.DataSet.FieldByName('T170_S_170_CNT_REM').Value := Null;

  DataSource.DataSet.FieldByName('T170_S_170_USD_REM').Value := oqRecalcRecord.GetVariable('T170_S_170_USD_REM');
  if DataSource.DataSet.FieldByName('T170_S_170_USD_REM').Value = 0 then
    DataSource.DataSet.FieldByName('T170_S_170_USD_REM').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_405_CNT_E').Value := oqRecalcRecord.GetVariable('T170_O_405_CNT_E');
  if DataSource.DataSet.FieldByName('T170_O_405_CNT_E').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_405_CNT_E').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_405_USD_E').Value := oqRecalcRecord.GetVariable('T170_O_405_USD_E');
  if DataSource.DataSet.FieldByName('T170_O_405_USD_E').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_405_USD_E').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_OTH_CNT_E').Value := oqRecalcRecord.GetVariable('T170_O_OTH_CNT_E');
  if DataSource.DataSet.FieldByName('T170_O_OTH_CNT_E').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_OTH_CNT_E').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_OTH_USD_E').Value := oqRecalcRecord.GetVariable('T170_O_OTH_USD_E');
  if DataSource.DataSet.FieldByName('T170_O_OTH_USD_E').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_OTH_USD_E').Value := Null;

  DataSource.DataSet.FieldByName('T170_E_170_CNT_REM').Value := oqRecalcRecord.GetVariable('T170_E_170_CNT_REM');
  if DataSource.DataSet.FieldByName('T170_E_170_CNT_REM').Value = 0 then
    DataSource.DataSet.FieldByName('T170_E_170_CNT_REM').Value := Null;

  DataSource.DataSet.FieldByName('T170_E_170_USD_REM').Value := oqRecalcRecord.GetVariable('T170_E_170_USD_REM');
  if DataSource.DataSet.FieldByName('T170_E_170_USD_REM').Value = 0 then
    DataSource.DataSet.FieldByName('T170_E_170_USD_REM').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_170_CNT_SAL').Value := oqRecalcRecord.GetVariable('T170_O_170_CNT_SAL');
  if DataSource.DataSet.FieldByName('T170_O_170_CNT_SAL').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_170_CNT_SAL').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_170_USD_SAL').Value := oqRecalcRecord.GetVariable('T170_O_170_USD_SAL');
  if DataSource.DataSet.FieldByName('T170_O_170_USD_SAL').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_170_USD_SAL').Value := Null;

  DataSource.DataSet.FieldByName('T170_O_PER_USD').Value := oqRecalcRecord.GetVariable('T170_O_PER_USD');
  if DataSource.DataSet.FieldByName('T170_O_PER_USD').Value = 0 then
    DataSource.DataSet.FieldByName('T170_O_PER_USD').Value := Null;
end;

procedure TE001_RemainsEdit.actLockUpdate(Sender: TObject);
begin
  actLock.Enabled := not DataSource.DataSet.IsEmpty;
end;

procedure TE001_RemainsEdit.actLockExecute(Sender: TObject);
begin
  DataSource.DataSet.FieldByName('T170_E_FIXED').AsString := 'Y';
  Set_sbFix;
end;

procedure TE001_RemainsEdit.actUnlockUpdate(Sender: TObject);
begin
  actLock.Enabled := not DataSource.DataSet.IsEmpty;
end;

procedure TE001_RemainsEdit.actUnlockExecute(Sender: TObject);
begin
  DataSource.DataSet.FieldByName('T170_E_FIXED').AsString := 'N';
  Set_sbFix;
end;

procedure TE001_RemainsEdit.Set_sbFix;
begin
  sbFix.Glyph := nil;
  if DataSource.DataSet.FieldByName('T170_E_FIXED').AsString = 'Y' then
    begin
    sbFix.Action := actUnLock;
    end
  else
    begin
    sbFix.Action := actLock;
    end;
  sbFix.Refresh;
end;

end.
