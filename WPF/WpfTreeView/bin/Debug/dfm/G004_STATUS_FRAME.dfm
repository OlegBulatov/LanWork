inherited G004_STATUS: TG004_STATUS
  inherited lbCaption: TLabel
    Caption = 'Статус Запроса'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T999_ID'
    LookupDisplay = 'T999_DESCR'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from T999_LOAD_STATUS_NEW')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543939395F49440100000000000A000000543939
      395F4445534352010000000000}
  end
end
