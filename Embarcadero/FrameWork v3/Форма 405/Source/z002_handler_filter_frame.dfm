inherited z002_handler_filter: Tz002_handler_filter
  Width = 209
  Height = 22
  inherited lbCaption: TLabel
    Width = 48
    Caption = 'Источник'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 73
    Width = 131
    LookupField = 'ID'
    LookupDisplay = 'DESCR'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select id, descr from v_z002_handler')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000050000004445534352010000
      000000}
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
end
