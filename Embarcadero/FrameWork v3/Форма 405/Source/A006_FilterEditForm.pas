unit A006_FilterEditForm;

interface

uses
  frm04_EditForm, StdCtrls, DBCtrls, Mask, Buttons, Controls, Classes,
  ActnList, ExtCtrls, Db, A006_SelectorForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TA006_FilterEdit = class(Tfrm04_Edit)
    Label1: TLabel;
    ed01: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    actsShowSelector: TAction;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure Label4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actsShowSelectorExecute(Sender: TObject);
    procedure DBComboBox1DropDown(Sender: TObject);
  private
    FForm: TA006_Selector;
    function SelectItems: Boolean;
  public
    procedure SetDataSource(Value: TDataSource); override;
    //
    function SaveChange: Boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  A006_FilterEdit: TA006_FilterEdit;

implementation

uses Forms, untMessages;
//uses A006_FilterListFrame, dm02_PictersData

{$R *.DFM}

class function TA006_FilterEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA006_FilterEdit;
end;

class function TA006_FilterEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := A006_FilterEdit;
end;

procedure TA006_FilterEdit.Label4Click(Sender: TObject);
begin
  //

end;

class procedure TA006_FilterEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A006_FilterEdit) := AForm;
end;

procedure TA006_FilterEdit.FormShow(Sender: TObject);
begin
  if not Assigned(FForm) then
  begin
    FForm := TA006_Selector.Create(Self);
  end;
  FForm.Selected := True;
  FForm.OnSelect := SelectItems;
end;

procedure TA006_FilterEdit.SetDataSource(Value: TDataSource);
begin
  ed01.DataSource := Value;
  DBComboBox2.DataSource := Value;
  DBComboBox1.DataSource := Value;
  DBMemo1.DataSource := Value;
end;

procedure TA006_FilterEdit.actsShowSelectorExecute(Sender: TObject);
begin
  // показываем селектор
  FForm.T161_ID := ed01.DataSource.DataSet.FieldByName('T161_ID').AsFloat;

  if FForm.ShowModal = mrOk then
  begin
    Self.ModalResult := mrOk;
  end;
end;

function TA006_FilterEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  if DBComboBox1.Field.IsNull then
  begin
    if DBComboBox1.CanFocus then DBComboBox1.SetFocus;
    TAppMessages.Error('Введите значение для фильтра!');
  end;

  Result := inherited SaveChange;
end;

procedure TA006_FilterEdit.DBComboBox1DropDown(Sender: TObject);
begin
  // заполняем список
  FForm.T161_ID := ed01.DataSource.DataSet.FieldByName('T161_ID').AsFloat;
  if FForm.odsList.RecordCount > 100 then
  begin
    DBComboBox1.Items.Clear;
    DBComboBox1.Items.Add('Запрошен большой массив данных!');
    DBComboBox1.Items.Add('Воспользуйтесь кнопкой "Список..."!');
    DBComboBox1.Items.Add('...');
    DBComboBox1.Items.Add(' ');
    DBComboBox1.Items.Add(' ');
    //actsShowSelector.Execute;
  end else
  begin
    FForm.FillStrings(DBComboBox1.Items);
  end;
end;

function TA006_FilterEdit.SelectItems: Boolean;
var
 VValue: string;
begin
  Result := False;
  VValue := FForm.Values;

  // проверка максимальная длинна списка значений не более 4000 символов
  if Length(VValue) > DBComboBox1.Field.Size then
  begin
    TAppMessages.ShowError('Превышено количество выбранных записей!!!')
  end else
  begin
    DBComboBox1.Field.AsString := FForm.Values;
    Result := True;
  end;
end;

end.
