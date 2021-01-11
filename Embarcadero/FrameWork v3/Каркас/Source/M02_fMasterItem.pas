unit M02_fMasterItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ExtCtrls, StdCtrls;

type
  TfmMMasterItem = class(TfmParent)
    paStepCaption: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    bvStep: TBevel;
    paStepDesc: TPanel;
    Label1: TLabel;
    paStepBody: TPanel;
  private
    function GetMaster: TObject;
  protected
  public
    procedure DoOnShowPage; virtual;
    procedure DoOnClosePage; virtual;
    //
    property Master: TObject read GetMaster;
  end;

var
  fmMMasterItem: TfmMMasterItem;

implementation

{$R *.DFM}

{ TfmMMasterItem }

procedure TfmMMasterItem.DoOnShowPage;
begin
  InitFrame(nil);
end;

procedure TfmMMasterItem.DoOnClosePage;
begin

end;

function TfmMMasterItem.GetMaster: TObject;
begin
  // fmMMaster.pcSteps.TabSheet1
  Result := Self.Parent.Parent.Parent;
end;

end.
