unit M01_fMaster;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ComCtrls, StdCtrls, ExtCtrls, ActnList, M02_fMasterItem;

type
  TfmMMaster = class(TfmParent)
    pcSteps: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    actFinish: TAction;
    Button1: TButton;
    procedure actBackExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject); virtual;
    procedure actNextUpdate(Sender: TObject); virtual;
    procedure actFinishExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
  private
    function GetSteps(Index: Integer): TfmMMasterItem;
    function GetActiveStep: TfmMMasterItem;
  protected
    procedure DoFinish; virtual;
  public
    procedure InitFrame(Sender: TObject); override;
    //
    property Steps[Index: Integer]: TfmMMasterItem read GetSteps; default;
    property ActiveStep: TfmMMasterItem read GetActiveStep;
  end;

var
  fmMMaster: TfmMMaster;

implementation

{$R *.DFM}

procedure TfmMMaster.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    ActiveStep.DoOnClosePage;
    Steps[pcSteps.ActivePageIndex - 1].DoOnShowPage;
    pcSteps.ActivePageIndex := pcSteps.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TfmMMaster.actNextExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на следующею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    ActiveStep.DoOnClosePage;
    Steps[pcSteps.ActivePageIndex + 1].DoOnShowPage;
    pcSteps.ActivePageIndex := pcSteps.ActivePageIndex + 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function TfmMMaster.GetActiveStep: TfmMMasterItem;
begin
  Result := Steps[pcSteps.ActivePageIndex];
end;

function TfmMMaster.GetSteps(Index: Integer): TfmMMasterItem;
var
  I: Integer;
  VComp: TComponent;
begin
  Result := nil;
  for I := 0 to pcSteps.Pages[Index].ControlCount - 1 do
  begin
    VComp := pcSteps.Pages[Index].Controls[I];
    if VComp is TfmMMasterItem then
    begin
      Result := TfmMMasterItem(VComp);
      Break;
    end;
  end;
end;

procedure TfmMMaster.actBackUpdate(Sender: TObject);
begin
  actBack.Enabled := pcSteps.ActivePageIndex > 0;
end;

procedure TfmMMaster.actNextUpdate(Sender: TObject);
begin
  actNext.Enabled := pcSteps.ActivePageIndex < (pcSteps.PageCount - 1);
end;

procedure TfmMMaster.InitFrame(Sender: TObject);
begin
  inherited;

  if pcSteps.PageCount > 0 then
  begin
    pcSteps.ActivePageIndex := 0;
    ActiveStep.DoOnShowPage;
  end;
end;

procedure TfmMMaster.actFinishExecute(Sender: TObject);
begin
  DoFinish;
end;

procedure TfmMMaster.actFinishUpdate(Sender: TObject);
begin
  actFinish.Enabled := pcSteps.ActivePageIndex = (pcSteps.PageCount - 1);
end;

procedure TfmMMaster.DoFinish;
begin
  ActiveStep.DoOnClosePage;
  pcSteps.ActivePageIndex := 0;
  ActiveStep.DoOnShowPage;
end;

end.
