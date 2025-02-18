object BlpDb: TBlpDb
  OldCreateOrder = False
  Height = 729
  Width = 620
  object OracleSession: TOracleSession
    LogonUsername = 'DPB_BL_PIPE'
    LogonPassword = 'PWD_BL_PIPE'
    LogonDatabase = 'DPBBANK'
    Preferences.ConvertUTF = cuUTF8ToUTF16
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
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A004C003000320035005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000220000004C003000320035005F0052004500510055004500
      530054005F005400590050004500010000000000200000004C00300032003500
      5F0050004500520049004F004400490043004900540059000100000000001A00
      00004C003000320035005F00430055005200520045004E004300590001000000
      0000120000004C003000320035005F004E004500580054000100000000002000
      00004C003000320035005F0052004500530055004C0054005F00500052004F00
      4300010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A004C003000320035005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001A0000004C003000320036005F004600490045004C004400
      5F00490044000100000000001E0000004C003000320036005F00460049004500
      4C0044005F004E0041004D0045000100000000001A0000004C00300032003600
      5F0044004100540041005400590050004500010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A004C003000320035005F004900440004000000
      00000000000000001C0000003A004C003000320036005F004600490045004C00
      44005F0049004400040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001E0000004C003000320037005F004600490045004C004400
      5F004E0041004D0045000100000000001A0000004C003000320037005F004400
      4100540041005400590050004500010000000000}
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
    Optimize = False
    Variables.Data = {
      040000000B000000100000003A004C003000320030005F004900440004000000
      0000000000000000240000003A004C003000320030005F005200450051005500
      4500530054005F0044004100540045000C00000000000000000000001C000000
      3A004C003000320030005F005300450043005500520049005400590005000000
      0000000000000000100000003A004C003000320035005F004900440004000000
      0000000000000000220000003A004C003000320030005F005000450052004900
      4F00440049004300490054005900050000000000000000000000200000003A00
      4C003000320030005F0044004100540045005F00530054004100520054000C00
      000000000000000000001C0000003A004C003000320030005F00440041005400
      45005F0045004E0044000C00000000000000000000001C0000003A004C003000
      320030005F00430055005200520045004E004300590005000000000000000000
      0000140000003A004C003000320030005F005500530045005200050000000000
      0000000000001E0000003A004C003000320030005F0050004100520045004E00
      54005F00490044000400000000000000000000000A0000003A00490053004900
      4E00050000000000000000000000}
    Left = 176
    Top = 8
  end
  object oqSaveData: TOracleQuery
    Session = OracleSession
    Optimize = False
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
    Optimize = False
    Variables.Data = {
      0400000005000000100000003A004C003000320030005F004900440004000000
      0000000000000000180000003A004C003000320030005F005200450053005500
      4C005400050000000000000000000000200000003A004C003000320030005F00
      4500520052004F0052005F0049004E0046004F00050000000000000000000000
      0E0000003A0052004500530055004C0054000400000000000000000000001400
      00003A004C003000320035005F004E0045005800540004000000000000000000
      0000}
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
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A004C003000320030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000D0000000E0000004C003000320030005F0049004400010000000000
      120000004C003000320030005F0055005300450052000100000000001A000000
      4C003000320030005F0053004500430055005200490054005900010000000000
      200000004C003000320030005F0050004500520049004F004400490043004900
      540059000100000000001E0000004C003000320030005F004400410054004500
      5F00530054004100520054000100000000001A0000004C003000320030005F00
      44004100540045005F0045004E0044000100000000001A0000004C0030003200
      30005F00430055005200520045004E00430059000100000000001C0000004C00
      3000320030005F0050004100520045004E0054005F0049004400010000000000
      220000004C003000320035005F0052004500510055004500530054005F005400
      590050004500010000000000200000004C003000320035005F00520045005300
      55004C0054005F00500052004F004300010000000000120000004C0030003200
      35005F004E004500580054000100000000000E0000004C003000320035005F00
      49004400010000000000120000004C003000320030005F004900530049004E00
      010000000000}
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
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000090000000E0000004C003000310030005F0049004400010000000000
      0E0000004C003000320035005F0049004400010000000000120000004C003000
      310030005F004900530049004E00010000000000120000004C00300031003000
      5F005500530045005200010000000000220000004C003000310030005F005200
      4500510055004500530054005F00440041005400450001000000000016000000
      4C003000310030005F0052004500530055004C0054000100000000001A000000
      4C003000310030005F00430055005200520045004E0043005900010000000000
      1C0000004C003000310030005F0044004100540045005F00460052004F004D00
      010000000000180000004C003000310030005F0044004100540045005F005400
      4F00010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000002000000180000003A004C003000310030005F005200450053005500
      4C005400050000000000000000000000100000003A004C003000310030005F00
      49004400040000000000000000000000}
    Left = 280
    Top = 56
  end
  object rioBemu: THTTPRIO
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 360
    Top = 24
  end
end
