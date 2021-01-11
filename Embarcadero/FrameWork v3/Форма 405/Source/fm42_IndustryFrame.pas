unit fm42_IndustryFrame;

interface

uses
  fm07_SelectParentFrame, Db, Oracle, StdCtrls, DbCtrls, fm43_SectorsFrame,
  frm04_ListForm, Forms, Mask, OracleData, Controls, Classes, Buttons;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  OracleData, Buttons,
//  Mask, , Oracle;

type
  Tfm42_Industry = class(Tfm07_SelectParent)
    odsSelectCODE: TStringField;
    odsSelectINDUSTRY: TStringField;
    Label1: TLabel;
    ed01: TDBEdit;
    odsSelectT112_GROUP_NAME: TStringField;
    fm43_Sectors1: Tfm43_Sectors;
    oqGetSectorByIndustry: TOracleQuery;
    procedure lcbSelectCloseUp(Sender: TObject);
  private
    FIssuerName: String;
  protected
    function GetClass: Tfrm04_ListClass; override;
    //
    function DoSelect: Boolean; override;
    //
    procedure setSector;
  public
    property IssuerName: String write FIssuerName;
  end;

var
  fm42_Industry: Tfm42_Industry;

implementation

uses frm88_IndustryListForm;

{$R *.DFM}

function Tfm42_Industry.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm88_IndustryList;
end;

procedure Tfm42_Industry.setSector;
begin
  oqGetSectorByIndustry.SetVariable('CODE', lcbSelect.KeyValue);
  oqGetSectorByIndustry.SetVariable('ISSUER_NAME', FIssuerName);
  oqGetSectorByIndustry.Execute;
  fm43_Sectors1.ID := oqGetSectorByIndustry.GetVariable('SECTOR');
end;

procedure Tfm42_Industry.lcbSelectCloseUp(Sender: TObject);
begin
  setSector;
end;

function Tfm42_Industry.DoSelect: Boolean;
begin
  Result := inherited DoSelect;

  setSector;
end;

end.
