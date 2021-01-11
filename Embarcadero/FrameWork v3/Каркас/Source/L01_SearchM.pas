unit L01_SearchM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm003_DialogForm, ActnList, StdCtrls, ExtCtrls, fm000_Parent,
  fm001_Composite, L01_SearchF, L01_SearchA;

type
  TfrmSearch = class(Tfrm003_Dialog)
    fmSearch1: TfmSearch;
    procedure FormCreate(Sender: TObject);
  private
    FdmSearch: TdmSearch;
  public
    property dmSearch: TdmSearch read FdmSearch;
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.DFM}

{ TfrmSearch }

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
  FdmSearch := TdmSearch.Create(Self);
  fmSearch1.InitFrame(nil);
  FdmSearch.Search := fmSearch1;
  OKBtn.Action := FdmSearch.actSearch;
end;

end.
