unit E001_RemFieldsFrame;

interface

uses
  fm000_Parent, Controls, StdCtrls, CheckLst, Classes, ActnList, xxxDBGrid;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TE001_RemFields = class(TfmParent)
    chlColumns: TCheckListBox;
    Label1: TLabel;
    procedure chlColumnsClickCheck(Sender: TObject);
  private
    FGrid: TxxxDBGrid;
    FLists: array of TCheckListBox;
    procedure SetGrid(const Value: TxxxDBGrid);
  public
    property xxxGrid: TxxxDBGrid write SetGrid;
  end;

var
  E001_RemFields: TE001_RemFields;

implementation

uses SysUtils;

{$R *.DFM}

{ TE001_RemFields }

procedure TE001_RemFields.SetGrid(const Value: TxxxDBGrid);
var
  I, J, K: Integer;
  VIndex: Integer;
  VList: TCheckListBox;
  VCount: Integer;
  VLabel: TLabel;
  VHeader: THeader;
  VCaption: string;
begin
  // сохраняем ссылку
  FGrid := Value;

  // рисуем поля
  VCount := 0;
  for I := 0 to FGrid.AdvSettings.HeadersLines.Count - 1 do
  begin
    // для каждого уровня свой TCheckListBox
    SetLength(FLists, Length(FLists) + 1);
    VList := TCheckListBox.Create(Self);
    VList.Parent := Self;
    FLists[Length(FLists) - 1] := VList;

    // заполняем TCheckListBox
    for J := 0 to FGrid.AdvSettings.HeadersLines[I].Headers.Count - 1 do
    begin
      // наименование заголовка
      VHeader := FGrid.AdvSettings.HeadersLines[I].Headers[J];

      // если такого нет то добавляем
      VIndex := VList.Items.IndexOf(VHeader.Caption);
      if VIndex = -1 then
      begin
        VIndex := VList.Items.Add(VHeader.Caption);
      end;
      // есть ли хоть одна видимая колонка
      VList.Checked[VIndex] := False;
      for K := VHeader.FirstCol to VHeader.LastCol do
      begin
        VList.Checked[VIndex] := VList.Checked[VIndex] or FGrid.Columns[K].Visible;
      end;

    end;

    // если есть хоть один элемен TCheckListBox отображаем на форме
    if VList.Items.Count > 0 then
    begin
      Inc(VCount);
      //
      VLabel := TLabel.Create(Self);
      VLabel.Parent := Self;
      VLabel.Top := Label1.Top;
      VLabel.Left := 2 + (VList.Width + 2) * (VCount - 1);
      VLabel.Caption := 'Уровень ' + IntToStr(VCount);
      //
      VList.Top := chlColumns.Top;
      VList.Height := chlColumns.Height;
      VList.Width := chlColumns.Width;
      VList.Left := VLabel.Left;
      VList.Tag := I;
      VList.Visible := True;
      VList.OnClickCheck := chlColumnsClickCheck;
    end else
    begin
      VList.Visible := False;
      VList.Enabled := False;
    end;
  end;

  // пробигаемся по колонкам
  Inc(VCount);
  Label1.Left := 2 + (chlColumns.Width + 2) * (VCount - 1);
  Label1.Caption := 'Уровень ' + IntToStr(VCount);  
  chlColumns.Items.Clear;
  chlColumns.Tag := -1;
  for I := 0 to FGrid.Columns.Count - 1 do
  begin
    // наименование заголовка
    VCaption := FGrid.Columns[I].Title.Caption;

    // если такого нет то добавляем
    VIndex := chlColumns.Items.IndexOf(VCaption);
    if VIndex = -1 then
    begin
      VIndex := chlColumns.Items.Add(VCaption);
    end;
    chlColumns.Checked[VIndex] := chlColumns.Checked[VIndex] or FGrid.Columns[I].Visible;    

    // отображаем на форме
    chlColumns.Left := Label1.Left;
  end;

  Self.Width := 2 + (chlColumns.Width + 2) * VCount;
end;

procedure TE001_RemFields.chlColumnsClickCheck(Sender: TObject);
var
  I, J, K, VIndex: Integer;
  VHeader: THeader;
begin
  // колонки
  for I := 0 to FGrid.Columns.Count - 1 do
  begin
    VIndex := chlColumns.Items.IndexOf(FGrid.Columns[I].Title.Caption);
    if VIndex <> -1 then
    begin
      FGrid.Columns[I].Visible := chlColumns.Checked[VIndex];
    end;
  end;

  // headers
  for K := High(FLists) downto Low(FLists) do
  begin
    for I := 0 to FGrid.AdvSettings.HeadersLines[FLists[K].Tag].Headers.Count - 1 do
    begin
      VHeader := FGrid.AdvSettings.HeadersLines[FLists[K].Tag].Headers[I];
      VIndex := FLists[K].Items.IndexOf(VHeader.Caption);
      if VIndex <> -1 then
      begin
        for J := VHeader.FirstCol to VHeader.LastCol do
        begin
          if not FLists[K].Checked[VIndex] then
          begin
            FGrid.Columns[J].Visible := False;
          end;
        end;
      end;
    end;
  end;
end;

end.
