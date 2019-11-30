inherited A12_OperationFilter: TA12_OperationFilter
  inherited lbCaption: TLabel
    Width = 70
    Caption = 'Код операции'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 5
    DisplayAllFields = True
    LookupField = 'T036_ID'
    LookupDisplay = 'T036_OP_CODE;T036_OP_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T036_ID,'
      '       TO_CHAR(T036_OP_CODE) T036_OP_CODE,'
      '       T036_OP_NAME'
      'from V_404_OPERATIONS')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033365F49440100000000000C000000543033
      365F4F505F434F44450100000000000C000000543033365F4F505F4E414D4501
      0000000000}
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_OP_CODE: TStringField
      FieldName = 'T036_OP_CODE'
      Size = 2
    end
    object odsListT036_OP_NAME: TStringField
      FieldName = 'T036_OP_NAME'
      Size = 500
    end
  end
end
