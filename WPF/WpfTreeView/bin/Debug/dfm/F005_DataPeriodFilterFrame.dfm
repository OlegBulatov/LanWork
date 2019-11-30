inherited F005_DataPeriodFilter: TF005_DataPeriodFilter
  inherited lbCaption: TLabel
    Width = 85
    Caption = 'ќстатки на даты'
  end
  object Label2: TLabel [2]
    Left = 146
    Top = 4
    Width = 12
    Height = 13
    Caption = ' с '
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_DESC'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         PERIOD_DESC'
      'FROM     V_405_415_DATA_PERIODS'
      'where    T055_ID <= :PERIOD_TO'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F44455343010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListPERIOD_DESC: TStringField
      FieldName = 'PERIOD_DESC'
      Size = 10
    end
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       PERIOD_DESC'
      'FROM   V_405_415_DATA_PERIODS'
      'where  T055_ID >= :PERIOD_FROM'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F44455343010000000000}
    object odsList2T055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsList2PERIOD_DESC: TStringField
      FieldName = 'PERIOD_DESC'
      Size = 10
    end
  end
end
