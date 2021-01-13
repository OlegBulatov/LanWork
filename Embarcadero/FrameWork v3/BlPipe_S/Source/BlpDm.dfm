object BlpDb: TBlpDb
  OldCreateOrder = False
  Left = 107
  Top = 207
  Height = 729
  Width = 620
  object OracleSession: TOracleSession
    BeforeLogOn = OracleSessionBeforeLogOn
    LogonUsername = 'DPB_BL_PIPE'
    LogonPassword = '_'
    LogonDatabase = 'dpb'
    Left = 32
    Top = 8
  end
  object odsTask: TOracleDataSet
    SQL.Strings = (
      'select L025_REQUEST_TYPE,'
      '       L025_PERIODICITY,'
      '       L025_CURRENCY,'
      '       L025_RESULT_PROC,'
      '       L025_NEXT'
      'from   L025_TASKS'
      'where  L025_ID = :L025_ID')
    Variables.Data = {
      0300000001000000080000003A4C3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000110000004C3032355F524551554553545F54595045010000
      000000100000004C3032355F504552494F4449434954590100000000000D0000
      004C3032355F43555252454E4359010000000000090000004C3032355F4E4558
      54010000000000100000004C3032355F524553554C545F50524F430100000000
      00}
    Session = OracleSession
    Left = 104
    Top = 8
    object odsTaskL025_REQUEST_TYPE: TStringField
      FieldName = 'L025_REQUEST_TYPE'
      Required = True
      Size = 3
    end
    object odsTaskL025_PERIODICITY: TStringField
      FieldName = 'L025_PERIODICITY'
      Size = 255
    end
    object odsTaskL025_CURRENCY: TStringField
      FieldName = 'L025_CURRENCY'
      Size = 3
    end
    object odsTaskL025_RESULT_PROC: TStringField
      FieldName = 'L025_RESULT_PROC'
      Size = 255
    end
    object odsTaskL025_NEXT: TFloatField
      FieldName = 'L025_NEXT'
    end
  end
  object odsFields: TOracleDataSet
    SQL.Strings = (
      'select L026_FIELD_ID,'
      '       L026_FIELD_NAME,'
      '       L026_DATATYPE'
      'from   L026_FIELDS'
      'where  L025_ID = :L025_ID'
      'order by L026_FIELD_ID')
    Variables.Data = {
      0300000001000000080000003A4C3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000D0000004C3032365F4649454C445F49440100000000000F
      0000004C3032365F4649454C445F4E414D450100000000000D0000004C303236
      5F4441544154595045010000000000}
    Session = OracleSession
    Left = 104
    Top = 56
    object odsFieldsL026_FIELD_ID: TFloatField
      FieldName = 'L026_FIELD_ID'
      Required = True
    end
    object odsFieldsL026_FIELD_NAME: TStringField
      FieldName = 'L026_FIELD_NAME'
      Required = True
      Size = 255
    end
    object odsFieldsL026_DATATYPE: TStringField
      FieldName = 'L026_DATATYPE'
      Required = True
      Size = 255
    end
  end
  object odsArrays: TOracleDataSet
    SQL.Strings = (
      'select L027_FIELD_NAME,'
      '       L027_DATATYPE'
      'from   L027_ARRAY_FIELDS'
      'where  L025_ID = :L025_ID'
      'and    L026_FIELD_ID = :L026_FIELD_ID'
      'order by L027_POSITION'
      '')
    Variables.Data = {
      0300000002000000080000003A4C3032355F4944040000000000000000000000
      0E0000003A4C3032365F4649454C445F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000F0000004C3032375F4649454C445F4E414D450100000000
      000D0000004C3032375F4441544154595045010000000000}
    Session = OracleSession
    Left = 104
    Top = 104
    object odsArraysL027_FIELD_NAME: TStringField
      FieldName = 'L027_FIELD_NAME'
      Required = True
      Size = 255
    end
    object odsArraysL027_DATATYPE: TStringField
      FieldName = 'L027_DATATYPE'
      Required = True
      Size = 255
    end
  end
  object oqSaveRequest: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :L020_ID := Pk_Requests.SaveRequest('
      '    :L020_REQUEST_DATE,'
      '    :L020_USER,'
      '    :L020_SECURITY,'
      '    :L025_ID,'
      '    :L020_PERIODICITY,'
      '    :L020_DATE_START,'
      '    :L020_DATE_END,'
      '    :L020_CURRENCY,'
      '    :L020_PARENT_ID,'
      '    :ISIN'
      '    );'
      ''
      '  COMMIT;'
      'end;')
    Session = OracleSession
    Variables.Data = {
      030000000B000000080000003A4C3032305F4944040000000000000000000000
      120000003A4C3032305F524551554553545F444154450C000000000000000000
      00000E0000003A4C3032305F5345435552495459050000000000000000000000
      080000003A4C3032355F4944040000000000000000000000110000003A4C3032
      305F504552494F444943495459050000000000000000000000100000003A4C30
      32305F444154455F53544152540C00000000000000000000000E0000003A4C30
      32305F444154455F454E440C00000000000000000000000E0000003A4C303230
      5F43555252454E43590500000000000000000000000A0000003A4C3032305F55
      5345520500000000000000000000000F0000003A4C3032305F504152454E545F
      4944040000000000000000000000050000003A4953494E050000000000000000
      000000}
    Left = 176
    Top = 8
  end
  object oqSaveData: TOracleQuery
    Session = OracleSession
    Left = 176
    Top = 56
  end
  object oqFinalize: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := Pk_Results.f_finalize_request_L('
      '    :L020_ID,'
      '    :L020_RESULT,'
      '    :L020_ERROR_INFO,'
      '    :L025_NEXT'
      '  );'
      '  COMMIT;'
      'end;')
    Session = OracleSession
    Variables.Data = {
      0300000005000000080000003A4C3032305F4944040000000000000000000000
      0C0000003A4C3032305F524553554C5405000000000000000000000010000000
      3A4C3032305F4552524F525F494E464F05000000000000000000000007000000
      3A524553554C540400000000000000000000000A0000003A4C3032355F4E4558
      54040000000000000000000000}
    Left = 176
    Top = 104
  end
  object odsRequest: TOracleDataSet
    SQL.Strings = (
      'select v1.L020_ID,'
      '       --L020_REQUEST_DATE,'
      '       v1.L020_USER,'
      '       v1.L020_SECURITY,'
      '       v1.L025_ID,'
      '       v1.L020_PERIODICITY,'
      '       v1.L020_DATE_START,'
      '       v1.L020_DATE_END,'
      '       v1.L020_CURRENCY,'
      '       --L020_RESULT,'
      '       --L020_ERROR_INFO,'
      '       v1.L020_PARENT_ID,'
      '       --v2.L025_NEXT'
      '       v2.L025_REQUEST_TYPE,'
      '       --v2.L025_PERIODICITY,'
      '       --v2.L025_CURRENCY,'
      '       v2.L025_RESULT_PROC,'
      '       v2.L025_NEXT,'
      '       L020_ISIN'
      'from   L020_REQUESTS v1,'
      '       L025_TASKS v2'
      'where  v1.L025_ID = v2.L025_ID'
      'and    v1.L020_ID = :L020_ID')
    Variables.Data = {
      0300000001000000080000003A4C3032305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D000000070000004C3032305F4944010000000000090000004C3032
      305F555345520100000000000D0000004C3032305F5345435552495459010000
      000000100000004C3032305F504552494F4449434954590100000000000F0000
      004C3032305F444154455F53544152540100000000000D0000004C3032305F44
      4154455F454E440100000000000D0000004C3032305F43555252454E43590100
      000000000E0000004C3032305F504152454E545F494401000000000011000000
      4C3032355F524551554553545F54595045010000000000100000004C3032355F
      524553554C545F50524F43010000000000090000004C3032355F4E4558540100
      00000000070000004C3032355F4944010000000000090000004C3032305F4953
      494E010000000000}
    Session = OracleSession
    Left = 104
    Top = 168
    object odsRequestL020_ID: TFloatField
      FieldName = 'L020_ID'
      Required = True
    end
    object odsRequestL025_ID: TFloatField
      FieldName = 'L025_ID'
    end
    object odsRequestL020_USER: TStringField
      FieldName = 'L020_USER'
      Size = 255
    end
    object odsRequestL020_SECURITY: TStringField
      FieldName = 'L020_SECURITY'
      Size = 255
    end
    object odsRequestL020_PERIODICITY: TStringField
      FieldName = 'L020_PERIODICITY'
      Size = 255
    end
    object odsRequestL020_DATE_START: TDateTimeField
      FieldName = 'L020_DATE_START'
    end
    object odsRequestL020_DATE_END: TDateTimeField
      FieldName = 'L020_DATE_END'
    end
    object odsRequestL020_CURRENCY: TStringField
      FieldName = 'L020_CURRENCY'
      Size = 3
    end
    object odsRequestL020_PARENT_ID: TFloatField
      FieldName = 'L020_PARENT_ID'
    end
    object odsRequestL025_REQUEST_TYPE: TStringField
      FieldName = 'L025_REQUEST_TYPE'
      Required = True
      Size = 3
    end
    object odsRequestL025_RESULT_PROC: TStringField
      FieldName = 'L025_RESULT_PROC'
      Size = 255
    end
    object odsRequestL025_NEXT: TFloatField
      FieldName = 'L025_NEXT'
    end
    object odsRequestL020_ISIN: TStringField
      FieldName = 'L020_ISIN'
      Size = 255
    end
  end
  object odsQueue: TOracleDataSet
    SQL.Strings = (
      'select L010_ID,'
      '       L025_ID,'
      '       L010_ISIN,'
      '       L010_CURRENCY,'
      '       L010_DATE_FROM,'
      '       L010_DATE_TO,'
      '       L010_USER,'
      '       L010_REQUEST_DATE,'
      '       L010_RESULT'
      'from   L010_ASK'
      'where  L010_RESULT IS NULL'
      'order by L010_ID'
      '  ')
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004C3031305F4944010000000000070000004C3032
      355F4944010000000000090000004C3031305F4953494E010000000000090000
      004C3031305F55534552010000000000110000004C3031305F52455155455354
      5F444154450100000000000B0000004C3031305F524553554C54010000000000
      0D0000004C3031305F43555252454E43590100000000000E0000004C3031305F
      444154455F46524F4D0100000000000C0000004C3031305F444154455F544F01
      0000000000}
    Session = OracleSession
    Left = 280
    Top = 8
    object odsQueueL010_ID: TFloatField
      FieldName = 'L010_ID'
      Required = True
    end
    object odsQueueL025_ID: TFloatField
      FieldName = 'L025_ID'
    end
    object odsQueueL010_ISIN: TStringField
      FieldName = 'L010_ISIN'
      Size = 1024
    end
    object odsQueueL010_USER: TStringField
      FieldName = 'L010_USER'
      Size = 255
    end
    object odsQueueL010_REQUEST_DATE: TDateTimeField
      FieldName = 'L010_REQUEST_DATE'
    end
    object odsQueueL010_RESULT: TStringField
      FieldName = 'L010_RESULT'
      Size = 2048
    end
    object odsQueueL010_CURRENCY: TStringField
      FieldName = 'L010_CURRENCY'
      Size = 16
    end
    object odsQueueL010_DATE_FROM: TDateTimeField
      FieldName = 'L010_DATE_FROM'
    end
    object odsQueueL010_DATE_TO: TDateTimeField
      FieldName = 'L010_DATE_TO'
    end
  end
  object oqSetResult: TOracleQuery
    SQL.Strings = (
      'begin'
      '  update L010_ASK set'
      '    L010_RESULT = :L010_RESULT'
      '  where L010_ID = :L010_ID;'
      '  commit;'
      'end;')
    Session = OracleSession
    Variables.Data = {
      03000000020000000C0000003A4C3031305F524553554C540500000000000000
      00000000080000003A4C3031305F4944040000000000000000000000}
    Left = 280
    Top = 56
  end
end
