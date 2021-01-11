// Direct Oracle Access - Component registration unit
// Copyright 1997, 2001 Allround Automations
// support@allroundautomations.nl
// http://www.allroundautomations.nl

{$WARNINGS OFF}

unit OracleReg;

interface

uses
  {$IFDEF VER140} DesignIntf, DesignEditors, {$ELSE} DsgnIntf, {$ENDIF}
  Classes, SysUtils, DB, OracleData, Oracle, OracleCI, OracleTypes, OracleLogon,
  OracleNavigator, OracleTools, OracleDesign;

procedure Register;

implementation

{$R Oracle.dcr}

procedure Register;
{$IFNDEF VER140}
var TmpDataSet: TDataSet;
    TmpDataSetEditor: TComponentEditor;
{$ENDIF}
begin
  RegisterComponents('Data Access', [TOracleSession]);
  RegisterComponents('Data Access', [TOracleLogon]);
  RegisterComponents('Data Access', [TOracleQuery]);
  RegisterComponents('Data Access', [TOracleDataSet]);
  RegisterComponents('Data Access', [TOraclePackage]);
  RegisterComponents('Data Access', [TOracleEvent]);
  RegisterComponents('Data Access', [TOracleScript]);
  RegisterComponents('Data Access', [TOracleDirectPathLoader]);
  RegisterComponents('Data Access', [TOracleNavigator]);
  RegisterPropertyEditor(TypeInfo(TVariables), nil, '', TVariablesProperty);
  RegisterPropertyEditor(TypeInfo(TSequenceField), nil, '', TSequenceFieldProperty);
  RegisterPropertyEditor(TypeInfo(TQBEDefinition), nil, '', TQBEDefinitionProperty);
  RegisterPropertyEditor(TypeInfo(TDisabledConstraints), nil, '', TDisabledConstraintsProperty);
  RegisterPropertyEditor(TypeInfo(string), TOracleSession, 'LogonDatabase', TDatabaseProperty);
  RegisterPropertyEditor(TypeInfo(TDirectPathColumns), nil, '', TDirectPathColumnsProperty);
  RegisterComponentEditor(TOracleQuery, TOracleQueryEditor);
  RegisterComponentEditor(TOracleSession, TOracleSessionEditor);
  RegisterComponentEditor(TOraclePackage, TOraclePackageEditor);
  RegisterComponentEditor(TOracleScript, TOracleScriptEditor);
  RegisterComponentEditor(TOracleDirectPathLoader, TOracleDirectPathLoaderEditor);
  RegisterComponentEditor(TOracleLogon, TOracleLogonEditor);
  {$IFDEF VER140}
  RegisterComponentEditor(TOracleDataSet, TOracleDataSetEditor);
  {$ELSE}
  // Some tricks to add component editors to TOracleDataSet's Fields Editor
  TmpDataSet := nil;
  TmpDataSetEditor := nil;
  try
    TmpDataSet := TDataSet.Create(nil);
    TmpDataSetEditor := GetComponentEditor(TmpDataSet, nil);
    OracleDataSetEditorClass := TComponentEditorClass(TmpDataSetEditor.ClassType);
    RegisterComponentEditor(TOracleDataSet, TOracleDataSetEditor);
  finally
    TmpDataSetEditor.Free;
    TmpDataSet.Free;
  end;
  {$ENDIF}
  RegisterOracleTools;
end;

end.

