unit fm021_CheckBoxFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fm008_DbObjectFrame, ActnList, fm001_Composite, Db, OracleData,
  System.Actions;

type
  TfmCheckBox = class(TfmDBObject)
    lbCaption: TLabel;
    cb: TCheckBox;
    procedure cbClick(Sender: TObject);
    procedure lbCaptionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FCheckedValue: Variant;
    FUnCheckedValue: Variant;
  protected
    procedure SetEnabled(Value: Boolean); override;

    function GetIsChecked: Boolean; virtual;
    function GetKeyValue: Variant; virtual;
    procedure SetKeyValue(const Value: Variant); virtual;

    procedure ChangeState; virtual;
  public
    property IsChecked: Boolean read GetIsChecked;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    // �������� ������� ���� - ����������
    property KeyValue: Variant read GetKeyValue write SetKeyValue;
    //
    property CheckedValue: Variant read FCheckedValue write FCheckedValue;
    property UnCheckedValue: Variant read FUnCheckedValue write FUnCheckedValue;
  end;

var
  fmCheckBox: TfmCheckBox;

implementation

uses dm005_MainData;

{$R *.DFM}

{ TfmCheckBox }

function TfmCheckBox.GetIsChecked: Boolean;
begin
  Result := Self.Enabled and ((cb.State = cbChecked) or (cb.State = cbGrayed));
end;

function TfmCheckBox.GetKeyValue: Variant;
begin
  if cb.Checked then
  begin
    Result := FCheckedValue;
  end else
  begin
    Result := FUnCheckedValue;
  end;
end;

procedure TfmCheckBox.SetKeyValue(const Value: Variant);
begin
  cb.Checked := Value = FCheckedValue;
end;

procedure TfmCheckBox.cbClick(Sender: TObject);
begin
  ChangeState;
end;

procedure TfmCheckBox.ChangeState;
begin
//
end;

procedure TfmCheckBox.lbCaptionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cb.Enabled then
    begin
    cb.Checked := not cb.Checked;
    ChangeState;
    end;
end;

procedure TfmCheckBox.SetEnabled(Value: Boolean);
begin
  inherited SetEnabled(Value);
  cb.Enabled := Value;
  lbCaption.Enabled := Value;
end;

end.
