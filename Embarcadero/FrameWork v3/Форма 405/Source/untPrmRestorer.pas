{******************************************************************************}
{                                                                              }
{  untPrmRestorer                                                              }
{  Модуль для хранения параметров в Registry                                   }
{                                                                              }
{  Ланит                                                                       }
{                                                                              }
{  Долженко А.C. 2002 г.                                                       }
{                                                                              }
{  TComponentPropertyRestorer - класс для чтения/записи данных из Registry     }
{                                                                              }
{******************************************************************************}

unit untPrmRestorer;

interface

uses
  Classes, Forms, SysUtils, Controls, StdCtrls, ComCtrls, ExtCtrls, Registry,
  unt205_Params, CheckLst;  //, SocketConBDE

const
  REG_KEY = 'Software\Lanit\';        // ключ в Registry

  // TEdit
  TEDIT_PRM_COUNT = 1;
  TEDIT_PRM_HIGH_INDEX = TEDIT_PRM_COUNT - 1;
  TEDIT_PRM_NAME: array[0..TEDIT_PRM_HIGH_INDEX] of string = ('Text');
  TEDIT_PRM_TYPE: array[0..TEDIT_PRM_HIGH_INDEX] of TDataType = (dtString);
  TEDIT_PRM_SECTION = 'TEdit';

  // TCheckListBox
  TCHECK_LIST_BOX_PRM_SECTION = 'TCheckListBox';

  // TComboBox
  TCOMBO_BOX_PRM_COUNT = 1;
  TCOMBO_BOX_PRM_HIGH_INDEX = TEDIT_PRM_COUNT - 1;
  TCOMBO_BOX_PRM_NAME: array[0..TCOMBO_BOX_PRM_HIGH_INDEX] of string = ('ItemIndex');
  TCOMBO_BOX_PRM_TYPE: array[0..TCOMBO_BOX_PRM_HIGH_INDEX] of TDataType = (dtInteger);
  TCOMBO_BOX_PRM_SECTION = 'TComboBox';

  // TCheckBox
  TCHECK_BOX_BOX_PRM_COUNT = 1;
  TCHECK_BOX_PRM_HIGH_INDEX = TCHECK_BOX_BOX_PRM_COUNT - 1;
  TCHECK_BOX_PRM_NAME: array[0..TCHECK_BOX_PRM_HIGH_INDEX] of string = ('Checked');
  TCHECK_BOX_PRM_TYPE: array[0..TCHECK_BOX_PRM_HIGH_INDEX] of TDataType = (dtBoolean);
  TCHECK_BOX_PRM_SECTION = 'TCheckBox';

  // TRadioGroup
  TRADIO_GROUP_PRM_COUNT = 1;
  TRADIO_GROUP_PRM_HIGH_INDEX = TRADIO_GROUP_PRM_COUNT - 1;
  TRADIO_GROUP_PRM_NAME: array[0..TRADIO_GROUP_PRM_HIGH_INDEX] of string = ('ItemIndex');
  TRADIO_GROUP_PRM_TYPE: array[0..TRADIO_GROUP_PRM_HIGH_INDEX] of TDataType = (dtInteger);
  TRADIO_GROUP_PRM_SECTION = 'TRadioGroup';

  // TForm
  TFORM_PRM_COUNT = 5;
  TFORM_PRM_HIGH_INDEX = TFORM_PRM_COUNT - 1;
  TFORM_PRM_NAME: array[0..TFORM_PRM_HIGH_INDEX] of string =
    ('WindowsState', 'Width', 'Height', 'Top', 'Left');
  TFORM_PRM_TYPE: array[0..TFORM_PRM_HIGH_INDEX] of TDataType =
    (dtInteger, dtInteger, dtInteger, dtInteger, dtInteger);
  TFORM_PRM_SECTION = 'TForm';

  // TSocketConBDE
  TCON_PRM_COUNT = 2;
  TCON_PRM_HIGH_INDEX = TCON_PRM_COUNT - 1;
  TCON_PRM_NAME: array[0..TCON_PRM_HIGH_INDEX] of string =
    ('Server Name', 'Host');
  TCON_PRM_TYPE: array[0..TCON_PRM_HIGH_INDEX] of TDataType =
    (dtString, dtString);
  TCON_PRM_SECTION = 'TSocketConBDE';

  // TPanel
  TPANEL_PRM_COUNT = 1;
  TPANEL_PRM_HIGH_INDEX = TPANEL_PRM_COUNT - 1;
  TPANEL_PRM_NAME: array[0..TPANEL_PRM_HIGH_INDEX] of string =
    ('Width');
  TPANEL_PRM_TYPE: array[0..TPANEL_PRM_HIGH_INDEX] of TDataType =
    (dtInteger);
  TPANEL_PRM_SECTION = 'TPanel';

  // TTreeView
  TTREEVIEW_PRM_COUNT = 1;
  TTREEVIEW_PRM_HIGH_INDEX = TTREEVIEW_PRM_COUNT - 1;
  TTREEVIEW_PRM_NAME: array[0..TTREEVIEW_PRM_HIGH_INDEX] of string =
    ('Selected');
  TTREEVIEW_PRM_TYPE: array[0..TTREEVIEW_PRM_HIGH_INDEX] of TDataType =
    (dtInteger);
  TTREEVIEW_PRM_SECTION = 'TTreeView';

  // TTreeNodes
  TTREENODES_PRM_COUNT = 1;
  TTREENODES_PRM_HIGH_INDEX = TTREENODES_PRM_COUNT - 1;
  TTREENODES_PRM_NAME: array[0..TTREENODES_PRM_HIGH_INDEX] of string =
    ('Collapse');
  TTREENODES_PRM_TYPE: array[0..TTREENODES_PRM_HIGH_INDEX] of TDataType =
    (dtBoolean);
  TTREENODES_PRM_SECTION = 'TTreeNode';

type
  EComponentPropertyRestorer = class(Exception);
  TComponentPropertyRestorer = class(TComponent)
  private
    FSection: string;
    FParams: TRepParams;
    FRegistryIniFile: TRegistryIniFile;
    function GetParamByName(const ParamName: string): TRepParam;
  protected
    FComponent: TComponent;
    function GetApplicationID: string;
    function GetKeyName: string; virtual;
    function GetTypeName: string; virtual; abstract;
    function GetCompName: string; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadParams; virtual;
    procedure SaveParams; virtual;
    function FindParam(const ParamName: string): TRepParam;
    property RegistryIniFile: TRegistryIniFile read FRegistryIniFile;
    property Section: string read FSection;
    property Params: TRepParams read FParams write FParams;
    property Component: TComponent read FComponent write FComponent;
    property ParamByName[const ParamName: string]: TRepParam read GetParamByName;
    class procedure Error(const Msg: string);
    class procedure ErrorFmt(const Msg: string; const Args: array of const);
    class procedure LoadCompParams(AComponent: TComponent);
    class procedure SaveCompParams(AComponent: TComponent);
  end;

  TContolPropertyRestorer = class(TComponentPropertyRestorer)
  private
    function GetControl: TControl;
  protected
    function GetFormName: string; virtual;
    function GetKeyName: string; override;
  public
    property Control: TControl read GetControl;
  end;

  TSocketConBDERestorer = class(TContolPropertyRestorer)
//  private
  //  function GetSocketConBDE: TSocketConBDE;
  protected
//    function GetFormName: string; override;
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
//    procedure LoadParams; override;
//    procedure SaveParams; override;
    //property SocketConBDE: TSocketConBDE read GetSocketConBDE;
  end;

  // TEdit
  TEditPropertyRestorer = class(TContolPropertyRestorer)
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
  end;

  // TPanel
  TPanelPropertyRestorer = class(TContolPropertyRestorer)
  private
    function GetPanel: TPanel;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property Panel: TPanel read GetPanel;
  end;


  TCustomTreeViewRestorer = class(TContolPropertyRestorer)
  private
    function GetTreeView: TTreeView;
  protected
    function GetTypeName: string; override;
  public
    property TreeView: TTreeView read GetTreeView;
  end;

  // TTreeView
  TTreeViewPropertyRestorer = class(TCustomTreeViewRestorer)
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
  end;

  // TTreeNodes
  TTreeNodesPropertyRestorer = class(TCustomTreeViewRestorer)
  private
    function GetTreeNodes: TTreeNodes;
    function GetAttrName(const AIndex: integer): string;
  protected
    function GetTypeName: string; override;
    function GetCompName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property TreeNodes: TTreeNodes read GetTreeNodes;
  end;

  //TCheckListBox
  TCheckListBoxPropertyRestorer = class(TContolPropertyRestorer)
  private
    function GetCheckListBox: TCheckListBox;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property CheckListBox: TCheckListBox read GetCheckListBox;
  end;

  //TComboBox
  TComboBoxRestorer = class(TContolPropertyRestorer)
  private
    function GetComboBox: TComboBox;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property ComboBox: TComboBox read GetComboBox;
  end;

  //TCheckBox
  TCheckBoxRestorer = class(TContolPropertyRestorer)
  private
    function GetCheckBox: TCheckBox;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property CheckBox: TCheckBox read GetCheckBox;
  end;

  // TRadioGroup
  TRadioGroupRestorer = class(TContolPropertyRestorer)
  private
    function GetRadioGroup: TRadioGroup;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property RadioGroup: TRadioGroup read GetRadioGroup;
  end;

  // TForm
  TFormRestorer = class(TContolPropertyRestorer)
  private
    function GetForm: TForm;
  protected
    function GetTypeName: string; override;
    function GetFormName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property Form: TForm read GetForm;
  end;

implementation

//uses Dialogs;

resourcestring
  INVALID_READ = 'Ошибка чтения данных из REGISTRY: %s';
  INVALID_WRITE = 'Ошибка записи данных в REGISTRY: %s';
  SInvalidRegPrm = 'Неизвестный тип параметра!';
  SCanNotFoundForm = 'Ошибка! Не найдена форма!';

{ TComponentPropertyRestorer }

constructor TComponentPropertyRestorer.Create(AOwner: TComponent);
begin
  inherited;
  FComponent := AOwner;

  // параметры
  FParams := TRepParams.Create(Self);

  // формируем ключ реестра
  FRegistryIniFile := TRegistryIniFile.Create(GetKeyName);

  // формируем название секции
  FSection := GetCompName;
end;

destructor TComponentPropertyRestorer.Destroy;
begin
  FRegistryIniFile.Free;
  FParams.Free;
  inherited;
end;

class procedure TComponentPropertyRestorer.Error(const Msg: string);
begin
  raise EComponentPropertyRestorer.Create(Msg);
end;

class procedure TComponentPropertyRestorer.ErrorFmt(const Msg: string;
  const Args: array of const);
begin
  raise EComponentPropertyRestorer.CreateFmt(Msg, Args);
end;

function TComponentPropertyRestorer.GetParamByName(
  const ParamName: string): TRepParam;
begin
  Result := FParams.ParamByName(ParamName);
end;

procedure TComponentPropertyRestorer.LoadParams;
var
  I: Integer;
  VItem: TRepParam;
begin
  try
    for I := 0 to FParams.Count - 1 do
    begin
      VItem := FParams.Items[I];
      case VItem.DataType of
        dtBoolean: VItem.AsBoolean := FRegistryIniFile.ReadBool(FSection, VItem.Name, VItem.AsBoolean);
        dtDateTime: VItem.AsDateTime := FRegistryIniFile.ReadDateTime(FSection, VItem.Name, VItem.AsDateTime);
        dtFloat: VItem.AsFloat := FRegistryIniFile.ReadFloat(FSection, VItem.Name, VItem.AsFloat);
        dtInteger: VItem.AsInteger := FRegistryIniFile.ReadInteger(FSection, VItem.Name, VItem.AsInteger);
        dtString: VItem.AsString := FRegistryIniFile.ReadString(FSection, VItem.Name, VItem.AsString);
        dtVariant: VItem.AsVariant := FRegistryIniFile.ReadString(FSection, VItem.Name, VItem.AsVariant);
      else
        Error(SInvalidRegPrm);
      end;
    end;
  except
    on E: Exception do ErrorFmt(INVALID_READ, [E.Message]);
  end;
end;

procedure TComponentPropertyRestorer.SaveParams;
var
  I: Integer;
  VItem: TRepParam;
begin
  try
    // очищаем секцию
    if FRegistryIniFile.SectionExists(FSection) then
    begin
      FRegistryIniFile.EraseSection(FSection);
    end;

    // сохраняем параметры
    for I := 0 to FParams.Count - 1 do
    begin
      VItem := FParams.Items[I];
      case VItem.DataType of
        dtBoolean: FRegistryIniFile.WriteBool(FSection, VItem.Name, VItem.AsBoolean);
        dtDateTime: FRegistryIniFile.WriteDateTime(FSection, VItem.Name, VItem.AsDateTime);
        dtFloat: FRegistryIniFile.WriteFloat(FSection, VItem.Name, VItem.AsFloat);
        dtInteger: FRegistryIniFile.WriteInteger(FSection, VItem.Name, VItem.AsInteger);
        dtString: FRegistryIniFile.WriteString(FSection, VItem.Name, VItem.AsString);
        dtVariant: FRegistryIniFile.WriteString(FSection, VItem.Name, VItem.AsVariant);
      else
        Error(SInvalidRegPrm);
      end;
    end;
  except
    on E: Exception do ErrorFmt(INVALID_WRITE, [E.Message]);
  end;
end;

class procedure TComponentPropertyRestorer.LoadCompParams(
  AComponent: TComponent);
var
  VRestorer: TComponentPropertyRestorer;
begin
  VRestorer := Self.Create(AComponent);
  try
    VRestorer.LoadParams;
  finally
    VRestorer.Free;
  end;
end;

class procedure TComponentPropertyRestorer.SaveCompParams(
  AComponent: TComponent);
var
  VRestorer: TComponentPropertyRestorer;
begin
  VRestorer := Self.Create(AComponent);
  try
    VRestorer.SaveParams;
  finally
    VRestorer.Free;
  end;
end;

function TComponentPropertyRestorer.GetCompName: string;
begin
  Result := FComponent.Name;
end;

function TComponentPropertyRestorer.GetKeyName: string;
begin
  //Ключ в реестре = ID приложения + ID "чем" сохраняем
  Result := Format('%s\%s', [GetApplicationID, GetTypeName]);
end;

function TComponentPropertyRestorer.GetApplicationID: string;
var
  I: Integer;
begin
  // получаем название EXE файла без расширения
  Result := ExtractFileName(Application.ExeName);
  I := LastDelimiter('.\:', Result);
  if (I = 0) or (Result[I] <> '.') then I := MaxInt;
  Result := Copy(Result, 1, I - 1);
  Result := Concat(REG_KEY, Result);
end;

function TComponentPropertyRestorer.FindParam(
  const ParamName: string): TRepParam;
begin
  Result := FParams.FindParam(ParamName);
end;

{ TEditPropertyRestorer }

constructor TEditPropertyRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TEDIT_PRM_COUNT - 1 do
  begin
    NewParam := FParams.Add(TEDIT_PRM_TYPE[I]);
    NewParam.Name := TEDIT_PRM_NAME[I];
  end;
end;

function TEditPropertyRestorer.GetTypeName: string;
begin
  Result := TEDIT_PRM_SECTION;
end;

procedure TEditPropertyRestorer.LoadParams;
begin
  inherited;
  TEdit(FComponent).Text := FParams.ParamByName(TEDIT_PRM_NAME[0]).AsString;
end;

procedure TEditPropertyRestorer.SaveParams;
begin
  FParams.ParamByName(TEDIT_PRM_NAME[0]).AsString := TEdit(FComponent).Text;
  inherited;
end;

{ TCheckListBoxPropertyRestorer }

constructor TCheckListBoxPropertyRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to CheckListBox.Items.Count - 1 do
  begin
    NewParam := FParams.Add(dtBoolean);
    NewParam.Name := IntToStr(I);
  end;
end;

function TCheckListBoxPropertyRestorer.GetCheckListBox: TCheckListBox;
begin
  Result := FComponent as TCheckListBox;
end;

function TCheckListBoxPropertyRestorer.GetTypeName: string;
begin
  Result := TCHECK_LIST_BOX_PRM_SECTION;
end;

procedure TCheckListBoxPropertyRestorer.LoadParams;
var
  I: Integer;
begin
  inherited;
  for I := 0 to CheckListBox.Items.Count - 1 do
  begin
    CheckListBox.Checked[I] := FParams.ParamByName(IntToStr(I)).AsBoolean;
  end;
end;

procedure TCheckListBoxPropertyRestorer.SaveParams;
var
  I: Integer;
begin
  for I := 0 to CheckListBox.Items.Count - 1 do
  begin
    FParams.ParamByName(IntToStr(I)).AsBoolean := CheckListBox.Checked[I];
  end;
  inherited;
end;

{ TComboBoxRestorer }

constructor TComboBoxRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TCOMBO_BOX_PRM_COUNT - 1 do
  begin
    NewParam := FParams.Add(TCOMBO_BOX_PRM_TYPE[I]);
    NewParam.Name := TCOMBO_BOX_PRM_NAME[I];
  end;
end;

function TComboBoxRestorer.GetComboBox: TComboBox;
begin
  Result := FComponent as TComboBox;
end;

function TComboBoxRestorer.GetTypeName: string;
begin
  Result := TCOMBO_BOX_PRM_SECTION;
end;

procedure TComboBoxRestorer.LoadParams;
begin
  inherited;
  ComboBox.ItemIndex := FParams.ParamByName(TCOMBO_BOX_PRM_NAME[0]).AsInteger;
end;

procedure TComboBoxRestorer.SaveParams;
begin
  FParams.ParamByName(TCOMBO_BOX_PRM_NAME[0]).AsInteger := ComboBox.ItemIndex;
  inherited;
end;

{ TCheckBoxRestorer }

constructor TCheckBoxRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TCHECK_BOX_BOX_PRM_COUNT - 1 do
  begin
    NewParam := FParams.Add(TCHECK_BOX_PRM_TYPE[I]);
    NewParam.Name := TCHECK_BOX_PRM_NAME[I];
  end;
end;

function TCheckBoxRestorer.GetCheckBox: TCheckBox;
begin
  Result := FComponent as TCheckBox;
end;

function TCheckBoxRestorer.GetTypeName: string;
begin
  Result := TCHECK_BOX_PRM_SECTION;
end;

procedure TCheckBoxRestorer.LoadParams;
begin
  inherited;
  CheckBox.Checked := FParams.ParamByName(TCHECK_BOX_PRM_NAME[0]).AsBoolean;
end;

procedure TCheckBoxRestorer.SaveParams;
begin
  FParams.ParamByName(TCHECK_BOX_PRM_NAME[0]).AsBoolean := CheckBox.Checked;
  inherited;
end;

{ TRadioGroupRestorer }

constructor TRadioGroupRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TRADIO_GROUP_PRM_COUNT - 1 do
  begin
    NewParam := FParams.Add(TRADIO_GROUP_PRM_TYPE[I]);
    NewParam.Name := TRADIO_GROUP_PRM_NAME[I];
  end;
end;

function TRadioGroupRestorer.GetRadioGroup: TRadioGroup;
begin
  Result := FComponent as TRadioGroup;
end;

function TRadioGroupRestorer.GetTypeName: string;
begin
  Result := TRADIO_GROUP_PRM_SECTION;
end;

procedure TRadioGroupRestorer.LoadParams;
begin
  inherited;
  RadioGroup.ItemIndex := FParams.ParamByName(TRADIO_GROUP_PRM_NAME[0]).AsInteger;
end;

procedure TRadioGroupRestorer.SaveParams;
begin
  FParams.ParamByName(TRADIO_GROUP_PRM_NAME[0]).AsInteger := RadioGroup.ItemIndex;
  inherited;
end;

{ TContoltPropertyRestorer }

function TContolPropertyRestorer.GetControl: TControl;
begin
  Result := Component as TControl;
end;

function TContolPropertyRestorer.GetFormName: string;
var
  VParent: TControl;
begin
  // ищем название формы на которой лежит контрол
  VParent := Control.Parent;
  if not Assigned(VParent) then Error(SCanNotFoundForm);
  while not (VParent is TForm) do
  begin
    VParent := VParent.Parent;
    if not Assigned(VParent) then Error(SCanNotFoundForm);
  end;
  Result := TForm(VParent).Name;
end;

function TContolPropertyRestorer.GetKeyName: string;
begin
  // Ключ в реестре = ID приложения + ID формы + ID "чем" сохраняем
  Result := Format('%s\%s\%s', [GetApplicationID, GetFormName, GetTypeName]);
end;

{ TFormRestorer }

constructor TFormRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;

  Form.Position := poDesigned;

  for I := 0 to TFORM_PRM_HIGH_INDEX do
  begin
    NewParam := FParams.Add(TFORM_PRM_TYPE[I]);
    NewParam.Name := TFORM_PRM_NAME[I];
  end;

  // знаяения по умолчанию
  ParamByName[TFORM_PRM_NAME[0]].AsInteger := Integer(Form.WindowState);
  ParamByName[TFORM_PRM_NAME[1]].AsInteger := Form.Width;
  ParamByName[TFORM_PRM_NAME[2]].AsInteger := Form.Height;
  ParamByName[TFORM_PRM_NAME[3]].AsInteger := Form.Top;
  ParamByName[TFORM_PRM_NAME[4]].AsInteger := Form.Left;
end;

function TFormRestorer.GetForm: TForm;
begin
  Result := FComponent as TForm;
end;

function TFormRestorer.GetFormName: string;
begin
  Result := Form.Name;
end;

function TFormRestorer.GetTypeName: string;
begin
  Result := TFORM_PRM_SECTION;
end;

procedure TFormRestorer.LoadParams;
begin
  inherited;
  // восстанавливаем состояние окна
  Form.WindowState := TWindowState(ParamByName[TFORM_PRM_NAME[0]].AsInteger);

  // восстанавливаем размеры и положение
  if Form.WindowState = wsNormal then
  begin
    Form.SetBounds(
      ParamByName[TFORM_PRM_NAME[4]].AsInteger,
      ParamByName[TFORM_PRM_NAME[3]].AsInteger,
      ParamByName[TFORM_PRM_NAME[1]].AsInteger,
      ParamByName[TFORM_PRM_NAME[2]].AsInteger
      );
  end;
end;

procedure TFormRestorer.SaveParams;
begin
  if Form.WindowState = wsMinimized then Exit;

  // сохраняем состояние окна
  ParamByName[TFORM_PRM_NAME[0]].AsInteger := Integer(Form.WindowState);

  // сохраняем положение окна
  if Form.WindowState = wsNormal then
  begin
    ParamByName[TFORM_PRM_NAME[1]].AsInteger := Form.Width;
    ParamByName[TFORM_PRM_NAME[2]].AsInteger := Form.Height;
    ParamByName[TFORM_PRM_NAME[3]].AsInteger := Form.Top;
    ParamByName[TFORM_PRM_NAME[4]].AsInteger := Form.Left;
  end;
  inherited;
end;

{ TSocketConBDERestorer }

constructor TSocketConBDERestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TCON_PRM_HIGH_INDEX do
  begin
    NewParam := FParams.Add(TCON_PRM_TYPE[I]);
    NewParam.Name := TCON_PRM_NAME[I];
  end;
end;

//function TSocketConBDERestorer.GetFormName: string;
//begin
//  // добавляем к секции
//  // название формы на которой лежит SocketConBDE
//  Result := SocketConBDE.Owner.Name;
//end;
//
//function TSocketConBDERestorer.GetSocketConBDE: TSocketConBDE;
//begin
//  Result := Component as TSocketConBDE;
//end;

function TSocketConBDERestorer.GetTypeName: string;
begin
  Result := TCON_PRM_SECTION;
end;

//procedure TSocketConBDERestorer.LoadParams;
//begin
//  inherited;
//  SocketConBDE.Params.Values[TCON_PRM_NAME[0]] := ParamByName[TCON_PRM_NAME[0]].AsString;
//  SocketConBDE.Host := ParamByName[TCON_PRM_NAME[1]].AsString;
//end;
//
//procedure TSocketConBDERestorer.SaveParams;
//begin
//  ParamByName[TCON_PRM_NAME[0]].AsString := SocketConBDE.Params.Values['SERVER NAME'];
//  ParamByName[TCON_PRM_NAME[1]].AsString := SocketConBDE.Host;
//  inherited;
//end;

{ TPanelPropertyRestorer }

constructor TPanelPropertyRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TPANEL_PRM_COUNT - 1 do
  begin
    NewParam := FParams.Add(TPANEL_PRM_TYPE[I]);
    NewParam.Name := TPANEL_PRM_NAME[I];
  end;

  ParamByName['Width'].AsInteger := Panel.Width;
end;

function TPanelPropertyRestorer.GetPanel: TPanel;
begin
  Result := FComponent as TPanel;
end;

function TPanelPropertyRestorer.GetTypeName: string;
begin
  Result := TPANEL_PRM_SECTION;
end;

procedure TPanelPropertyRestorer.LoadParams;
begin
  inherited;
  Panel.Width := FParams.ParamByName(TPANEL_PRM_NAME[0]).AsInteger;
end;

procedure TPanelPropertyRestorer.SaveParams;
begin
  FParams.ParamByName(TPANEL_PRM_NAME[0]).AsInteger := Panel.Width;
  inherited;
end;

{ TTreeViewPropertyRestorer }

constructor TTreeViewPropertyRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;
  for I := 0 to TTREEVIEW_PRM_COUNT - 1 do
  begin
    NewParam := Params.Add(TTREEVIEW_PRM_TYPE[I]);
    NewParam.Name := TTREEVIEW_PRM_NAME[I];
  end;
end;

function TCustomTreeViewRestorer.GetTreeView: TTreeView;
begin
  Result := FComponent as TTreeView;
end;

function TCustomTreeViewRestorer.GetTypeName: string;
begin
  Result := TTREEVIEW_PRM_SECTION;
end;

procedure TTreeViewPropertyRestorer.LoadParams;
var
  VNode: TTreeNode;
begin
  inherited;
  VNode := TreeView.Items[FParams.ParamByName(TTREEVIEW_PRM_NAME[0]).AsInteger];
  TreeView.Selected := VNode;
end;

procedure TTreeViewPropertyRestorer.SaveParams;
begin
  FParams.ParamByName(TTREEVIEW_PRM_NAME[0]).AsInteger := TreeView.Selected.AbsoluteIndex;
  inherited;
end;

{ TTreeNodePropertyRestorer }

constructor TTreeNodesPropertyRestorer.Create(AOwner: TComponent);
var
  I: Integer;
  NewParam: TRepParam;
begin
  inherited;

  // создаем список параметров
  for I := 0 to TreeNodes.Count - 1 do
  begin
    NewParam := Params.Add(TTREENODES_PRM_TYPE[0]);
    NewParam.Name := GetAttrName(I);
  end;
end;

function TTreeNodesPropertyRestorer.GetAttrName(
  const AIndex: integer): string;
begin
  Result := IntToStr(TreeNodes[AIndex].AbsoluteIndex); 
end;

function TTreeNodesPropertyRestorer.GetCompName: string;
begin
  Result := TTREENODES_PRM_SECTION;
end;

function TTreeNodesPropertyRestorer.GetTreeNodes: TTreeNodes;
begin
  Result := TreeView.Items;
end;

function TTreeNodesPropertyRestorer.GetTypeName: string;
begin
  Result := Concat(inherited GetTypeName, '\', inherited GetCompName);
end;

procedure TTreeNodesPropertyRestorer.LoadParams;
var
  I: Integer;
begin
  inherited;
  // создаем список параметров
  for I := 0 to TreeNodes.Count - 1 do
  begin
    TreeNodes[I].Expanded := ParamByName[GetAttrName(I)].AsBoolean;
  end;
end;

procedure TTreeNodesPropertyRestorer.SaveParams;
var
  I: Integer;
begin
  for I := 0 to TreeNodes.Count - 1 do
  begin
    ParamByName[GetAttrName(I)].AsBoolean := TreeNodes[I].Expanded;
  end;
  inherited;
end;

end.
