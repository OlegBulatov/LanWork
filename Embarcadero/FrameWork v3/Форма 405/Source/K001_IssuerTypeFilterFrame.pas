unit K001_IssuerTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TK001_IssuerTypeFilter = class(TfmLookUp)
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
  end;

var
  K001_IssuerTypeFilter: TK001_IssuerTypeFilter;

implementation

{$R *.DFM}

{ TK001_IssuerTypeFilter }

procedure TK001_IssuerTypeFilter.InitFrame(Sender: TObject);
begin
  inherited;
  lcb.SetKeyValuesAll;
end;

end.
