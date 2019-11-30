object dm03_Reports: Tdm03_Reports
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 106
  Top = 131
  Height = 480
  Width = 696
  object odsRepList: TOracleDataSet
    SQL.Strings = (
      'SELECT      H002_ID,'
      '                      H002_PARENT_ID,'
      '                      H002_POSITION,'
      '                      H002_DISPLAY_NAME,'
      '                      H002_FILE_NAME,'
      '                      H002_TEMP_NAME,'
      '                      H002_CLASS_NAME,'
      '                      H002_EXECUTABLE,'
      '                      H002_VISIBLE'
      'FROM          V_405_REPORTS'
      'ORDER BY H002_POSITION'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000483030325F49440100000000000E000000483030
      325F504152454E545F49440100000000000D000000483030325F504F53495449
      4F4E01000000000011000000483030325F444953504C41595F4E414D45010000
      0000000E000000483030325F46494C455F4E414D450100000000000E00000048
      3030325F54454D505F4E414D450100000000000F000000483030325F434C4153
      535F4E414D450100000000000F000000483030325F45584543555441424C4501
      0000000000}
    Session = dmMain.OracleSession
    Left = 24
    Top = 8
  end
  object odsRepPrm: TOracleDataSet
    SQL.Strings = (
      'SELECT      H004_ID,'
      '                     H004_NAME,'
      '                     H004_DESC,'
      '                     H004_CLASS_NAME,'
      '                     H004_DATA_TYPE,'
      '                     H004_TYPE,'
      '                     H004_VISIBLE'
      'FROM          V_405_REPORTS_PARAMS'
      'WHERE      H002_ID = :H002_ID'
      'ORDER BY H005_POSITION'
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A483030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000533030335F494401000000000009000000533030
      335F4E414D4501000000000009000000533030335F444553430100000000000F
      000000533030335F434C4153535F4E414D450100000000000E00000053303033
      5F444154415F5459504501000000000009000000533030335F54595045010000
      0000000C000000533030335F56495349424C4501000000000007000000533030
      325F4944010000000000}
    Session = dmMain.OracleSession
    Left = 80
    Top = 56
  end
  object odsPrmOut: TOracleDataSet
    SQL.Strings = (
      'SELECT   H006_NAME,'
      '                  H006_STR, '
      '                H006_DATE, '
      '                H006_NUMB'
      'FROM        V_405_REP_PRM_OUT')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000533030365F4E414D450100000000000A00000053
      3030365F56414C5545010000000000}
    Session = dmMain.OracleSession
    Left = 304
    Top = 248
  end
  object pkRepUtils: TOraclePackage
    Session = dmMain.OracleSession
    PackageName = 'PK_405_REPORTS_UTILS'
    ParameterMode = pmNamed
    Left = 192
    Top = 155
  end
  object odsRepData: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  :c_tmp := pk_reports_data.f_build_rep_01;'
      'end;')
    ReadBuffer = 50
    Variables.Data = {0300000001000000060000003A435F544D50740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {04000000010000000100000031010000000000}
    ReadOnly = True
    Session = dmMain.OracleSession
    Left = 248
    Top = 200
  end
  object odsRepTables: TOracleDataSet
    SQL.Strings = (
      'SELECT   H007_PROC_NAME, H007_START_ROW, H007_START_COL'
      'FROM'#9' V_405_REPORTS_TABLES'
      'WHERE    H002_ID = :H002_ID'
      'ORDER BY H007_POSITION desc'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A483030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000533030375F50524F435F4E414D45010000000000
      0E000000533030375F53544152545F524F570100000000000E00000053303037
      5F53544152545F434F4C010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 104
  end
  object odsPeriods: TOracleDataSet
    SQL.Strings = (
      'SELECT   DECODE(GROUPING(V1.T055_ID), 0, V1.T055_ID,'
      '           DECODE(GROUPING(V2.T055_ID), 0, V2.T055_ID,'
      
        '             DECODE(GROUPING(V3.T055_ID), 0, V3.T055_ID))) T055_' +
        'ID,'
      '         DECODE(GROUPING(V1.T055_ID), 0, V1.T055_LONG_NAME,'
      '           DECODE(GROUPING(V2.T055_ID), 0, V2.T055_LONG_NAME,'
      
        '             DECODE(GROUPING(V3.T055_ID), 0, V3.T055_LONG_NAME))' +
        ') T055_LONG_NAME,'
      '         DECODE(GROUPING(V1.T055_ID), 0, V1.T055_TYPE,'
      '           DECODE(GROUPING(V2.T055_ID), 0, V2.T055_TYPE,'
      
        '             DECODE(GROUPING(V3.T055_ID), 0, V3.T055_TYPE))) T05' +
        '5_TYPE'
      'FROM     V_405_TIME V1,'
      '         V_405_TIME V2,'
      '         V_405_TIME V3'
      'WHERE    V1.T055_TYPE <> '#39'D'#39
      'AND      V2.T055_TYPE <> '#39'D'#39
      'AND      V1.T055_END_DATE < SYSDATE'
      'AND      V1.T055_PARENT_ID = V2.T055_ID '
      'AND      V2.T055_PARENT_ID = V3.T055_ID '
      'GROUP BY ROLLUP(V3.T055_ID, V3.T055_LONG_NAME, V3.T055_TYPE, '
      '                V2.T055_ID, V2.T055_LONG_NAME, V2.T055_TYPE,'
      '                V1.T055_ID, V1.T055_LONG_NAME, V1.T055_TYPE)'
      
        'HAVING   NOT (V1.T055_ID = 1 AND V2.T055_ID = 1 AND V3.T055_ID =' +
        ' 1)'
      'AND      GROUPING(V1.T055_ID) = GROUPING(V1.T055_LONG_NAME)'
      'AND      GROUPING(V2.T055_ID) = GROUPING(V2.T055_LONG_NAME)'
      'AND      GROUPING(V3.T055_ID) = GROUPING(V3.T055_LONG_NAME)'
      'AND      GROUPING(V1.T055_ID) = GROUPING(V1.T055_TYPE)'
      'AND      GROUPING(V2.T055_ID) = GROUPING(V2.T055_TYPE)'
      'AND      GROUPING(V3.T055_ID) = GROUPING(V3.T055_TYPE)'
      'ORDER BY V3.T055_ID DESC, V2.T055_ID DESC, V1.T055_ID DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D4501000000000009000000543035355F545950450100
      00000000}
    Session = dmMain.OracleSession
    Left = 496
    Top = 8
    object odsPeriodsT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsPeriodsT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsPeriodsT055_TYPE: TStringField
      FieldName = 'T055_TYPE'
      Size = 1
    end
  end
  object oqGetPeriod: TOracleQuery
    SQL.Strings = (
      'declare'
      '  vT055_ID   NUMBER;'
      'begin'
      '  vT055_ID :=  Pk_405_Calc_Remains.f_get_q02_id;'
      ' :RESULT := vT055_ID;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000070000003A524553554C5404000000080000000000000000
      7C9C4000000000}
    Left = 504
    Top = 120
  end
  object oqSetPeriod: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Calc_Remains.p_set_period_id (:T055_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Left = 504
    Top = 176
  end
end
