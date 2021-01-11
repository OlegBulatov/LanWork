unit untWorldReport;

interface

uses  SysUtils, classes,  Word2000;

type
  EWordReport = class(Exception);
  TWordReport = class(TComponent)
  private
    FWordApplication: Word2000.TWordApplication;
    FWordDocument: Word2000.TWordDocument;
    FConnected: Boolean;
    FResultFileName: string;
    FVarList: TStrings;
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    function GetScreenUpdating: Boolean;
    procedure SetScreenUpdating(const Value: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    // методы управления
    procedure Connect;
    procedure Disconnect;
    procedure Quit;
    procedure OpenDocument(const AFileName: string);
    procedure CloseDocument;
    //
    procedure PrintText(const AText: string);
    //
    function FindAndReplace(const AFindText: string; const AValue: string): Boolean;
    function FindStartPos(const AFindText: string): Integer;
    function FindEndPos(const AFindText: string): Integer;
    procedure SetTextToTable(const ATableNo: Integer; const ARow, ACol: Integer; const AText: string);
    procedure AppendRowToTable(const ATableNo: Integer);
    procedure InsertRowToTable(const ATableNo: Integer; const ARow: Integer);
    procedure InsertRowsToTable(const ATableNo: Integer; const ARow: Integer; const ACount: Integer);
    //
    procedure GoToStart;
    procedure GoToEnd;
    procedure GoToPage(const APageNo: Integer);
    //
    procedure CopyLines(const AStartLine, AEndLine: Integer);
    procedure CopyFragment(const AStartText: string; const AEndText: string; const ACount: Integer);
    //
    procedure VarListAdd(const AName, AValue: string);
    procedure VarListExport;
    procedure VarListClear;
    //
    function SaveAs(const AFullFileName: string): string;
    // свойства
    property VarList: TStrings read FVarList;
    property Visible: Boolean read GetVisible write SetVisible;
    property ResultFileName: string read FResultFileName write FResultFileName;
    property Connected: Boolean read FConnected;
    property ScreenUpdating: Boolean read GetScreenUpdating write SetScreenUpdating;
    property WordApplication: Word2000.TWordApplication read FWordApplication;
    property WordDocument: Word2000.TWordDocument read FWordDocument;
  end;

  TWordReports = class of TWordReport;

implementation

uses dialogs, untMessages, OleCtrls, OleServer, Forms;

resourcestring
  SErrorSaveFile =
    'Невозможно сохранить файл!' + #13#10 +
    ' %s ' + #13#10 +
    'Возможно файл занят другим приложением.' + #13#10 +
    ' %s ';
  SErrorInMacros =
    'Ошибка выполнения макроса!';
  SErrorCellsNotFound =
    'Ошибка! Ячейка с именем "%s" в шаблоне не найдена!';


{ TWordReport }

//******************************************************************************
// Подсоединяемся к Word
//******************************************************************************
procedure TWordReport.Connect;
begin
  FWordApplication := Word2000.TWordApplication.Create(Self);
  FWordApplication.ConnectKind := ckNewInstance;
  FWordApplication.Connect;
  FConnected := True;
  FWordApplication.Options.CheckSpellingAsYouType := False;
  FWordApplication.Options.CheckGrammarAsYouType := False;
  Application.ProcessMessages;
end;

//******************************************************************************
// Начальные установки
//******************************************************************************
constructor TWordReport.Create(AOwner: TComponent);
begin
  inherited;
  FConnected := False;
  FResultFileName := '';
  FVarList := TStringList.Create;
end;

//******************************************************************************
// Отсоединяемся от Word
//******************************************************************************
procedure TWordReport.Disconnect;
begin
  FreeAndNil(FWordApplication);
  FConnected := False;
  Application.ProcessMessages;  
end;

//******************************************************************************
// возвращаем Range по координатам
//******************************************************************************
(*
function TWordReport.GetRange(const AStartRow, AStartCol, AEndRow,
  AEndCol: Integer): Range;
begin
  Result := FExcelWorksheet.Range[
    FExcelWorksheet.Cells.Item[AStartRow, AStartCol],
    FExcelWorksheet.Cells.Item[AEndRow, AEndCol]];
end;
*)

//******************************************************************************
// возвращаем Range по названию
//******************************************************************************
(*
function TWordReport.GetNamedRange(const ARangeName: string): Range;
begin
  try
    Result := FExcelWorksheet.Range[ARangeName, EmptyParam];
  except
    TAppMessages.ErrorFmt(SErrorCellsNotFound, [ARangeName]);
  end;
end;
*)

//******************************************************************************
// Сохраняем отчет
//******************************************************************************
function TWordReport.SaveAs(const AFullFileName: string): string;
var
  I: Integer;
  VPrefix: string;
  VIsSaved: Boolean;
  VLastError: string;
  VOleFileName: OleVariant;
begin
  VIsSaved := False;
  FWordApplication.DisplayAlerts := TOleEnum(False);
  try
    for I := 0 to 30 do
    begin
      Result := AFullFileName;
      if I = 0 then
      begin
        VPrefix := '';
      end else
      begin
        VPrefix := Concat('_', IntToStr(I));
      end;
      Insert(VPrefix, Result, Length(Result) - 3);
      try
        VOleFileName := Result;
        FWordDocument.SaveAs(VOleFileName);
        VIsSaved := True;
        Break;
      except
        on E: Exception do VLastError := E.Message;
      end;
    end;
    if not VIsSaved then
    begin
      TAppMessages.ErrorFmt(SErrorSaveFile, [AFullFileName, VLastError]);
    end;
  finally
    FWordApplication.DisplayAlerts := TOleEnum(False);
  end;
  Application.ProcessMessages;  
end;

function TWordReport.GetVisible: Boolean;
begin
  Result := FWordApplication.Visible;
end;

procedure TWordReport.SetVisible(const Value: Boolean);
begin
  FWordApplication.Visible := Value;
end;

destructor TWordReport.Destroy;
begin
  FVarList.Free;
  if Connected then Disconnect;
  inherited;
end;

//******************************************************************************
// Вставляем в Word значения в именнованные ячейки
//******************************************************************************
procedure TWordReport.VarListExport;
const
  FORMAT_KEY = '%s';
var
  I: Integer;
begin
  for I := 0 to FVarList.Count - 1 do
  begin
    FindAndReplace(FVarList.Names[I], FVarList.Values[FVarList.Names[I]]);
    (*
    VName := FVarList.Names[I];
    if  then
    begin
      (*
      VValue := FWordApplication.Selection.Text;
      // если в ячейке есть символ "%s" то вставляем значение место него
      if Pos(FORMAT_KEY, VValue) > 0 then
      begin
        VValue := Format(VValue, [FVarList.Values[VName]]);
      end else
      begin
        VValue := FVarList.Values[VName];
      end;
      Selection.Delete(EmptyParam,EmptyParam);
      Selection.InsertAfter(VValue);
      *)
    //end;
  end;
end;

//******************************************************************************
// Создаем отчет на основе переменной AReport: TReport
//******************************************************************************
(*
class procedure TWordReport.BuildReport(const AReport: TReport);
var
  I: Integer;
  VWordReport: TWordReport;
begin
  VWordReport := Self.Create(nil);
  try
    VWordReport.ResultFileName := AReport.ResFileName;
    VWordReport.ShablonFileName := AReport.TempFileName;

    xlCon := GetTickCount;
    VWordReport.Connect;
    xlCon := GetTickCount - xlCon;

    xlInsPrm := GetTickCount;
    VWordReport.VarList.AddStrings(AReport.VarList);
    VWordReport.ExportVarList;
    xlInsPrm := GetTickCount - xlInsPrm;

    xlInsMain := GetTickCount;
    for I := 0 to AReport.TablesList.Count - 1 do
    begin
      VWordReport.StartRow := AReport.TablesList[I].StartRow;
      VWordReport.Table := AReport.TablesList[I].Table;
      VWordReport.ExportTable;
    end;
    xlInsMain := GetTickCount - xlInsMain;
    xlFormatMacr := GetTickCount;
    VWordReport.ApplyStyles;//    VWordReport.ApplyStyles_02;
    xlFormatMacr := GetTickCount - xlFormatMacr;

    VWordReport.SaveAs(AReport.ResFileName);
    VWordReport.Visible := True;
  finally
    VWordReport.Free;
  end;
end;
*)

function TWordReport.GetScreenUpdating: Boolean;
begin
  Result := FWordApplication.ScreenUpdating;
end;

procedure TWordReport.SetScreenUpdating(const Value: Boolean);
begin
  FWordApplication.ScreenUpdating := Value;
end;

procedure TWordReport.CloseDocument;
begin
  FreeAndNil(FWordDocument);
  Application.ProcessMessages;  
end;

procedure TWordReport.OpenDocument(const AFileName: string);
var
  VFileName: OleVariant;
  VTemplate, VNewTemplate, VDocumentType, VVisible: OleVariant;
  VWordDocument: Word2000._Document;
begin
  FWordDocument := Word2000.TWordDocument.Create(Self);
  if AFileName = '' then
  begin
    // новый документ
    VTemplate := EmptyParam;
    VNewTemplate := False;
    VDocumentType := EmptyParam;
    VVisible := False;
    VWordDocument := FWordApplication.Documents.Add(
      VTemplate, VNewTemplate, VDocumentType, VVisible);
    FWordDocument.ConnectTo(VWordDocument);
  end else
  begin
    // окрываем шаблон
    VFileName :=  AFileName;
    VWordDocument:= FWordApplication.Documents.Open(
        VFileName,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam);
    FWordDocument.ConnectTo(VWordDocument);
  end;
  Application.ProcessMessages;  
end;

(*
procedure TWordReport.FormatTableCaption(const AStartRow, AStartCol,
  AEndRow, AEndCol: Integer);
begin
  // форматируем заголовок
  with GetRange(AStartRow, AStartCol, AEndRow, AEndCol) do
  begin
    Font.Bold := True;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlCenter;
    with Borders do
    begin
      LineStyle := xlContinuous;
      Weight := xlMedium;
    end;
    Columns.AutoFit;
  end;
end;
*)

(*
procedure TWordReport.FormatTableData(const AStartRow, AStartCol, AEndRow,
  AEndCol: Integer);
begin
  // форматируем ячейки с данными
  with GetRange(AStartRow, AStartCol, AEndRow, AEndCol) do
  begin
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlCenter;

    // внутреннюю оконтовку делаем одинарной
    if (AStartCol < AEndCol) then
    begin
      Borders.Item[xlInsideVertical].Weight := xlThin;
    end;
    if (AStartRow < AEndRow) then
    begin
      Borders.Item[xlInsideHorizontal].Weight := xlThin;
    end;

    // внешнюю оконтовку делаем двойной
    Borders.Item[xlEdgeLeft].Weight := xlMedium;
    Borders.Item[xlEdgeTop].Weight := xlMedium;
    Borders.Item[xlEdgeBottom].Weight := xlMedium;
    Borders.Item[xlEdgeRight].Weight := xlMedium;

    Rows.AutoFit;
  end;
end;
*)

(*
function TWordReport.GetCell(const ARow, ACol: Integer): Excel97.Range;
begin
  Result := Range[ARow, ACol, ARow, ACol];
end;
*)


function TWordReport.FindAndReplace(const AFindText: string; const AValue: string): Boolean;
var
  VFindText: OleVariant;
  VMatchCase: OleVariant;
  VMatchWholeWord: OleVariant;
  VMatchWildcards: OleVariant;
  VMatchSoundsLike: OleVariant;
  VMatchAllWordForms: OleVariant;
  VForward: OleVariant;
  VWrap: OleVariant;
  VFormat: OleVariant;
  VReplaceWith: OleVariant;
  VReplace: OleVariant;
begin
  GoToStart;
  //
  VFindText := AFindText;
  VMatchCase := False;
  VMatchWholeWord := True;
  VMatchWildcards := False;
  VMatchSoundsLike := False;
  VMatchAllWordForms := False;
  VForward := True;
  VWrap := wdFindAsk;
  VFormat := False;
  VReplaceWith := copy(AValue, 1, 255);
  VReplace := wdReplaceOne;
  FWordApplication.Selection.Find.ClearFormatting;
  FWordApplication.Selection.Find.Replacement.ClearFormatting;
  Result := FWordApplication.Selection.Find.Execute(
    VFindText, VMatchCase, VMatchWholeWord,
    VMatchWildcards, VMatchSoundsLike, VMatchAllWordForms,
    VForward, VWrap, VFormat,
    VReplaceWith, VReplace,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam
    );
  Application.ProcessMessages;
end;

function TWordReport.FindStartPos(const AFindText: string): Integer;
var
  VFindText: OleVariant;
  VMatchCase: OleVariant;
  VMatchWholeWord: OleVariant;
  VMatchWildcards: OleVariant;
  VMatchSoundsLike: OleVariant;
  VMatchAllWordForms: OleVariant;
  VForward: OleVariant;
  VWrap: OleVariant;
  VFormat: OleVariant;
  VReplaceWith: OleVariant;
begin
  GoToStart;
  //
  VFindText := AFindText;
  VMatchCase := False;
  VMatchWholeWord := True;
  VMatchWildcards := False;
  VMatchSoundsLike := False;
  VMatchAllWordForms := False;
  VForward := True;
  VWrap := wdFindAsk;
  VFormat := False;
  VReplaceWith := '';
  FWordApplication.Selection.Find.Execute(
    VFindText, VMatchCase, VMatchWholeWord,
    VMatchWildcards, VMatchSoundsLike, VMatchAllWordForms,
    VForward, VWrap, VFormat,
    VReplaceWith, EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam
    );
  Application.ProcessMessages;
  Result := FWordApplication.Selection.Start;
end;

function TWordReport.FindEndPos(const AFindText: string): Integer;
var
  VFindText: OleVariant;
  VMatchCase: OleVariant;
  VMatchWholeWord: OleVariant;
  VMatchWildcards: OleVariant;
  VMatchSoundsLike: OleVariant;
  VMatchAllWordForms: OleVariant;
  VForward: OleVariant;
  VWrap: OleVariant;
  VFormat: OleVariant;
  VReplaceWith: OleVariant;
begin
  GoToStart;
  //
  VFindText := AFindText;
  VMatchCase := False;
  VMatchWholeWord := True;
  VMatchWildcards := False;
  VMatchSoundsLike := False;
  VMatchAllWordForms := False;
  VForward := True;
  VWrap := wdFindAsk;
  VFormat := False;
  VReplaceWith := '';
  FWordApplication.Selection.Find.Execute(
    VFindText, VMatchCase, VMatchWholeWord,
    VMatchWildcards, VMatchSoundsLike, VMatchAllWordForms,
    VForward, VWrap, VFormat,
    VReplaceWith, EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam
    );
  Application.ProcessMessages;
  Result := FWordApplication.Selection.End_;
end;

procedure TWordReport.SetTextToTable(const ATableNo: Integer;
  const ARow, ACol: Integer; const AText: string);
begin
  FWordDocument.Tables.Item(ATableNo).Cell(ARow, ACol).Range.Text := AText;
  Application.ProcessMessages;
end;

procedure TWordReport.AppendRowToTable(const ATableNo: Integer);
begin
  FWordDocument.Tables.Item(ATableNo).Rows.Add(EmptyParam);
  Application.ProcessMessages;  
end;

procedure TWordReport.InsertRowToTable(const ATableNo, ARow: Integer);
var
  VRow: OleVariant;
begin
  // вставляем строку перед ARow
  VRow:=FWordDocument.Tables.Item(ATableNo).Rows.Item(ARow);
  FWordDocument.Tables.Item(ATableNo).Rows.Add(VRow);
  Application.ProcessMessages;
end;

procedure TWordReport.InsertRowsToTable(const ATableNo, ARow, ACount: Integer);
var
  VCount: OleVariant;
begin
  // вставляем строки перед ARow
  FWordDocument.Tables.Item(ATableNo).Cell(ARow, 1).Select;
  VCount := OleVariant(ACount);
  FWordApplication.Selection.InsertRowsBelow(VCount);
  Application.ProcessMessages;
end;

procedure TWordReport.CopyLines(const AStartLine, AEndLine: Integer);
begin
//  FWordReport.WordApplication.Selection.MoveDown
end;

procedure TWordReport.GoToEnd;
begin
  FWordDocument.Range.Select;
  FWordApplication.Selection.Start := FWordApplication.Selection.End_;
  Application.ProcessMessages;
end;

procedure TWordReport.GoToStart;
begin
  FWordApplication.Selection.End_:=0;
  FWordApplication.Selection.Start:=0;
  Application.ProcessMessages;
end;

procedure TWordReport.Quit;
begin
  FWordApplication.Quit;
  Application.ProcessMessages;
end;

procedure TWordReport.VarListAdd(const AName, AValue: string);
begin
  FVarList.Values[AName] := AValue;
end;

procedure TWordReport.VarListClear;
begin
  FVarList.Clear;
end;

procedure TWordReport.CopyFragment(const AStartText, AEndText: string;
  const ACount: Integer);
var Count, Idx1, Idx2: Integer;
begin
  GoToStart;

  Idx1 := FindStartPos(AStartText);
  Idx2 := FindEndPos(AEndText);
  FWordApplication.Selection.Start := Idx1;
  FWordApplication.Selection.End_ := Idx2;

  Application.ProcessMessages;
  
  FWordApplication.Selection.Cut;
  Count := 0;
  while Count < ACount do
  begin
    FWordApplication.Selection.Paste;
    Inc(Count);
  end;

  Application.ProcessMessages;
end;

procedure TWordReport.GoToPage(const APageNo: Integer);
var
  VWhat: OleVariant;
  VWhich: OleVariant;
  VName: OleVariant;
begin
  VWhat := wdGoToPage;
  VWhich := wdGoToNext;
  VName := APageNo;
  FWordApplication.Selection.GoTo_ (VWhat, VWhich, EmptyParam, VName);
end;

procedure TWordReport.PrintText(const AText: string);
begin
  FWordApplication.Selection.TypeText(AText);
end;

end.
