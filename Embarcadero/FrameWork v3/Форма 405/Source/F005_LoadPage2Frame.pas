unit F005_LoadPage2Frame;

interface

uses
  fm031_WizardPageFrame, F005_LoadPage2GridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  ActnList, StdCtrls, ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, F001_FilesFrame,

type
  TF005_LoadPage2 = class(TfmWizardPage)
    Grid: TF005_LoadPage2Grid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    //
    procedure DoOnShowPage(const AType: TMoveType); override;
    function  CanClosePage(const AType: TMoveType): Boolean; override;
  end;

var
  F005_LoadPage2: TF005_LoadPage2;

implementation

{$R *.DFM}

{ TF005_LoadPage2 }

procedure TF005_LoadPage2.InitFrame(Sender: TObject);
begin
  InitFrame(Self);
  inherited;
end;

procedure TF005_LoadPage2.DoOnShowPage;
begin
  Grid.InitFrame(Self);
end;

function TF005_LoadPage2.CanClosePage(const AType: TMoveType): Boolean;
begin
  if AType = mtNext then
    Result := Grid.DataOperations > 0
  else
    Result :=  True;
end;

end.
