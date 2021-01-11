unit L01_SearchA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, db, L01_SearchF;

type
  TdmSearch = class(TDataModule)
    alSearchFrame: TActionList;
    actSearch: TAction;
    actClose: TAction;
    actSelect: TAction;
    actShowHide: TAction;
    procedure actSearchExecute(Sender: TObject);
    procedure actSearchUpdate(Sender: TObject);
  private
    FSearch: TfmSearch;
    FDataSet: TDataSet;
    function Compare(const AText, ASearchText: string): Boolean;
    function SearchFromPos: Boolean;
    //
    function GetSearchType: TSearchType;
    function GetSearchText: string;
    function GetOptions: TLocateOptions;
    function GetSearchField: string;
  public
    procedure StartSearch;
    //
    property Search: TfmSearch read FSearch write FSearch;
    property SearchField: string read GetSearchField;
    property SearchText: string read GetSearchText;
    property SearchType: TSearchType read GetSearchType;
    property Options: TLocateOptions read GetOptions;
    property DataSet: TDataSet read FDataSet write FDataSet;
  end;

var
  dmSearch: TdmSearch;

implementation

uses dm006_PictersData, untMessages;

{$R *.DFM}

resourcestring
  SInvalidField =
    '������ � ������ TdmSearch!' + #13#10 +
    '�������� Column.Field �� ������ ���� ������!';
  SInvalidDisplayName =
    '������ � ������ TdmSearch!' + #13#10 +
    '�������� Column.Field.DisplayName �� ������ ���� ������!';
  SInvalidParametr =
    '������ � ������ TdmSearch!' + #13#10 +
    '�������� ����� nil!';
  SInvalidFieldName =
    '������ � ������ TdmSearch!' + #13#10 +
    '���� � ������ ''%s'' �� �������!';
  SElmNotFoundS =
    '�������� ������� ��������. ������� �� ������!' + #13#10 +
    '���������� ����� � ������ �������?';
  SElmNotFoundE =
    '�������� ������� ��������. ������� �� ������!' + #13#10 +
    '���������� ����� � ����� �������?';

{ TdmSearch }

function TdmSearch.Compare(const AText, ASearchText: string): Boolean;
var
  VText, VSearchText: string;
begin
  VText := AText;
  VSearchText := ASearchText;

  // ������� �� �����
  if loCaseInsensitive in Options then
  begin
    VText := AnsiUpperCase(VText);
    VSearchText := AnsiUpperCase(VSearchText);
  end;

  if loPartialKey in Options then
  begin
    // ����� � VText ��������� VSearchText
    Result := Pos(VSearchText, VText) <> 0;
  end else
  begin
    // ������ �����
    Result := VText = VSearchText;
  end;
end;

procedure TdmSearch.StartSearch;
begin
  while True do
  begin
    // �����
    if SearchFromPos then
    begin
      Exit;
    end;

    // ������ �� �����
    if SearchType = stDown then
    begin
      if TAppMessages.ShowConfirmation(SElmNotFoundS) then
      begin
        FDataSet.First;
      end else
      begin
        Exit;
      end;
    end else
    begin
      if TAppMessages.ShowConfirmation(SElmNotFoundE) then
      begin
        FDataSet.Last;
      end else
      begin
        Exit;
      end;
    end;
  end;
end;

function TdmSearch.SearchFromPos: Boolean;
var
  VOldCursor: TCursor;
  VCurrentPos: TBookmark;
  VFlag: Boolean;
begin
  // �������� �����
  Result := False;
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FDataSet.DisableControls;
    try
      VCurrentPos:= FDataSet.GetBookmark;
      try
        // ������������� ��������� ������� ������
        if SearchType = stDown then
        begin
          // ����� �����
          FDataSet.Next;
        end else
        begin
          // ����� �����
          FDataSet.Prior;
        end;

        VFlag := False;
        while not VFlag do
        begin
          Result := Compare(FDataSet.FieldByName(SearchField).AsString, SearchText);
          if Result then
          begin
            // �����
            FDataSet.FreeBookmark(VCurrentPos);
            VCurrentPos:= FDataSet.GetBookmark;
            if (FDataSet.RecordCount <> 0) and Assigned(FDataSet.AfterScroll) then
            begin
              FDataSet.EnableControls;
              FDataSet.AfterScroll(FDataSet);
              FDataSet.DisableControls;
            end;
            Exit;
          end;
          if SearchType = stDown then
          begin
            FDataSet.Next;
            VFlag := FDataSet.Eof;
          end else
          begin
            FDataSet.Prior;
            VFlag := FDataSet.Bof;
          end;
        end;
      finally
        FDataSet.GotoBookmark(VCurrentPos);
        FDataSet.FreeBookmark(VCurrentPos);
      end;
    finally
      FDataSet.EnableControls;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TdmSearch.actSearchExecute(Sender: TObject);
begin
  // �������� �����
  StartSearch;
end;

procedure TdmSearch.actSearchUpdate(Sender: TObject);
begin
  // ��������� ������ "�����"
  actSearch.Enabled := SearchText <> '';
end;

function TdmSearch.GetSearchType: TSearchType;
begin
  Result := FSearch.SearchType;
end;

function TdmSearch.GetSearchText: string;
begin
  Result := FSearch.SearchText;
end;

function TdmSearch.GetOptions: TLocateOptions;
begin
  Result := FSearch.Options;
end;

function TdmSearch.GetSearchField: string;
begin
  Result := FSearch.SearchField;
end;

end.
