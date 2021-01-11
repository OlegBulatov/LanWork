unit fm027_DoubleListF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, ActnList, Buttons, ExtCtrls, fm008_DBObjectFrame,
  OracleData, xxxDBGrid, StdCtrls, Db;

type
  TfmDoubleList = class(TfmDBObject)
    sbToRight: TSpeedButton;
    sbAllToRight: TSpeedButton;
    sbAllToLeft: TSpeedButton;
    sbToLeft: TSpeedButton;
    paLeft: TPanel;
    paRight: TPanel;
    paCenter: TPanel;
    paButtons: TPanel;
    paTopLeft: TPanel;
    Label3: TLabel;
    paTopRight: TPanel;
    Label1: TLabel;
    procedure FrameResize(Sender: TObject);
  private
    FLeftFrame: TfmGrid;
    FRightFrame: TfmGrid;
    function GetLeftDataSet: TOracleDataSet;
    function GetLeftDBGrid: TxxxDBGrid;
    function GetRightDataSet: TOracleDataSet;
    function GetRightDBGrid: TxxxDBGrid;
    function GetLeftID: Double;
    function GetRightID: Double;
    procedure SetLeftID(const Value: Double);
    procedure SetRightID(const Value: Double);
  protected
    procedure LinkActions; override;
  public
    //
    procedure InitFrame(Sender: TObject);  override;
    //  
    property LeftFrame: TfmGrid read FLeftFrame write FLeftFrame;
    property RightFrame: TfmGrid read FRightFrame write FRightFrame;
    //
    property LeftDataSet: TOracleDataSet read GetLeftDataSet;
    property RightDataSet: TOracleDataSet read GetRightDataSet;
    //
    property LeftDBGrid: TxxxDBGrid read GetLeftDBGrid;
    property RightDBGrid: TxxxDBGrid read GetRightDBGrid;
    //
    property LeftID: Double read GetLeftID write SetLeftID;
    property RightID: Double read GetRightID write SetRightID;
  end;

var
  fmDoubleList: TfmDoubleList;

implementation

uses dm006_PictersData;

{$R *.DFM}

{ TfmDoubleList }

function TfmDoubleList.GetLeftDataSet: TOracleDataSet;
begin
  // *** for not compiler warning ***
  Result := nil;

//  Result := TOracleDataSet(odsList.DataSet);
end;

function TfmDoubleList.GetLeftDBGrid: TxxxDBGrid;
begin
  Result := LeftFrame.xxxDBGrid;
end;

function TfmDoubleList.GetRightDataSet: TOracleDataSet;
begin
  // *** for not compiler warning ***
  Result := nil;

//  Result := TOracleDataSet(RightFrame.DataList.DataSet);
end;

function TfmDoubleList.GetRightDBGrid: TxxxDBGrid;
begin
  Result := RightFrame.xxxDBGrid;
end;

procedure TfmDoubleList.FrameResize(Sender: TObject);
begin
  // панель по центру ширины
  paLeft.Width := (Width - paButtons.Width) div 2;
  // кнопки по центру высоты
  paButtons.Top := (paCenter.Height - paButtons.Height) div 2;
end;

procedure TfmDoubleList.LinkActions;
begin
{
  sbToRight.Action :=  TactDoubleList(Actions).actMoveToRight;
  sbAllToRight.Action := TactDoubleList(Actions).actMoveAllToRight;
  sbAllToLeft.Action := TactDoubleList(Actions).actMoveAllToLeft;
  sbToLeft.Action := TactDoubleList(Actions).actMoveToLeft;
}
end;

function TfmDoubleList.GetLeftID: Double;
begin
  // *** for not compiler warning ***
  Result := 0;

//  Result := FLeftFrame.DataList.OldKeyFieldValue;
end;

function TfmDoubleList.GetRightID: Double;
begin
  // *** for not compiler warning ***
  Result := 0;

//  Result := FRightFrame.DataList.OldKeyFieldValue;
end;

procedure TfmDoubleList.SetLeftID(const Value: Double);
begin
//  FLeftFrame.DataList.OldKeyFieldValue := Value;
end;

procedure TfmDoubleList.SetRightID(const Value: Double);
begin
//  FRightFrame.DataList.OldKeyFieldValue := Value;
end;

procedure TfmDoubleList.InitFrame(Sender: TObject);
begin
  inherited;

  FLeftFrame.InitFrame(Sender);
  FRightFrame.InitFrame(Sender);
end;

end.
