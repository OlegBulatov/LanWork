unit fm031_WizardPageFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, ExtCtrls, StdCtrls, System.Actions;

type
  TMoveType = (
    mtNext,              // ������ ������ Next
    mtBack               // ������ ������ Back
    );

  TfmWizardPage = class(TfmParent)
    PanelStepCaption: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel: TBevel;
    PanelStepBody: TPanel;
  private
    function GetWizard: TObject;
  protected
  public
    property Wizard: TObject read GetWizard;
    //
    function CanShowPage(const AType: TMoveType): Boolean; virtual;
    function CanClosePage(const AType: TMoveType): Boolean; virtual;
    //
    procedure DoOnShowPage(const AType: TMoveType); virtual;
    procedure DoOnClosePage(const AType: TMoveType); virtual;
  end;

var
  fmWizardPage: TfmWizardPage;

implementation

{$R *.DFM}

{ TfmWizardPage }

function TfmWizardPage.CanShowPage(const AType: TMoveType): Boolean;
begin
  Result := True;
end;

procedure TfmWizardPage.DoOnShowPage(const AType: TMoveType);
begin
//
end;

function TfmWizardPage.CanClosePage(const AType: TMoveType): Boolean;
begin
  Result := True;
end;

procedure TfmWizardPage.DoOnClosePage(const AType: TMoveType);
begin
  // ���-�� ����� ������ ����� ������ �� ��������
end;

function TfmWizardPage.GetWizard: TObject;
begin
  Result := Self.Parent.Parent.Parent;
end;

end.
