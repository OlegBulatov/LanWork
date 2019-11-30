inherited fm24_RoundTrip: Tfm24_RoundTrip
  inherited Label1: TLabel
    Width = 86
    Caption = '“ËÔ round-tripping'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'ROUND_TRIP_ID'
    ListField = 'ROUND_TRIP_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' ROUND_TRIP_ID,'
      ' ROUND_TRIP_NAME'
      'FROM V_NR_ROUND_TRIP'
      'ORDER BY ROUND_TRIP_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000524F554E445F545249505F49440100000000000F
      000000524F554E445F545249505F4E414D45010000000000}
    object odsListROUND_TRIP_ID: TFloatField
      FieldName = 'ROUND_TRIP_ID'
    end
    object odsListROUND_TRIP_NAME: TStringField
      FieldName = 'ROUND_TRIP_NAME'
    end
  end
end
