inherited L001_OpCodeFilter: TL001_OpCodeFilter
  inherited lbCaption: TLabel
    Width = 70
    Caption = 'Код операции'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 10
    ListStyle = [lsSizeable]
    LookupField = 'T011_ID'
    LookupDisplay = 'T011_TYPE_ID;T011_OPERATION_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_ID,'
      '       T011_TYPE_ID,'
      '       T011_OPERATION_DESC,'
      '       T011_TYPE_ID || '#39' - '#39' || T011_OPERATION_DESC DESC_FLD'
      'FROM   V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543031315F494401000000000008000000444553
      435F464C440100000000000C000000543031315F545950455F49440100000000
      0013000000543031315F4F5045524154494F4E5F44455343010000000000}
    object odsListT011_ID: TFloatField
      FieldName = 'T011_ID'
    end
    object odsListT011_TYPE_ID: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 2
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Size = 255
    end
    object odsListDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 298
    end
  end
end
