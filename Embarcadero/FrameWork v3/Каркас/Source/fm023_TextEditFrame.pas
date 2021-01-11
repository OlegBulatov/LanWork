unit fm023_TextEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, StdCtrls;

type
  TfmTextFilter = class(TfmParent)
    cb: TCheckBox;
    lbCaption: TLabel;
    ed: TEdit;
    procedure cbClick(Sender: TObject);
    procedure edKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  protected
    function GetIsEnabled: Boolean;
    function GetKeyValue: Variant;
    procedure SetKeyValue(const Value: Variant);

    procedure ChangeState;
  public
    procedure InitFrame(Sender: TObject);  override;
    property IsEnabled: Boolean read GetIsEnabled;
    // значение ключего поля - неизвестно
    property KeyValue: Variant read GetKeyValue write SetKeyValue;
  end;

var
  fmTextFilter: TfmTextFilter;

implementation

{$R *.DFM}

{ TfmEditFilter }

procedure TfmTextFilter.InitFrame(Sender: TObject);
begin
  ed.Text := '';
  inherited;
end;

function TfmTextFilter.GetIsEnabled: Boolean;
begin
  Result := (cb.State = cbChecked) or (cb.State = cbGrayed);
end;

function TfmTextFilter.GetKeyValue: Variant;
begin
  Result := ed.Text;
end;

procedure TfmTextFilter.SetKeyValue(const Value: Variant);
begin
  ed.Text := Value;
end;

procedure TfmTextFilter.ChangeState;
begin
  ed.Enabled := cb.Checked;
  if Assigned(ed.OnChange) then
    ed.OnChange(ed);
end;

procedure TfmTextFilter.cbClick(Sender: TObject);
begin
  ChangeState;
end;

procedure TfmTextFilter.edKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // если нажали Enter то обновляем
  if Key = VK_RETURN then
  begin
    cb.OnClick(cb);
  end;
end;

end.
