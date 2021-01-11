unit z002_fm_filter_frame;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  E002_PeriodFilterFrame, z002_handler_filter_frame, z002_type_filter_frame,
  ComCtrls, StdCtrls, C002_TypeSecFrame, z002_inv_filter_frame;

type
  Tz002_fm_filter = class(TFrame)
    PeriodFilter: TE002_PeriodFilter;
    BankFilter: TB002_BankFilter;
    TypeFilter: Tz002_type_filter;
    HandlerFilter: Tz002_handler_filter;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    cbDate: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    SecTypeFilter: TC002_TypeSec;
    InvTypeFilter: Tz002_inv_filter;
    Button1: TButton;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); 
  end;

implementation

{$R *.DFM}
procedure Tz002_fm_filter.InitFrame(Sender: TObject);
begin
  inherited;
  PeriodFilter.InitFrame(Self);
  BankFilter.InitFrame(Self);
  TypeFilter.InitFrame(Self);
  HandlerFilter.InitFrame(Self);
  SecTypeFilter.InitFrame(Self);
  InvTypeFilter.InitFrame(Self);
end;


end.
