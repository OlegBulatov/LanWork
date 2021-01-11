unit frm02_AboutFrom;

interface

uses
  Windows, Forms, Controls, StdCtrls, Graphics, ExtCtrls, Classes;
// Graphics, Buttons,

type
  Tfrm02_About = class(TForm)
    OKButton: TButton;
    Label1: TLabel;
    Version: TLabel;
    ProductName: TLabel;
    ProgramIcon: TImage;
    procedure FormCreate(Sender: TObject);
  private
    function VersionInfo: string;
  public
    class procedure InitForm;
  end;

var
  frm02_About: Tfrm02_About;

implementation

uses SysUtils;

{$R *.DFM}

{ Tfrm03_About }

class procedure Tfrm02_About.InitForm;
begin
  Application.CreateForm(Self, frm02_About);
end;

{******************************************************************************}
{*  Версия программы                                                          *}
{******************************************************************************}
function Tfrm02_About.VersionInfo: string;
var
  VInfo: Pointer;
  VInfo2: ^VS_FIXEDFILEINFO;
  Size, Dummy: Cardinal;
begin
  VInfo  := nil;
  VInfo2 := nil;
  try
    Size := GetFileVersionInfoSize(PChar(Application.ExeName), Dummy);
    GetMem(VInfo, Size);
    GetFileVersionInfo(PChar(Application.ExeName), Cardinal(0), Size, VInfo);
    VerQueryValue(VInfo, '\', Pointer(VInfo2), Size);
    result := IntToStr(VInfo2.dwFileVersionMS div $FFFF);
    result := result + '.' + IntToStr(VInfo2.dwFileVersionMS and $FFFF);
    result := result + '.' + IntToStr(VInfo2.dwFileVersionLS div $FFFF);
    result := result + '.' + IntToStr(VInfo2.dwFileVersionLS and $FFFF);
  finally
    if VInfo <> nil then FreeMem(VInfo);
  end;
end;

procedure Tfrm02_About.FormCreate(Sender: TObject);
begin
  Self.Version.Caption := Format('Версия %s', [VersionInfo]);
end;

end.
 
