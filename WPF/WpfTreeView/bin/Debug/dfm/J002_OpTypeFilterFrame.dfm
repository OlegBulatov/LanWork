inherited J002_OpTypeFilter: TJ002_OpTypeFilter
  inherited lbCaption: TLabel
    Width = 79
    Caption = 'Вид сообщения'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'OP_TYPE'
    LookupDisplay = 'OP_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select OP_TYPE_ID,'
      '       OP_TYPE,'
      '       OP_TYPE_DESC'
      'from   V_405_417_OP_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000A0000004F505F545950455F494401000000000007000000
      4F505F545950450100000000000C0000004F505F545950455F44455343010000
      000000}
    object odsListOP_TYPE_ID: TFloatField
      FieldName = 'OP_TYPE_ID'
    end
    object odsListOP_TYPE: TStringField
      FieldName = 'OP_TYPE'
      Size = 9
    end
    object odsListOP_TYPE_DESC: TStringField
      FieldName = 'OP_TYPE_DESC'
      Size = 56
    end
  end
end
