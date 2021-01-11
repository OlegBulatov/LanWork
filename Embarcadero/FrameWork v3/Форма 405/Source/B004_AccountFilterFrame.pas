unit B004_AccountFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB004_AccountFilter = class(TfmLookUp)
    odsListT216_CODE: TStringField;
    odsListT216_DESC: TStringField;
  private
    { Private declarations }
  public
  end;

var
  B004_AccountFilter: TB004_AccountFilter;

implementation

{$R *.DFM}

{ TB004_AccountFilter }

end.
