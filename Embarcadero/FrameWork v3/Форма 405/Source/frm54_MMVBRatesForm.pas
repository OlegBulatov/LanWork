unit frm54_MMVBRatesForm;

interface

uses
  frm00_ParentForm, ComCtrls, Classes, Controls, frm54_MMVBRatesLoadForm,
  frm107_MMVBRatesLoad2Form, frm74_MMVBListForm, frm200_GKORatesListForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm54_MMVBRates = class(Tfrm00_Parent)
    pcRatesTypes: TPageControl;
    tsStocks: TTabSheet;
    tsGKO: TTabSheet;
    tsLoadingRates: TTabSheet;
    tsLoad2: TTabSheet;
    procedure FormCreate(Sender: TObject);
  private
    FLoadRates: Tfrm54_MMVBRatesLoad;
    FLoad2: Tfrm107_MMVBRatesLoad2;
    FStocksRates: Tfrm74_MMVBList;
    FGKORates: Tfrm200_GKORatesList;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm54_MMVBRates: Tfrm54_MMVBRates;

implementation

uses Forms;

{$R *.DFM}

class function Tfrm54_MMVBRates.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm54_MMVBRates;
end;

class function Tfrm54_MMVBRates.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm54_MMVBRates;
end;

class procedure Tfrm54_MMVBRates.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm54_MMVBRates) := AForm;
end;

procedure Tfrm54_MMVBRates.FormCreate(Sender: TObject);
begin
  FLoadRates := Tfrm54_MMVBRatesLoad(Tfrm54_MMVBRatesLoad.Create(tsStocks));
  FLoadRates.PlaceToWinControl(tsLoadingRates);

  FLoad2 := Tfrm107_MMVBRatesLoad2(Tfrm107_MMVBRatesLoad2.Create(tsStocks));
  FLoad2.PlaceToWinControl(tsLoad2);

  FStocksRates := Tfrm74_MMVBList(Tfrm74_MMVBList.Create(tsStocks));
  FStocksRates.PlaceToWinControl(tsStocks);
  FStocksRates.FormShow(nil);

  FGKORates := Tfrm200_GKORatesList(Tfrm200_GKORatesList.Instance());
  FGKORates.PlaceToWinControl(tsGKO);
  FGKORates.FormShow(nil);
end;

end.
