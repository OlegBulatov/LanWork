unit G001_RequestDatesDlg;

interface

uses
  Forms, ComCtrls, Controls, StdCtrls, Classes, ExtCtrls;
// Windows, SysUtils, Graphics, Forms,
//  Buttons, Mask, ToolEdit;

type
  TG001_RequestDates = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    dtFrom: TDateTimePicker;
    Label2: TLabel;
    dtUpto: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  G001_RequestDates: TG001_RequestDates;

implementation

uses untMessages;

{$R *.DFM}

procedure TG001_RequestDates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtFrom.Date > dtUpto.Date then
    begin
    TAppMessages.ShowError('ƒата начала не может быть больше даты окончани€.');
    Action := caNone;
    end
  else
   Action := caFree;

end;

end.
