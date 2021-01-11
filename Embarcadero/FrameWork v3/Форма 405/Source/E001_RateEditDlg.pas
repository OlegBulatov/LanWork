unit E001_RateEditDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Variants;

type
  TE001_RateEdit = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edComment: TEdit;
    ed1: TEdit;
    procedure OKBtnClick(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
  private
    FValue: Variant;
    procedure SetValue(const Value: Variant);
  public
    Mode: integer; // 1-котировка, 2-доля ПИ
    property Value: Variant read FValue write SetValue;
  end;

var
  E001_RateEdit: TE001_RateEdit;

implementation

uses
  untMessages, Dialogs;
{$R *.DFM}

procedure TE001_RateEdit.OKBtnClick(Sender: TObject);
begin
  FValue := Null;
  if Trim(ed1.Text) <> '' then
    begin
    FValue := StrToFloat(Trim(ed1.Text));
    if Mode = 2 then
      begin
      if FValue < 0 then
        begin
        TAppMessages.ShowError('Введенное число меньше 0');
        ModalResult := mrNone;
        end
      else if FValue > 100 then
        begin
        TAppMessages.ShowError('Введенное число больше 100');
        ModalResult := mrNone;
        end;
      end;
    end;
end;

procedure TE001_RateEdit.ed1KeyPress(Sender: TObject; var Key: Char);
begin
  if not ((Key = '+') or (Key = '-') or (Key = FormatSettings.DecimalSeparator) or (Key = #8) or
     (Key = '0') or (Key = '1') or (Key = '2') or (Key = '3') or (Key = '4') or
     (Key = '5') or (Key = '6') or (Key = '7') or (Key = '8') or (Key =  '9')) then
    begin
    beep;
    Key := Char(0);
    end;

  if (Key = FormatSettings.DecimalSeparator) then
    begin
    if Pos(FormatSettings.DecimalSeparator, ed1.Text) <> 0 then
      begin
      beep;
      Key := Char(0);
      end;
    end
  else if (Key = '+') or (Key = '-') then
    begin
    if TrimLeft(ed1.Text) <> '' then
      begin
      beep;
      Key := Char(0);
      end;
    end;
end;

procedure TE001_RateEdit.SetValue(const Value: Variant);
begin
  FValue := Value;
  if FValue = Null then
    ed1.Text := ''
  else
    ed1.Text := FValue;
end;

end.
