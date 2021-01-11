unit frm74_MMVBDoubleForm;

interface

uses
  frm45_DoubleListForm, frm00_ParentForm, Oracle, Classes, ActnList,
  ComCtrls, ToolWin, StdCtrls, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  , Oracle, ActnList, ComCtrls, ToolWin, StdCtrls,
//  ExtCtrls,

type
  Tfrm74_MMVBDouble = class(Tfrm45_DoubleList)
  private
    FT081_ID: Double;
  protected
    procedure OnMoveToTop; override;
    procedure OnMoveToBottom; override;
    //
    procedure InitTopForm; override;
    procedure InitBottomForm; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    property T081_ID: Double read FT081_ID write FT081_ID;
  end;

var
  frm74_MMVBDouble: Tfrm74_MMVBDouble;

implementation

uses Forms, frm74_MMVBDoubleTopForm, frm74_MMVBDoubleBottomForm;

{$R *.DFM}

{ Tfrm74_MMVBDouble }

class function Tfrm74_MMVBDouble.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBDouble;
end;

class function Tfrm74_MMVBDouble.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBDouble;
end;

procedure Tfrm74_MMVBDouble.InitTopForm;
begin
  TopForm := Tfrm74_MMVBDoubleTop.Instance;
  Tfrm74_MMVBDoubleTop.Instance.Linker := Self;
end;

procedure Tfrm74_MMVBDouble.InitBottomForm;
begin
  BottomForm := Tfrm74_MMVBDoubleBottom.Instance;
  Tfrm74_MMVBDoubleBottom.Instance.Linker := Self;
end;

procedure Tfrm74_MMVBDouble.OnMoveToTop;
begin
  // удаляем эмиссию из портфеля
  oqToTop.SetVariable('i_id', BottomDataSet.FieldByName('T030_ID').AsFloat);
  oqToTop.SetVariable('i_code_id', T081_ID);
  oqToTop.Execute;

  // для поиска
  TopID := BottomDataSet.FieldByName('T030_ID').AsFloat;
  BottomDataSet.Next;
  BottomID := BottomDataSet.FieldByName('T030_ID').AsFloat;
end;

procedure Tfrm74_MMVBDouble.OnMoveToBottom;
begin
  // добавляем эмиссию в портфель
  oqToBottom.SetVariable('i_id', TopDataSet.FieldByName('T030_ID').AsFloat);
  oqToBottom.SetVariable('i_code_id', T081_ID);
  oqToBottom.Execute;

  // для поиска
  BottomID := TopDataSet.FieldByName('T030_ID').AsFloat;
  TopDataSet.Next;
  TopID := TopDataSet.FieldByName('T030_ID').AsFloat;
end;

class procedure Tfrm74_MMVBDouble.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBDouble) := AForm;
end;

end.
