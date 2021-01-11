unit fmFilterValueEmpty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, StdCtrls, DBCtrls;

type
  TfmFilterValueEmptyFrame = class(TfmFilterValueFrame)
    Label1: TLabel;
    ComboBox1: TComboBox;
  private
  protected
  public
  end;

var
  fmFilterValueEmptyFrame: TfmFilterValueEmptyFrame;

implementation

{$R *.DFM}

{ TfmFilterValueEmptyFrame }

end.
