unit frm10_RepOutputPathForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, ToolEdit, FileCtrl;

type
  Tfrm10_RepOutputPath = class(TForm)
    Btn01: TButton;
    Btn02: TButton;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Label1: TLabel;
    deRepOutputPath: TDirectoryEdit;
    procedure actOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm10_RepOutputPath: Tfrm10_RepOutputPath;

implementation

uses dm005_MainData, untMessages;

{$R *.DFM}

procedure Tfrm10_RepOutputPath.actOkExecute(Sender: TObject);
begin
  if not DirectoryExists(deRepOutputPath.Text) then
  begin
    try
      ForceDirectories(deRepOutputPath.Text);
    except
      TAppMessages.Error('Ќевозможно создать директорию по такому пути!');
    end;
  end;

  if (deRepOutputPath.Text[ Length(deRepOutputPath.Text)] <> '\') then
  begin
    deRepOutputPath.Text := Concat(deRepOutputPath.Text, '\');
  end;

  dmMain.RepOutputPath := deRepOutputPath.Text;
  Close;
end;

procedure Tfrm10_RepOutputPath.FormShow(Sender: TObject);
begin
  deRepOutputPath.Text := dmMain.RepOutputPath;
end;

procedure Tfrm10_RepOutputPath.actCancelExecute(Sender: TObject);
begin
  Close;
end;

end.
