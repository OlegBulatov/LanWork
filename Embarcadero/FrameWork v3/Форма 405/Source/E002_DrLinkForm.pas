unit E002_DrLinkForm;

interface

uses
  frm04_EditForm, E002_DrLinkGridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  fm010_FilteredGridFrame, Classes, ActnList, StdCtrls, Controls, ExtCtrls;

type
  TE002_DrLink = class(Tfrm04_Edit)
    Grid: TE002_DrLinkGrid;
    procedure actSaveUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure SetIsin(const Value: string);
    procedure SetSecTypes(const Value: string);
    { Private declarations }
  public
    property ISIN: string write SetIsin;
    property SecTypes: string write SetSecTypes;
  end;

var
  E002_DrLink: TE002_DrLink;

implementation

uses
  untMessages;

{$R *.DFM}

procedure TE002_DrLink.SetIsin(const Value: string);
begin
  Grid.Isin := Value;
end;

procedure TE002_DrLink.SetSecTypes(const Value: string);
begin
  Grid.SecTypes := Value;
end;

procedure TE002_DrLink.actSaveUpdate(Sender: TObject);
begin
  actSave.Enabled := not Grid.odsList.IsEmpty;
end;

procedure TE002_DrLink.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (ModalResult = MrOK) and (Grid.odsListIS_MAIN.AsString = 'Связанная') then
    CanClose := TAppMessages.ShowConfirmation('Внимание! Выбранная эмиссия станет главной. Продолжить?');
end;

end.
