unit xxxFilterLookUp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookUp, Db, OracleData, Oracle;

type
  TFilterLookUp = class(TCustomPanel)
  private
    FCheckBox: TCheckBox;
    FLabel: TLabel;
    FComboBox: TRxDBLookupCombo;
    FDataSource: TDataSource;
    FDataSet: TOracleDataSet;
    procedure WMSize(var Message:TMessage); message WM_SIZE;
    function GetSession: TOracleSession;
    procedure SetSession(const Value: TOracleSession);
    function GetSQL: TStrings;
    procedure SetSQL(const Value: TStrings);
  protected
    function GetCaption: TCaption;
    procedure SetCaption(const Value: TCaption);
    function GetBoxPosition: integer;
    procedure SetBoxPosition(const Value: integer);
    function GetChecked: boolean;
    procedure SetChecked(const Value: boolean);
    function GetCheckVisible: boolean;
    procedure SetCheckVisible(const Value: boolean);
    procedure SetCheckState(const Value: TCheckBoxState);
    function GetCheckState: TCheckBoxState;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Caption: TCaption read GetCaption write SetCaption;

    property BoxPosition: integer read GetBoxPosition write SetBoxPosition;

    property Checked: boolean read GetChecked write SetChecked;
    property CheckVisible: boolean read GetCheckVisible write SetCheckVisible;
    property CheckState: TCheckBoxState read GetCheckState write SetCheckState;

    property Session: TOracleSession read GetSession write SetSession;
    property SQL: TStrings read GetSQL write SetSQL;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XXX', [TFilterLookUp]);
end;

{ TFilterLookUp }

constructor TFilterLookUp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Height := 21;
  Width := 320;
  Self.BevelOuter := bvNone;

  FCheckBox := TCheckBox.Create(Self);
  FCheckBox.Parent := Self;
  FCheckBox.Left := 0;
  FCheckBox.Top := 2;
  FCheckBox.Height := 17;
  FCheckBox.Width := 17;

  FLabel := TLabel.Create(Self);
  FLabel.Parent := Self;
  FLabel.Left := 18;
  FLabel.Top := 4;

  FDataSet := TOracleDataSet.Create(Self);


  
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := FDataSet;

  FComboBox := TRxDBLookupCombo.Create(Self);
  FComboBox.Parent := Self;
  FComboBox.Left := Width - 180;
  FComboBox.Top := 0;
  FComboBox.Width := 180;

  FComboBox.LookupSource := FDataSource;

  Caption := 'xxxFilterLookUp';
end;

destructor TFilterLookUp.Destroy;
begin
  FComboBox.Free;
  FDataSource.Destroy;
  FDataSet.Destroy;
  FLabel.Free;
  FCheckBox.Free;
  inherited Destroy;
end;

procedure TFilterLookUp.WMSize(var Message: TMessage);
begin
  Height := 21;
  FComboBox.Width := Width - FComboBox.Left;
end;

function TFilterLookUp.GetCaption: TCaption;
begin
//  Result := inherited Caption;
  Result := FLabel.Caption;
end;

procedure TFilterLookUp.SetCaption(const Value: TCaption);
begin
  inherited Caption := ' ';
  FLabel.Caption := Value;
end;

function TFilterLookUp.GetBoxPosition: integer;
begin
  Result := FComboBox.Left;
end;

procedure TFilterLookUp.SetBoxPosition(const Value: integer);
begin
  FComboBox.Left := Value;
  FComboBox.Width := Width - FComboBox.Left;
end;

function TFilterLookUp.GetChecked: boolean;
begin
  Result := FCheckBox.Checked;
end;

procedure TFilterLookUp.SetChecked(const Value: boolean);
begin
  FCheckBox.Checked := Value;
end;

function TFilterLookUp.GetCheckVisible: boolean;
begin
  Result := FCheckBox.Visible;
end;

procedure TFilterLookUp.SetCheckVisible(const Value: boolean);
begin
  FCheckBox.Visible := Value;
end;

function TFilterLookUp.GetCheckState: TCheckBoxState;
begin
  Result := FCheckBox.State
end;

procedure TFilterLookUp.SetCheckState(const Value: TCheckBoxState);
begin
  FCheckBox.State := Value;
end;

function TFilterLookUp.GetSession: TOracleSession;
begin
  Result := FDataSet.Session;
end;

procedure TFilterLookUp.SetSession(const Value: TOracleSession);
begin
  FDataSet.Session := Value;
end;

function TFilterLookUp.GetSQL: TStrings;
begin
  Result := FDataSet.SQL;
end;

procedure TFilterLookUp.SetSQL(const Value: TStrings);
begin
  FDataSet.SQL := Value;
end;

end.
