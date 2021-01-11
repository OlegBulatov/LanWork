unit dm01_MainData;

interface

uses
  Forms, ComCtrls, Oracle, Classes, Db, OracleData, untDBTree;

type
  Tdm01_Main = class(TDataModule)
    odsTree: TOracleDataSet;
    oqStartReplication: TOracleQuery;
    oqSetSessionParams: TOracleQuery;
  private
    { Private declarations }
    //procedure LoadRegParams();
    //procedure SaveRegParams();
  public
    ViewHistory: boolean;
    ParamList: TStringList;
    //
    function FillTree(const ATreeView: TTreeView): TDBTree;

    constructor Create(AOwner: TComponent); override;
  end;

var
  dm01_Main: Tdm01_Main;

implementation

uses dm005_MainData, Windows, SysUtils;

//uses Matrix, dm005_MainData;

{$R *.DFM}

{ Tdm01_Main }

constructor Tdm01_Main.Create(AOwner: TComponent);
begin
  inherited;

  oqSetSessionParams.Execute;

{$IFNDEF BANK_VERSION}
  try
    dmMain.oqDbCheck.Execute;
  except
    Application.MessageBox('Разрешена работа только с тестовой БД.'+#13#10+'Измените настройки реестра.', PChar(Application.Title), MB_OK + MB_ICONSTOP);
    Application.Terminate;
    Exit;
  end;
  if dmMain.oqDbCheck.Field(0) <> 'Y' then
    begin
    Application.MessageBox('Разрешена работа только с тестовой БД.'+#13#10+'Измените настройки реестра.', PChar(Application.Title), MB_OK + MB_ICONSTOP);
    Application.Terminate;
    end;
{$ENDIF}
end;

function Tdm01_Main.FillTree(const ATreeView: TTreeView): TDBTree;
begin
  // рисуем дерево
  Result := TDBTreeManager.FillTree(
     ATreeView,
     odsTree,
     'H001_ID',
     'H001_PARENT_ID',
     'H001_DISPL_NAME',
     'H001_CLASS_NAME',
     'H001_MX_OPERATION',
     'H001_IMAGE_INDEX');
end;

{
procedure Tdm01_Main.LoadRegParams();
var
  Freg: TRegistry;
  StringListValues: TStringList;
  i: integer;
begin
  StringListValues:= TStringList.Create;
  try
    Freg:= TRegistry.Create;
    FReg.RootKey:= HKEY_CURRENT_USER;
    try
      FReg.OpenKey(REGISTRY_KEY, true);
      FReg.GetValueNames(StringListValues);
      for i:= 0 to StringListValues.Count - 1 do
        ParamList.Values[StringListValues[i]]:= FReg.ReadString(StringListValues[i]);
    finally
      FReg.CloseKey;
      FReg.Free;
    end;
  finally
    StringListValues.Free;
  end;
  if ParamList.Values['Database'] = '' then ParamList.Values['Database']:= DATABASE;
  //if ParamList.Values['UserName'] = '' then ParamList.Values['UserName']:= USERNAME;
  //if ParamList.Values['Matrix'] = '' then ParamList.Values['Matrix']:= 'N';
  if ParamList.Values['TreeSize'] = '' then ParamList.Values['TreeSize']:= '114';
end;

procedure Tdm01_Main.SaveRegParams();
var
  Freg: TRegistry;
  i: integer;
  val: string;
begin
  Freg:= TRegistry.Create;
  Freg.RootKey:= HKEY_CURRENT_USER;
  try
    Freg.OpenKey(REGISTRY_KEY, true);
    for i:= 0 to ParamList.Count - 1 do
    begin
    	val := ParamList.Values[ParamList.Names[i]];
    	if val <> '' then	Freg.WriteString(ParamList.Names[i], val);
    end;
  finally
    Freg.CloseKey;
    Freg.Free;
  end;
end;
}

end.
