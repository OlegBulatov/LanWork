unit fmFilterValue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  xxxDBGrid, dbctrls, db, unt001_Filter;

type
  TfmFilterValueFrame = class(TFrame)
  private
  protected
    FValues: TValueItems;
    function GetKeyField: string; virtual;
    function GetListField: string; virtual;
    procedure SetKeyField(const Value: string); virtual;
    procedure SetListField(const Value: string); virtual;
    procedure SetDataSet(const Value: TDataSet); virtual;
    function GetValues: TValueItems; virtual;
    procedure SetValues(const Value: TValueItems); virtual;
  public
    property Values: TValueItems read GetValues write SetValues;
    property DataSet: TDataSet write SetDataSet;
    property KeyField: string read GetKeyField write SetKeyField;
    property ListField: string read GetListField write SetListField;
  end;

  TfmFilterValueFrames = class of TfmFilterValueFrame;

implementation

{$R *.DFM}

{ TfmFilterValueFrame }

function TfmFilterValueFrame.GetKeyField: string;
begin
end;

function TfmFilterValueFrame.GetListField: string;
begin
end;

function TfmFilterValueFrame.GetValues: TValueItems;
begin
  Result := FValues;
end;

procedure TfmFilterValueFrame.SetDataSet(const Value: TDataSet);
begin
end;

procedure TfmFilterValueFrame.SetKeyField(const Value: string);
begin
end;

procedure TfmFilterValueFrame.SetListField(const Value: string);
begin
end;

procedure TfmFilterValueFrame.SetValues(const Value: TValueItems);
begin
  FValues := Value;
end;

end.
