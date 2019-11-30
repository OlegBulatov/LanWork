object dm01_Main: Tdm01_Main
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 142
  Top = 205
  Height = 480
  Width = 696
  object odsTree: TOracleDataSet
    SQL.Strings = (
      'SELECT  '
      ' M001_ID,'
      ' M001_PARENT_ID,'
      ' M001_CLASS_NAME,'
      ' M001_DISPL_NAME,'
      ' M001_MX_OPERATION,'
      ' M001_POSITION, '
      ' M001_IMAGE_INDEX'
      'FROM'#9'V_NR_TREE'
      'ORDER BY M001_POSITION')
    QBEDefinition.SaveQBEValues = False
    QBEDefinition.AllowFileWildCards = False
    QBEDefinition.QBEFieldDefs = {
      0400000007000000070000004D3030315F49440100000000000E0000004D3030
      315F504152454E545F49440100000000000F0000004D3030315F434C4153535F
      4E414D450100000000000F0000004D3030315F444953504C5F4E414D45010000
      000000110000004D3030315F4D585F4F5045524154494F4E0100000000000D00
      00004D3030315F504F534954494F4E010000000000100000004D3030315F494D
      4147455F494E444558010000000000}
    Session = dmMain.OracleSession
    Left = 56
    Top = 80
    object odsTreeM001_ID: TFloatField
      FieldName = 'M001_ID'
      Required = True
    end
    object odsTreeM001_PARENT_ID: TFloatField
      FieldName = 'M001_PARENT_ID'
    end
    object odsTreeM001_CLASS_NAME: TStringField
      FieldName = 'M001_CLASS_NAME'
      Size = 50
    end
    object odsTreeM001_DISPL_NAME: TStringField
      FieldName = 'M001_DISPL_NAME'
      Required = True
      Size = 250
    end
    object odsTreeM001_MX_OPERATION: TStringField
      FieldName = 'M001_MX_OPERATION'
      Size = 50
    end
    object odsTreeM001_POSITION: TFloatField
      FieldName = 'M001_POSITION'
      Required = True
    end
    object odsTreeM001_IMAGE_INDEX: TFloatField
      FieldName = 'M001_IMAGE_INDEX'
    end
  end
  object oqGetSetting: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  :H003_VALUE := Pk_Form_405.f_get_setting(:H003_NAME);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000B0000003A483030335F56414C5545050000000000000000
      0000000A0000003A483030335F4E414D45050000000000000000000000}
    Left = 56
    Top = 136
  end
  object oqSetSetting: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Form_405.p_set_setting(:H003_NAME, :H003_VALUE);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000B0000003A483030335F56414C5545050000000000000000
      0000000A0000003A483030335F4E414D45050000000000000000000000}
    Left = 56
    Top = 192
  end
  object odsTime: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '    T055_ID,'
      '    T055_Y_ID'
      'FROM V_NR_TIME'
      'WHERE TRUNC(SYSDATE) BETWEEN T055_START_DATE AND T055_END_DATE'
      'AND T055_TYPE = '#39'M'#39
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000009000000543035
      355F595F4944010000000000}
    Session = dmMain.OracleSession
    Left = 56
    Top = 248
    object odsTimeT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsTimeT055_Y_ID: TFloatField
      FieldName = 'T055_Y_ID'
    end
  end
  object odsMonth1: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN(T055_ID) as T055_ID'
      'FROM V_NR_TIME'
      'WHERE T055_Y_ID = (SELECT T055_ID FROM'
      '                  V_NR_TIME'
      
        '                  WHERE ADD_MONTHS(SYSDATE, -12) BETWEEN T055_ST' +
        'ART_DATE AND T055_END_DATE'
      '                  AND T055_TYPE = '#39'Y'#39')'
      'AND T055_TYPE = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {040000000100000007000000543035355F4944010000000000}
    Session = dmMain.OracleSession
    Left = 293
    Top = 67
    object odsMonth1T055_ID: TFloatField
      FieldName = 'T055_ID'
    end
  end
  object odsMonth2: TOracleDataSet
    SQL.Strings = (
      'SELECT MAX(T055_ID) as T055_ID'
      'FROM V_NR_TIME'
      'WHERE T055_Y_ID = (SELECT T055_ID FROM'
      '                  V_NR_TIME'
      
        '                  WHERE SYSDATE BETWEEN T055_START_DATE AND T055' +
        '_END_DATE'
      '                  AND T055_TYPE = '#39'Y'#39')'
      'AND T055_TYPE = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {040000000100000007000000543035355F4944010000000000}
    Session = dmMain.OracleSession
    Left = 365
    Top = 67
    object odsMonth2T055_ID: TFloatField
      FieldName = 'T055_ID'
    end
  end
end
