unit fmFilterValueText2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValueNumb2, DBCtrls, StdCtrls, Grids, DBGrids, xxxDBGrid, Db, Menus,
  unt001_Filter;

type
  TfmFilterValueTextFrame2 = class(TfmFilterValueNumbFrame2)
  private
  protected
    procedure AddValue(const AValueItems: TValueItems; ADataSet: TDataSet); override;  
  public
  end;

var
  fmFilterValueTextFrame2: TfmFilterValueTextFrame2;

implementation

{$R *.DFM}

procedure TfmFilterValueTextFrame2.AddValue(const AValueItems: TValueItems;
  ADataSet: TDataSet);
begin
  with AValueItems.Add do
  begin
    KeyValue.ValueType := vtString;
    KeyValue.Value := ADataSet.FieldByName(Self.KeyField).AsString; // !!!!
    ListValue.ValueType := vtString;
    ListValue.Value := ADataSet.FieldByName(Self.ListField).AsString;
  end;
end;

end.
