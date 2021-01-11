unit dm007_Settings;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Oracle, Db, OracleData;

type
  TdmSettings = class(TDataModule)
    oqSave: TOracleQuery;
    oqClear: TOracleQuery;
    odsLoad: TOracleDataSet;
  private
  public
    function GetName(AControl, AOwner: TComponent): string;
    procedure ClearSettings(AControl, AOwner: TComponent);
    procedure SaveSetting(AControl, AOwner: TComponent);
    procedure LoadSetting(AControl, AOwner: TComponent);
    //
    procedure SaveRegSetting(AKey, AValue: string);
    function  GetRegSetting(AKey: string): string;
  end;

var
  dmSettings: TdmSettings;

implementation

uses
  StdCtrls, dm005_MainData, xxxDbLookupCheckCombo, Registry;

{$R *.DFM}

{ TdmSettings }

function TdmSettings.GetName(AControl, AOwner: TComponent): string;
var
  vCtrl: TComponent;
begin
  Result := '';
  vCtrl := AControl;
  while vCtrl.Owner <> nil do
    begin
    if Result <> '' then
      Result := '.' + Result;
    Result := vCtrl.Name + Result;
    if vCtrl.Name = AOwner.Name then
      break;
    vCtrl := vCtrl.Owner;
    end;
end;

procedure TdmSettings.ClearSettings(AControl, AOwner: TComponent);
begin
  oqClear.SetVariable('NAME', GetName(AControl, AOwner));
  oqClear.Execute;
end;

procedure TdmSettings.SaveSetting(AControl, AOwner: TComponent);
var
  vName: string;
  i: integer;
begin
  vName := GetName(AControl, AOwner);

  if AControl is TCheckBox then
    with AControl as TCheckBox do
      begin
      oqSave.SetVariable('NAME', vName);
      oqSave.SetVariable('NO', 0);
      oqSave.SetVariable('VALUE', IntToStr(Integer(Checked)));
      oqSave.Execute;
      end
  else if AControl is TComboBox then
    with AControl as TComboBox do
      begin
      oqSave.SetVariable('NAME', vName);
      oqSave.SetVariable('NO', 1);
      oqSave.SetVariable('VALUE', Items[ItemIndex]);
      oqSave.Execute;
      end
  else if AControl is TxxxDBLookupCheckCombo then
    with AControl as TxxxDBLookupCheckCombo do
      if lsChecked in ListStyle then
        begin
        for i := 0 to KeyValuesStr.Count - 1 do
          begin
          oqSave.SetVariable('NAME', vName);
          oqSave.SetVariable('NO', i + 1);
          oqSave.SetVariable('VALUE', KeyValuesStr[i]);
          oqSave.Execute;
          end;
        end
      else
        begin
        oqSave.SetVariable('NAME', vName);
        oqSave.SetVariable('NO', 1);
        oqSave.SetVariable('VALUE', KeyValue);
        oqSave.Execute;
        end
  else if AControl is TEdit then
    with AControl as TEdit do
      begin
        oqSave.SetVariable('NAME', vName);
        oqSave.SetVariable('NO', 1);
        oqSave.SetVariable('VALUE', Text);
        oqSave.Execute;
        end
  else
    ShowMessage(AControl.ClassName + ' in SaveSetting not implemented yet.');
end;

procedure TdmSettings.LoadSetting(AControl, AOwner: TComponent);
var
  vName: string;
  vValues: TStringList;
begin
  vName := GetName(AControl, AOwner);
  odsLoad.Close;
  odsLoad.SetVariable('NAME', vName);
  odsLoad.Open;
  if not odsLoad.IsEmpty then
    begin
    if AControl is TCheckBox then
      with AControl as TCheckBox do
        begin
        Checked := Boolean(odsLoad.Fields[0].AsInteger);
        end
    else if AControl is TComboBox then
      with AControl as TComboBox do
        begin
        ItemIndex := Items.IndexOf(odsLoad.Fields[0].AsString);
        end
    else if AControl is TxxxDBLookupCheckCombo then
      with AControl as TxxxDBLookupCheckCombo do
        begin
        if odsLoad.Fields[1].AsInteger = 0 then
          begin
          KeyValue := odsLoad.Fields[0].Value;
          end
        else
          begin
          vValues := TStringList.Create;
          while not odsLoad.Eof do
            begin
            vValues.Add(odsLoad.Fields[0].AsString);
            odsLoad.Next;
            end;
          KeyValuesStr := vValues;
          end;
        end
    else if AControl is TEdit then
      with AControl as TEdit do
        begin
        Text := odsLoad.Fields[0].AsString;
        end
    else
      ShowMessage(AControl.ClassName + ' in LoadSetting not implemented yet.');
    end;

  odsLoad.Close;
end;

procedure TdmSettings.SaveRegSetting(AKey, AValue: string);
var
  Reg: TRegistry;
begin
  // save in registry
  Reg := TRegistry.Create;
  Reg.LazyWrite := False;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(dmMain.ProgramRegistryKey, False) then
    begin
      Reg.WriteString(AKey, AValue);
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

function TdmSettings.GetRegSetting(AKey: string): string;
var
  Reg: TRegistry;
begin
  Result := '';
  // get from registry
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(dmMain.ProgramRegistryKey, False) then
      begin
      Result:= Reg.ReadString(AKey);
      end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

end.
