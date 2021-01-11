object dm04_WorldReport: Tdm04_WorldReport
  OldCreateOrder = False
  Left = 334
  Top = 286
  Height = 480
  Width = 696
  object odsFilter: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T076_ID, T002_BANK_CODE, T076_FILT_01, T076_FILT_02, T076' +
        '_FILT_03, T076_FILT_04 '
      'FROM   V_405_CLASS_KO_FILTER'
      'WHERE T002_BANK_CODE = :T002_BANK_CODE')
    Variables.Data = {
      03000000010000000F0000003A543030325F42414E4B5F434F44450500000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543037365F49440100000000000E000000543030
      325F42414E4B5F434F44450100000000000C000000543037365F46494C545F30
      310100000000000C000000543037365F46494C545F30320100000000000C0000
      00543037365F46494C545F30330100000000000C000000543037365F46494C54
      5F3034010000000000}
    Session = dmMain.OracleSession
    Left = 42
    Top = 36
    object odsFilterT076_ID: TFloatField
      FieldName = 'T076_ID'
    end
    object odsFilterT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsFilterT076_FILT_01: TStringField
      FieldName = 'T076_FILT_01'
      Size = 1
    end
    object odsFilterT076_FILT_02: TStringField
      FieldName = 'T076_FILT_02'
      Size = 1
    end
    object odsFilterT076_FILT_03: TStringField
      FieldName = 'T076_FILT_03'
      Size = 1
    end
    object odsFilterT076_FILT_04: TStringField
      FieldName = 'T076_FILT_04'
      Size = 1
    end
  end
  object odsKOState: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'T069_ID, T002_ID,'
      
        'T067_ID, T067_DESC, T069_DESC, T069_POINT, DECODE(T069_YES_NO, '#39 +
        'Y'#39', '#39'Да'#39', '#39'Нет'#39') T069_YES_NO,'
      'TOTAL_SUM'
      'FROM V_405_CLASS_KO_STATE'
      'WHERE T002_ID = :T002_ID'
      'ORDER BY T067_ID ASC'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543036395F494401000000000007000000543036
      375F494401000000000009000000543036375F44455343010000000000090000
      00543036395F444553430100000000000B000000543036395F5945535F4E4F01
      00000000000A000000543036395F504F494E5401000000000009000000544F54
      414C5F53554D01000000000007000000543030325F4944010000000000}
    Session = dmMain.OracleSession
    Left = 120
    Top = 103
    object odsKOStateT069_ID: TFloatField
      FieldName = 'T069_ID'
      Required = True
    end
    object odsKOStateT067_ID: TFloatField
      FieldName = 'T067_ID'
      Required = True
    end
    object odsKOStateT067_DESC: TStringField
      FieldName = 'T067_DESC'
      Required = True
      Size = 255
    end
    object odsKOStateT069_DESC: TStringField
      FieldName = 'T069_DESC'
      Required = True
      Size = 2000
    end
    object odsKOStateT069_POINT: TFloatField
      FieldName = 'T069_POINT'
      Required = True
    end
    object odsKOStateT069_YES_NO: TStringField
      FieldName = 'T069_YES_NO'
      Required = True
      Size = 5
    end
    object odsKOStateTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object odsKOStateT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
  end
  object odsRezidState: TOracleDataSet
    SQL.Strings = (
      'SELECT     V1.T102_ID,'
      '           V3.T012_ID,'
      '           V3.T055_ID,'
      '           V3.T103_ID,'
      '           V1.T101_ID,'
      '           V2.T101_NUMBER,'
      '           V2.T101_DESC,'
      '           V1.T102_DESC,'
      '           V1.T102_POINT,'
      
        '           DECODE (V1.T102_YES_NO, '#39'Y'#39', '#39'Да'#39', '#39'Нет'#39') T102_YES_NO' +
        ','
      
        '           SUM (V1.T102_POINT) OVER (PARTITION BY V1.T103_ID) TO' +
        'TAL_SUM,'
      
        '           Pk_405_Classification.f_get_nres_list (:T002_ID, :T01' +
        '2_ID) NREZID_LIST'
      'FROM       T102_REZID_STATE V1,'
      '           T101_REZID_CRITERIONS V2,'
      '           T103_REZID_STATE_PERIOD V3'
      'WHERE      V1.T101_ID = V2.T101_ID'
      'AND        V1.T103_ID = V3.T103_ID'
      'AND        V3.T012_ID = :T012_ID'
      'AND        V3.T055_ID = :T055_ID'
      'ORDER BY   T101_ID')
    Variables.Data = {
      0300000003000000080000003A543031325F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543030
      325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C00000009000000544F54414C5F53554D0100000000000700000054
      3130325F494401000000000007000000543031325F4944010000000000070000
      00543035355F494401000000000007000000543130335F494401000000000007
      000000543130315F494401000000000009000000543130315F44455343010000
      00000009000000543130325F444553430100000000000A000000543130325F50
      4F494E540100000000000B000000543130325F5945535F4E4F0100000000000B
      0000004E52455A49445F4C4953540100000000000B000000543130315F4E554D
      424552010000000000}
    Session = dmMain.OracleSession
    Left = 296
    Top = 31
    object odsRezidStateT102_ID: TFloatField
      FieldName = 'T102_ID'
      Required = True
    end
    object odsRezidStateT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsRezidStateT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsRezidStateT103_ID: TFloatField
      FieldName = 'T103_ID'
      Required = True
    end
    object odsRezidStateT101_ID: TFloatField
      FieldName = 'T101_ID'
      Required = True
    end
    object odsRezidStateT101_DESC: TStringField
      FieldName = 'T101_DESC'
      Required = True
      Size = 255
    end
    object odsRezidStateT102_DESC: TStringField
      FieldName = 'T102_DESC'
      Required = True
      Size = 4000
    end
    object odsRezidStateT102_POINT: TFloatField
      FieldName = 'T102_POINT'
      Required = True
    end
    object odsRezidStateT102_YES_NO: TStringField
      FieldName = 'T102_YES_NO'
      Size = 3
    end
    object odsRezidStateNREZID_LIST: TStringField
      FieldName = 'NREZID_LIST'
      Size = 4000
    end
    object odsRezidStateTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object odsRezidStateT101_NUMBER: TIntegerField
      FieldName = 'T101_NUMBER'
      Required = True
    end
  end
  object odsOperGroupState: TOracleDataSet
    SQL.Strings = (
      'SELECT     T070_ID,'
      '           T071_ID,'
      '           T068_ID,'
      '           T068_NUM,'
      '           T068_DESC,'
      '           T070_DESC,'
      '           T070_POINT,'
      '           DECODE (T070_YES_NO, '#39'Y'#39', '#39'Да'#39', '#39'Нет'#39') T070_YES_NO,'
      '           TOTAL_SUM,'
      '           T068_CALC_PERIOD'
      'FROM       V_405_CLASS_CONTR_STATE'
      'WHERE      T071_ID = :T071_ID'
      'ORDER BY   T068_NUM')
    Variables.Data = {
      0300000001000000080000003A543037315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A00000009000000544F54414C5F53554D0100000000000700000054
      3037305F494401000000000007000000543037315F4944010000000000070000
      00543036385F494401000000000009000000543036385F444553430100000000
      0009000000543037305F444553430100000000000A000000543037305F504F49
      4E540100000000000B000000543037305F5945535F4E4F010000000000080000
      00543036385F4E554D01000000000010000000543036385F43414C435F504552
      494F44010000000000}
    Session = dmMain.OracleSession
    Left = 296
    Top = 103
    object odsOperGroupStateT070_ID: TFloatField
      FieldName = 'T070_ID'
      Required = True
    end
    object odsOperGroupStateT071_ID: TFloatField
      FieldName = 'T071_ID'
      Required = True
    end
    object odsOperGroupStateT068_ID: TFloatField
      FieldName = 'T068_ID'
      Required = True
    end
    object odsOperGroupStateT068_DESC: TStringField
      FieldName = 'T068_DESC'
      Required = True
      Size = 255
    end
    object odsOperGroupStateT070_DESC: TStringField
      FieldName = 'T070_DESC'
      Required = True
      Size = 4000
    end
    object odsOperGroupStateT070_POINT: TFloatField
      FieldName = 'T070_POINT'
      Required = True
    end
    object odsOperGroupStateT070_YES_NO: TStringField
      DisplayWidth = 3
      FieldName = 'T070_YES_NO'
      Required = True
      Size = 3
    end
    object odsOperGroupStateTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object odsOperGroupStateT068_NUM: TIntegerField
      FieldName = 'T068_NUM'
    end
    object odsOperGroupStateT068_CALC_PERIOD: TStringField
      FieldName = 'T068_CALC_PERIOD'
      Size = 255
    end
  end
  object odsRezids: TOracleDataSet
    SQL.Strings = (
      'SELECT     T012_ID,'
      '           T012_NAME,'
      '           T012_CODE'
      'FROM       V_405_CLASS_REZID_GRP_SALDO'
      'WHERE      T001_OP_STATE = '#39'Y'#39
      'AND        T002_ID = :T002_ID'
      'ORDER BY   ABS (T001_OP_SUM_SALDO_F) DESC')
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543031325F494401000000000009000000543031
      325F4E414D4501000000000009000000543031325F434F444501000000000013
      000000543030315F4F505F53554D5F53414C444F5F46010000000000}
    Session = dmMain.OracleSession
    Left = 200
    Top = 31
    object odsRezidsT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsRezidsT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsRezidsT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
  end
  object odsOperGroups: TOracleDataSet
    SQL.Strings = (
      'SELECT    V1.T002_ID,'
      '           V1.T012_ID,'
      '           V1.T027_ID,'
      '           V1.T027_SEC_TYPE,'
      '           V2.T027_COMMENTS,'
      '           V1.OP_GRP_STATE,'
      '           V1.TOTAL_STATE,'
      '           V1.T001_OP_SUM_SALDO / 1000 AS T001_OP_SUM_SALDO,'
      '           V1.T001_OP_SUM_SALDO_F / 1000 AS T001_OP_SUM_SALDO_F'
      'FROM       V_405_CLASS_OPER_GRP_SALDO V1,'
      '           T027_SEC_TYPE V2'
      'WHERE      V1.T002_ID = :T002_ID'
      'AND        V1.T012_ID = :T012_ID'
      'AND        V1.T071_CALC = '#39'N'#39
      'AND        V1.T027_ID = V2.T027_ID'
      'ORDER BY   ABS (T001_OP_SUM_SALDO_F) DESC')
    Variables.Data = {
      0300000002000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543030325F494401000000000007000000543031
      325F494401000000000007000000543032375F49440100000000000D00000054
      3032375F5345435F545950450100000000000C0000004F505F4752505F535441
      54450100000000000B000000544F54414C5F5354415445010000000000110000
      00543030315F4F505F53554D5F53414C444F0100000000000D00000054303237
      5F434F4D4D454E545301000000000013000000543030315F4F505F53554D5F53
      414C444F5F46010000000000}
    Session = dmMain.OracleSession
    Left = 200
    Top = 103
    object odsOperGroupsT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsOperGroupsT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsOperGroupsT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsOperGroupsT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsOperGroupsOP_GRP_STATE: TFloatField
      FieldName = 'OP_GRP_STATE'
    end
    object odsOperGroupsTOTAL_STATE: TFloatField
      FieldName = 'TOTAL_STATE'
    end
    object odsOperGroupsT001_OP_SUM_SALDO: TFloatField
      FieldName = 'T001_OP_SUM_SALDO'
    end
    object odsOperGroupsT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
    object odsOperGroupsT001_OP_SUM_SALDO_F: TFloatField
      FieldName = 'T001_OP_SUM_SALDO_F'
    end
  end
  object oqGetT071_ID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T071_ID := PK_405_Classification.f_get_T071_id('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T027_ID'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543037315F494404000000
      0000000000000000}
    Left = 200
    Top = 153
  end
end
