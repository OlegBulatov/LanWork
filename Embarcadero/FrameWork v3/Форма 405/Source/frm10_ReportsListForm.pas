unit frm10_ReportsListForm;

interface

uses
  frm00_ParentForm, Classes, Forms, Controls, ComCtrls, Oracle;
//  Windows, Messages, Graphics, Dialogs,
//  StdCtrls,

type
  Tfrm10_ReportsList = class(Tfrm00_Parent)
    tvList: TTreeView;
    oqUpdate: TOracleQuery;
    procedure tvListDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure BuildTree();
    procedure DropTree();
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm10_ReportsList: Tfrm10_ReportsList;

implementation

uses
  SysUtils, FileCtrl, dm005_MainData, unt203_Reports, untMessages,
  frm10_ReportsPrmForm, dm03_ReportsData, Matrix, A00_MatrixConst,
  untParams;

{$R *.DFM}

{ Tfrm10_ReportsList }

class function Tfrm10_ReportsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm10_ReportsList;
end;

class function Tfrm10_ReportsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm10_ReportsList;
end;

class procedure Tfrm10_ReportsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm10_ReportsList) := AForm;
end;

procedure Tfrm10_ReportsList.tvListDblClick(Sender: TObject);
var
  VReport: TReport;
  VRepBook: TReports;
  VParam: TRepParam;
begin
  VReport := TReport(tvList.Selected.Data);

  if not VReport.Executable then exit;

  if not DirectoryExists(dmMain.ParamList.Values['RepOutputPath']) then
    begin
    TAppMessages.Error('Укажите путь к папке с отчетами! Зайдите в Главное меню/Сервис/Установить путь к папке отчетов.');
    end;

//  VReport.ResFileName := Concat( dmMain.ParamList.Values['RepOutputPath'], VReport.ResFileName );

  // изменяем параметры
  if Tfrm10_ReportsPrm.RetriveRepParams(VReport) then
    begin
    case VReport.ID of
      43: // Отчет 109а
        begin
        VRepBook := TReports.Create(nil);
        VRepBook.ResultFileName := VReport.ResultFileName;
        //VReport.ResultFileName := '';

        vRepBook.CreateNewFile := False;

        VRepBook.Add;
        VRepBook[VRepBook.Count - 1] := VReport;
        VRepBook[VRepBook.Count - 1].SheetName := 'Фин. орг';
        VParam := VRepBook[VRepBook.Count - 1].Params.Add(dtInteger);
        VParam.Name := 'PAGE_CODE';
        VParam.Value := 1;

        VRepBook.Add;
        VRepBook[VRepBook.Count - 1] := VReport;
        VRepBook[VRepBook.Count - 1].SheetName := 'Нефин. орг';
        VParam := VRepBook[VRepBook.Count - 1].Params.Add(dtInteger);
        VParam.Name := 'PAGE_CODE';
        VParam.Value := 2;

        VRepBook.Add;
        VRepBook[VRepBook.Count - 1] := VReport;
        VRepBook[VRepBook.Count - 1].SheetName := 'Всего';
        VParam := VRepBook[VRepBook.Count - 1].Params.Add(dtInteger);
        VParam.Name := 'PAGE_CODE';
        VParam.Value := 3;

        VRepBook.Add;
        VRepBook[VRepBook.Count - 1] := VReport;
        VRepBook[VRepBook.Count - 1].SheetName := 'По месяцам';
        VParam := VRepBook[VRepBook.Count - 1].Params.Add(dtInteger);
        VParam.Name := 'PAGE_CODE';
        VParam.Value := 4;

        //oqUpdate.Execute; // ALTER SESSION SET NLS_NUMERIC_CHARACTERS = '.,'

        dm03_Reports.ShowRepBook(VRepBook);
        VRepBook.Free;
        end;
      else
        // вызываем отчет
        dm03_Reports.ShowReport(VReport);
      end;
    end;

  if dmMain.UseMatrix then
    begin
    Matrix.MA.WriteToLog2(format(SHOW_REPORT, [VReport.RepDisplayName]), true, '');
    end;
end;

procedure Tfrm10_ReportsList.BuildTree;
var
  VReport: TReport;
  VParentNode: TTreeNode;
  I, J: Integer;
begin
  DropTree;

  for I := 0 to dm03_Reports.Reports.Count - 1 do
    begin
    VReport := dm03_Reports.Reports[I];
    VParentNode := nil;
    if VReport.Visible = True then
      begin
      for J := 0 to tvList.Items.Count - 1 do
        begin
        if TReport(tvList.Items.Item[J].Data).ID = VReport.ParentID then
          begin
          VParentNode := tvList.Items.Item[J];
	  break;
          end;
        end;

      if not Assigned(VParentNode) then
        begin
        VParentNode := tvList.Items.GetFirstNode;
        tvList.Items.AddObject(VParentNode, VReport.RepDisplayName, VReport);
        end
     else
       begin
       tvList.Items.AddChildObject(VParentNode, VReport.RepDisplayName, VReport);
       end;

      end;
    end;
end;

procedure Tfrm10_ReportsList.DropTree;
var
	VReport: TReport;
  I: Integer;
begin
  for I := 0 to tvList.Items.Count - 1 do
  begin
     VReport := TReport(tvList.Items.Item[I].Data);
     if Assigned(VReport) then VReport.Free;
  end;
  tvList.Items.Clear;
end;

procedure Tfrm10_ReportsList.FormCreate(Sender: TObject);
begin
  if not Assigned(dm03_Reports) then
  begin
    Application.CreateForm(Tdm03_Reports, dm03_Reports);
  end;

  BuildTree;

  tvList.FullExpand;
end;

end.
