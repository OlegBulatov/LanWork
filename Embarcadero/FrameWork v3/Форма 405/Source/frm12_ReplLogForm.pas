unit frm12_ReplLogForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm00_ParentForm;
//  Windows, Messages, SysUtils, Dialogs,
//  StdCtrls,

type
  Tfrm12_ReplLog = class(Tfrm04_List)
    odsListT015_ID: TFloatField;
    odsListT015_START_DATE: TDateTimeField;
    odsListT015_END_DATE: TDateTimeField;
    odsListT015_SUCCESS: TStringField;
    odsListT015_DESC: TStringField;
    odsListT002_NUMB_IN_YEA_TEXT: TStringField;
    odsListREGN: TStringField;
    odsListNAME: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm12_ReplLog: Tfrm12_ReplLog;

implementation

uses Graphics;

{$R *.DFM}

{ Tfrm12_ReplLog }

class function Tfrm12_ReplLog.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm12_ReplLog;
end;

class function Tfrm12_ReplLog.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm12_ReplLog;
end;

class procedure Tfrm12_ReplLog.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm12_ReplLog) := AForm;
end;

procedure Tfrm12_ReplLog.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    VColor := xxxDBGrid.Color;
    // выделяем красным загрузки с ошибками
    if odsListT015_SUCCESS.AsString <> 'T' then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clRed;
        xxxDBGrid.Canvas.Font.Color := VColor;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := clRed;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
