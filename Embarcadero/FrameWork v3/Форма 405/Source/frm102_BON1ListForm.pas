unit frm102_BON1ListForm;

interface

uses
  frm14_DBFParentListForm, Windows, StdCtrls, ComCtrls, Db, Grids, DBGrids,
  fm03_DateFrame, fm04_LookUpFrame, frm00_ParentForm, fm02_PrmParentFrame,
  Dialogs, Oracle, OracleData, Menus, Classes, ActnList, fm31_FilterFrame,
  Forms, fmSeach, xxxDBGrid, ToolWin, Controls, ExtCtrls, Variants;
//  Messages, Classes, Graphics, Controls, Dialogs,
//  OracleData, Menus, ActnList,
//   Buttons, Mask, DBCtrls, ExtCtrls, fmSeach,
//   xxxDBGrid, ToolWin, , frm04_EditForm, frm04_TabListItemForm,
//  fm31_FilterFrame, fm02_PrmParentFrame

type
  Tfrm102_BON1List = class(Tfrm14_DBFParentList)
    fm03_DateFrom: Tfm03_Date;
    odsListT115_ID: TFloatField;
    odsListT115_DATE: TDateTimeField;
    odsListT115_RIC: TStringField;
    odsListT115_CLOSE: TFloatField;
    odsListT115_LOAD_DATE: TDateTimeField;
    odsListT115_COMMENT: TStringField;
    fm03_DateUpto: Tfm03_Date;
    fm04_LookUp1: Tfm04_LookUp;
    CheckBox1: TCheckBox;
    odsListT116_ID: TFloatField;
    cbPeriod: TCheckBox;
    tbRecalc: TToolButton;
    odsListT116_ISIN: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cbPeriodClick(Sender: TObject);
    procedure tbRecalcClick(Sender: TObject);
  private
  protected
    //
    procedure InitFileCode; override;
    //
    function RequestLoad: boolean; override;
    procedure BeforeLoad; override;
    procedure AfterLoad; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm102_BON1List: Tfrm102_BON1List;

resourcestring
  SFileNotFound =
    'Файл ''%s'' '              + #13#10 +
    'не найден!';
  SErrorLoad =
    'Ошибка при загрузке файла!'              + #13#10 +
    '%s';

implementation

uses
  SysUtils, frm14_LoadConstUnt, untMessages, frm04_ListForm;
//uses Matrix, dm005_MainData, DBF, ,

{$R *.DFM}

{ T102_BON1List }

class function Tfrm102_BON1List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm102_BON1List;
end;

class function Tfrm102_BON1List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm102_BON1List;
end;

procedure Tfrm102_BON1List.InitFileCode;
begin
  FileCode := ftBON1;
end;

class procedure Tfrm102_BON1List.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm102_BON1List) := AForm;
end;

function Tfrm102_BON1List.RequestLoad: boolean;
var
  fName: string;
  i:     integer;
  selCount: integer;
begin
  selCount := 0;
  for i := 0 to ListView.Items.Count-1 do
    if ListView.Items[i].Checked then
      selCount := selCount + 1;

  case selCount of
    0:   begin
	 TAppMessages.ShowInformation('Выберите файлы для загрузки.');
	 Result := FALSE;
	 end;
    1:   begin
	 for i := 0 to ListView.Items.Count-1 do
	   if ListView.Items[i].Checked then
	     break;
	 fName:= ExtractFileName(ListView.Items[i].Caption);
	 Result := TAppMessages.ShowConfirmation('Загрузить записи из файла ' + fname +'?');
	 end;
    else begin
	 Result := TAppMessages.ShowConfirmation('Загрузить записи из выбранных файлов?');
	 end;
    end;
end;

procedure Tfrm102_BON1List.BeforeLoad;
begin
  // Очищаем временную таблицу
  oqLoad.DeleteVariables;
  oqLoad.Sql.Text:= 'BEGIN Pk_405_Reuters_Dbf.p_bon1_before_load; END;';
  oqLoad.Execute;
end;

procedure Tfrm102_BON1List.AfterLoad;
begin
  // обрабатываем загруженные данные
  oqLoad.DeleteVariables;
  oqLoad.Sql.Text:= 'BEGIN Pk_405_Reuters_Dbf.p_bon1_after_load(:V_STYLE); END;';
  oqLoad.DeclareVariable('V_STYLE', otString);
  oqLoad.SetVariable('V_STYLE', 'Y');
  oqLoad.Execute;
end;

procedure Tfrm102_BON1List.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{
  if odsList.FieldByName('T030_ID').Text = '' then
    TDBGrid(Sender).Canvas.Font.Color := clRed
  else if odsList.FieldByName('T121_NKD').Text = '' then
    TDBGrid(Sender).Canvas.Font.Color := clMaroon;

  if FNoIndustry then
    TDBGrid(Sender).Canvas.Brush.Color:= RGB($FF,$CC,$99)
  else
    if FInnFound then
      if not FIndustryChanged then
	begin
	TDBGrid(Sender).Canvas.Font.Color := clWhite;
	TDBGrid(Sender).Canvas.Brush.Color:= RGB($99,$99,$99);
	end
      else
	TDBGrid(Sender).Canvas.Brush.Color:= RGB($CC,$CC,$99);

  if Column.FieldName = 'T111_DO_LOAD' then
    TDBGrid(Sender).Canvas.Brush.Color:= clBtnFace;
}

  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

{
  if (Column.FieldName = 'T111_DO_LOAD') and (FNoIndustry = False) then
    begin
    if FInnFound then
      begin
      if (FIndustryChanged = True) or (FUpdate = True) then
	dm02_Picters.ilCommonPictures.Draw(TDBGrid(Sender).Canvas,
	  Rect.Left + ((Rect.Right - Rect.Left - dm02_Picters.ilCommonPictures.Width) div 2),
	  Rect.Top, 22);
      end
    else
      begin
      if FAddNew then
	dm02_Picters.ilCommonPictures.Draw(TDBGrid(Sender).Canvas,
	  Rect.Left + ((Rect.Right - Rect.Left - dm02_Picters.ilCommonPictures.Width) div 2),
	  Rect.Top, 22);
      end;
    end;
}
end;

procedure Tfrm102_BON1List.FormCreate(Sender: TObject);
var
  vDate: TDateTime;
begin
  inherited;
  cbPeriod.Checked := TRUE;
  oqLoad.DeleteVariables;
  oqLoad.Sql.Text:= 'DECLARE THE_DATE DATE; BEGIN select sysdate into THE_DATE from dual; :V_DATE := THE_DATE;  END;';
  oqLoad.DeclareVariable('V_DATE', otDate);
  oqLoad.Execute;
  vDate := oqLoad.GetVariable('V_DATE');
  fm03_DateUpto.dt01.Date := vDate;
  fm03_DateFrom.dt01.Date := IncMonth(vDate, -3);

  fm04_LookUp1.odsList.Open;
  CheckBox1.Checked := FALSE;
  fm04_LookUp1.Label1.Enabled := FALSE;
  fm04_LookUp1.Lookup01.Enabled := FALSE;
end;

procedure Tfrm102_BON1List.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  odsList.Close;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('T115_DATE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T116_ID');

  if cbPeriod.Checked then
    SetDateBetweenFilter('T115_DATE', fm03_DateFrom.dt01.Date, fm03_DateUpto.dt01.Date);

  if CheckBox1.Checked then
    if fm04_LookUp1.Lookup01.KeyValue <> Null then
      SetStrFilter('T116_ID', fm04_LookUp1.Lookup01.KeyValue);

  odsList.Open;

  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm102_BON1List.CheckBox1Click(Sender: TObject);
begin
  fm04_LookUp1.Label1.Enabled := CheckBox1.Checked;
  fm04_LookUp1.Lookup01.Enabled := CheckBox1.Checked;
end;

procedure Tfrm102_BON1List.cbPeriodClick(Sender: TObject);
begin
  fm03_DateFrom.Label1.Enabled := cbPeriod.Checked;
  fm03_DateFrom.dt01.Enabled := cbPeriod.Checked;
  fm03_DateUpTo.Label1.Enabled := cbPeriod.Checked;
  fm03_DateUpTo.dt01.Enabled := cbPeriod.Checked;
end;

procedure Tfrm102_BON1List.tbRecalcClick(Sender: TObject);
begin
  // Бум пересчитывать...
end;

end.
