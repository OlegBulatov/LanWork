inherited A12_ContractFilter: TA12_ContractFilter
  inherited lbCaption: TLabel
    Width = 74
    Caption = 'Вид контракта'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayAllFields = True
    LookupField = 'T038_ID'
    LookupDisplay = 'T038_CONTRACT_C_CODE;T038_CONTRACT_C_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T038_ID,'
      '      T038_CONTRACT_C_CODE,'
      '      T038_CONTRACT_C_NAME'
      'from  V_404_CONTRACT_C'
      '       ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033385F494401000000000014000000543033
      385F434F4E54524143545F435F434F444501000000000014000000543033385F
      434F4E54524143545F435F4E414D45010000000000}
    object odsListT038_ID: TFloatField
      FieldName = 'T038_ID'
    end
    object odsListT038_CONTRACT_C_CODE: TStringField
      FieldName = 'T038_CONTRACT_C_CODE'
      Size = 2
    end
    object odsListT038_CONTRACT_C_NAME: TStringField
      FieldName = 'T038_CONTRACT_C_NAME'
      Size = 255
    end
  end
end
