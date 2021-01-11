unit P001_EmissGroupFrame;

interface

uses
  fm04_LookUpExtFrame, Db, OracleData, Controls, xxxDbLookupCheckCombo,
  Classes, StdCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  OracleData, xxxDbLookupCheckCombo, StdCtrls;

type
  TP001_EmissGroup = class(Tfm04_LookUpExt)
    odsListT059_ID: TFloatField;
    odsListT059_SHORT_NAME: TStringField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  P001_EmissGroup: TP001_EmissGroup;

implementation

{$R *.DFM}

{ TP001_EmissGroup }

procedure TP001_EmissGroup.GetParamsValues;
begin
  Param.AsFloatArray := KeyValues;
end;

procedure TP001_EmissGroup.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  SetKeyValues([41]); // голубые фишки
end;

end.
