object dm03_Reports: Tdm03_Reports
  OldCreateOrder = False
  OnCreate = DataModuleCreate
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
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000080000000E00000048003000300032005F0049004400010000000000
      1C00000048003000300032005F0050004100520045004E0054005F0049004400
      0100000000001A00000048003000300032005F0050004F005300490054004900
      4F004E000100000000002200000048003000300032005F004400490053005000
      4C00410059005F004E0041004D0045000100000000001C000000480030003000
      32005F00460049004C0045005F004E0041004D0045000100000000001C000000
      48003000300032005F00540045004D0050005F004E0041004D00450001000000
      00001E00000048003000300032005F0043004C004100530053005F004E004100
      4D0045000100000000001E00000048003000300032005F004500580045004300
      55005400410042004C004500010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0048003000300032005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000000E00000053003000300033005F0049004400010000000000
      1200000053003000300033005F004E0041004D00450001000000000012000000
      53003000300033005F0044004500530043000100000000001E00000053003000
      300033005F0043004C004100530053005F004E0041004D004500010000000000
      1C00000053003000300033005F0044004100540041005F005400590050004500
      0100000000001200000053003000300033005F00540059005000450001000000
      00001800000053003000300033005F00560049005300490042004C0045000100
      000000000E00000053003000300032005F0049004400010000000000}
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
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001200000053003000300036005F004E0041004D0045000100
      000000001400000053003000300036005F00560041004C005500450001000000
      0000}
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
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0043005F0054004D0050007400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {0500000001000000020000003100010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0048003000300032005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001C00000053003000300037005F00500052004F0043005F00
      4E0041004D0045000100000000001C00000053003000300037005F0053005400
      4100520054005F0052004F0057000100000000001C0000005300300030003700
      5F00530054004100520054005F0043004F004C00010000000000}
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
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000E00000054003000350035005F0049004400010000000000
      1C00000054003000350035005F004C004F004E0047005F004E0041004D004500
      0100000000001200000054003000350035005F00540059005000450001000000
      0000}
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
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A0052004500530055004C005400040000000800
      000000000000007C9C4000000000}
    Left = 504
    Top = 120
  end
  object oqSetPeriod: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Calc_Remains.p_set_period_id (:T055_ID);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000350035005F004900440004000000
      0000000000000000}
    Left = 504
    Top = 176
  end
end
