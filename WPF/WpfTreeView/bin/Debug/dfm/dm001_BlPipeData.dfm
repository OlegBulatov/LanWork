object dmBlPipe: TdmBlPipe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 476
  Top = 284
  Height = 480
  Width = 467
  object RequestTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = RequestTimerTimer
    Left = 24
    Top = 8
  end
  object odsFieldsToRequest: TOracleDataSet
    SQL.Strings = (
      'SELECT FIELD_NAME'
      'FROM   V_FIELDS_TO_REQUEST'
      'WHERE  R040_ID = :R040_ID'
      'ORDER BY POSITION')
    Variables.Data = {
      0300000001000000080000003A523034305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000A0000004649454C445F4E414D450100000000000D000000
      4F52415F444154415F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 40
    Top = 120
    object odsFieldsToRequestFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 255
    end
  end
  object oqSave: TOracleQuery
    Session = dmMain.OracleSession
    Left = 24
    Top = 184
  end
  object oqFinalize: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_Results.p_finalize_request(:R030_ID, :R030_DONE, :R030_ERRO' +
        'R_INFO);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A523033305F4944040000000000000000000000
      0A0000003A523033305F444F4E45050000000000000000000000100000003A52
      3033305F4552524F525F494E464F050000000000000000000000}
    Left = 176
    Top = 64
  end
  object odsRequests: TOracleDataSet
    SQL.Strings = (
      'SELECT R030_ID,'
      '       R030_SECURITY,'
      '       R030_DATE_START,'
      '       R030_DATE_END,'
      '       R030_CURRENCY,'
      '       R040_ID,'
      '       R040_REQUEST_TYPE,'
      '       R040_RESULTS'
      'FROM   V_REQUESTS'
      'WHERE  ROWNUM < 101'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000523033305F49440100000000000D000000523033
      305F53454355524954590100000000000F000000523033305F444154455F5354
      4152540100000000000D000000523033305F444154455F454E44010000000000
      07000000523034305F494401000000000011000000523034305F524551554553
      545F545950450100000000000C000000523034305F524553554C545301000000
      00000D000000523033305F43555252454E4359010000000000}
    Session = dmMain.OracleSession
    Left = 24
    Top = 64
    object odsRequestsR030_ID: TFloatField
      FieldName = 'R030_ID'
      Required = True
    end
    object odsRequestsR030_SECURITY: TStringField
      FieldName = 'R030_SECURITY'
      Required = True
      Size = 255
    end
    object odsRequestsR030_DATE_START: TDateTimeField
      FieldName = 'R030_DATE_START'
    end
    object odsRequestsR030_DATE_END: TDateTimeField
      FieldName = 'R030_DATE_END'
    end
    object odsRequestsR030_CURRENCY: TStringField
      FieldName = 'R030_CURRENCY'
      Size = 4
    end
    object odsRequestsR040_ID: TFloatField
      FieldName = 'R040_ID'
      Required = True
    end
    object odsRequestsR040_REQUEST_TYPE: TFloatField
      FieldName = 'R040_REQUEST_TYPE'
    end
    object odsRequestsR040_RESULTS: TStringField
      FieldName = 'R040_RESULTS'
      Size = 255
    end
  end
  object odsFieldsToSave: TOracleDataSet
    SQL.Strings = (
      'SELECT FIELD_NAME,'
      '       ORA_DATA_TYPE'
      'FROM   V_FIELDS_TO_SAVE'
      'WHERE  R040_ID = :R040_ID'
      'ORDER BY POSITION')
    Variables.Data = {
      0300000001000000080000003A523034305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000A0000004649454C445F4E414D450100000000000D000000
      4F52415F444154415F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 168
    Top = 120
    object odsFieldsToSaveFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 255
    end
    object odsFieldsToSaveORA_DATA_TYPE: TStringField
      FieldName = 'ORA_DATA_TYPE'
      Size = 32
    end
  end
  object oqPing: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_PING.p_ping_bl_pipe;'
      'end;')
    Session = dmMain.OracleSession
    Left = 176
    Top = 8
  end
end
