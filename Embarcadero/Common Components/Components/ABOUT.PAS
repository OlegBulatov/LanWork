unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, shellapi, dsgnintf;

type
  TfmAbout = class(TForm)
    Label1: TLabel;
    CompName: TLabel;
    RichEdit1: TRichEdit;
    Button1: TButton;                  
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TAboutEditor = class(TComponentEditor)
  private
    procedure ExecuteVerb(Index : Integer);override;
    function GetVerb( Index : Integer ) : string; override;
    function GetVerbCount : Integer; override;
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.DFM}

procedure TfmAbout.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmAbout.Button1Click(Sender: TObject);
begin
  ShellExecute( 0, 'open', 'http://www.plugcom.ru/~sham1', nil, nil, SW_MAXIMIZE );
end;

{ TAboutEditor }

procedure TAboutEditor.ExecuteVerb(Index: Integer);
begin
  case Index of
    0 : begin
      fmAbout := TfmAbout.Create(Application);
      try
        fmAbout.CompName.Caption := Format( fmAbout.CompName.Caption, [Component.ClassName] );
        fmAbout.ShowModal;
      finally
        fmAbout.Free;
      end;
    end;
  end;
end;

function TAboutEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0 : Result := 'Get Help...';
  end;
end;

function TAboutEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;


end.
