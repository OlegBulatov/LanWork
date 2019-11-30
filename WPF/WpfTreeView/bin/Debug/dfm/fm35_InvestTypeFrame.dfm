inherited fm35_InvestType: Tfm35_InvestType
  inherited Label1: TLabel
    Width = 84
    Caption = 'Тип инвестиров.'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'INVEST_ID'
    ListField = 'INVEST_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   INVEST_ID, INVEST_TYPE'
      'FROM     V_NR_INVEST_TYPE'
      'ORDER BY INVEST_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000494E564553545F49440100000000000B00000049
      4E564553545F54595045010000000000}
    object odsListINVEST_ID: TFloatField
      FieldName = 'INVEST_ID'
    end
    object odsListINVEST_TYPE: TStringField
      FieldName = 'INVEST_TYPE'
      Size = 18
    end
  end
end
