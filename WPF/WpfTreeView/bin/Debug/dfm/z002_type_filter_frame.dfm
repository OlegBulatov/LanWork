inherited z002_type_filter: Tz002_type_filter
  Width = 221
  Height = 23
  inherited lbCaption: TLabel
    Width = 44
    Caption = 'Событие'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 78
    Width = 131
    LookupField = 'ID'
    LookupDisplay = 'DESCR'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select id,descr from v_z002_type')
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
