inherited C002_OpCode: TC002_OpCode
  Width = 391
  inherited lbCaption: TLabel
    Width = 70
    Caption = 'Код операции'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 230
    DropDownCount = 13
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsSizeable]
    LookupField = 'T011_ID'
    LookupDisplay = 'T011_TYPE_ID; T011_OPERATION_DESC'
  end
  inherited actList: TActionList
    Left = 328
  end
  inherited dsList: TDataSource
    Left = 296
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_ID, T011_TYPE_ID, T011_OPERATION_DESC'
      'FROM V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031315F49440100000000000C000000543031
      315F545950455F494401000000000013000000543031315F4F5045524154494F
      4E5F44455343010000000000}
    Left = 264
    object odsListT011_ID: TFloatField
      FieldName = 'T011_ID'
    end
    object odsListT011_TYPE_ID: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 2
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT011_OPERATION_DESC: TStringField
      DisplayWidth = 75
      FieldName = 'T011_OPERATION_DESC'
      Size = 255
    end
  end
end
