unit frm86_RemainsPortDayListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm80_CalcRemainsForm, Graphics,
  frm00_ParentForm;

type
  Tfrm86_RemainsPortDayList = class(Tfrm04_List, TCalcStepPage)
    odsListT099_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT099_DATE: TDateTimeField;
    odsListT099_CALC_STATE: TStringField;
    oqCheck: TOracleQuery;
    procedure FormCreate(Sender: TObject);
  private
  protected
    function GetRowFontColor: TColor; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    StepForward: boolean;
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);  
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    class function Instance: Tfrm86_RemainsPortDayList;
  end;

var
  frm86_RemainsPortDayList: Tfrm86_RemainsPortDayList;

implementation

uses
  frm85_RemainsPortListForm, untProgressThreads, untMessages;

{$R *.DFM}

{ Tfrm76_CalcQuotMItems }

class function Tfrm86_RemainsPortDayList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm86_RemainsPortDayList;
end;

class function Tfrm86_RemainsPortDayList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm86_RemainsPortDayList;
end;

class function Tfrm86_RemainsPortDayList.Instance: Tfrm86_RemainsPortDayList;
begin
  Result := Tfrm86_RemainsPortDayList(inherited Instance);
end;

class procedure Tfrm86_RemainsPortDayList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm86_RemainsPortDayList) := AForm;
end;

procedure Tfrm86_RemainsPortDayList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  DataSet.SetVariable('T030_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T030_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

function Tfrm86_RemainsPortDayList.GetRowFontColor: TColor;
begin
  if odsListT099_CALC_STATE.AsString = 'Y' then
  begin
    Result := inherited GetRowFontColor;
  end else
  begin
    Result := clRed;
  end;
end;

procedure Tfrm86_RemainsPortDayList.FormCreate(Sender: TObject);
begin
  inherited;

  StepForward := TRUE;
  Tfrm85_RemainsPortList.Instance.PlaceToWinControl(paRight);
end;

procedure Tfrm86_RemainsPortDayList.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm86_RemainsPortDayList.DoOnShowPage(const AMainForm: TForm);
var
  VThread: TPortfelCalcThread;
  VCount: Double;
begin
  // запускаем процедуру расчета портфеля
//  oqAdd.SetVariable('I_T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
//  oqAdd.Execute;

//  Tfrm87_Progress.ExecProc(Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID, Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);

  if StepForward then
    begin
    // Определяем количество записей по данному типу бумаги за отчетный период в T099_REMAINS_PORTF_STATE
    // с признаком 'N'
    oqCheck.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
    oqCheck.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
    oqCheck.Execute;
    VCount := oqCheck.GetVariable('O_RESULT');
    if VCount > 0 then
      begin
      if TAppMessages.ShowConfirmation('Будет произведен расчет портфеля.'+#10#13+'Процесс долгий.'+#10#13+'Выполнить?') then
	begin
	VThread := TPortfelCalcThread(TPortfelCalcThread.Init);
	VThread.T027_ID := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID;
	VThread.T055_ID := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID;
	try
	  VThread.Run;
	finally
	  VThread.Free;
	end;
      end;
    end;
  end;

  // смотрим данные
  RefreshAfterListChange;
end;

end.
