unit frm47_IssuerGroupDoubleForm;

interface

uses
  frm45_DoubleListForm, Forms, Oracle, Classes, ActnList, ComCtrls, ToolWin,
  StdCtrls, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm47_IssuerGroupDouble = class(Tfrm45_DoubleList)
  private
    FT042_ID: Double;
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
    property T042_ID: Double read FT042_ID write FT042_ID;
  end;

var
  frm47_IssuerGroupDouble: Tfrm47_IssuerGroupDouble;

implementation

uses frm47_IssuerGroupTopForm, frm47_IssuerGroupBottomForm;

{$R *.DFM}

{ Tfrm44_RezidGroupDouble }

class function Tfrm47_IssuerGroupDouble.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm47_IssuerGroupDouble;
end;

class function Tfrm47_IssuerGroupDouble.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm47_IssuerGroupDouble;
end;

procedure Tfrm47_IssuerGroupDouble.InitTopForm;
begin
  TopForm := Tfrm47_IssuerGroupTop.Instance;
  Tfrm47_IssuerGroupTop.Instance.Linker := Self;
end;

procedure Tfrm47_IssuerGroupDouble.InitBottomForm;
begin
  BottomForm := Tfrm47_IssuerGroupBottom.Instance;
  Tfrm47_IssuerGroupBottom.Instance.Linker := Self;
end;

procedure Tfrm47_IssuerGroupDouble.OnMoveToTop;
begin
  // удаляем эмитента из группы
  oqToTop.SetVariable('i_id', BottomDataSet.FieldByName('T028_ID').AsFloat);
  oqToTop.SetVariable('i_group_id', T042_ID);
  oqToTop.Execute;

  // для поиска
  TopID := BottomDataSet.FieldByName('T028_ID').AsFloat;
  BottomDataSet.Next;
  BottomID := BottomDataSet.FieldByName('T028_ID').AsFloat;
end;

procedure Tfrm47_IssuerGroupDouble.OnMoveToBottom;
begin
  // добавляем эмитента в группу
  oqToBottom.SetVariable('i_id', TopDataSet.FieldByName('T028_ID').AsFloat);
  oqToBottom.SetVariable('i_group_id', T042_ID);
  oqToBottom.Execute;

  // для поиска
  BottomID := TopDataSet.FieldByName('T028_ID').AsFloat;
  TopDataSet.Next;
  TopID := TopDataSet.FieldByName('T028_ID').AsFloat;
end;

class procedure Tfrm47_IssuerGroupDouble.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm47_IssuerGroupDouble) := AForm;
end;

end.
