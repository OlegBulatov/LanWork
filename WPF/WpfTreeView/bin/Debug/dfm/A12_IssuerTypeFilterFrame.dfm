inherited A12_TypeFilter: TA12_TypeFilter
  Width = 702
  Height = 81
  inherited lbCaption: TLabel
    Width = 22
    Caption = '“ËÔ:'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 84
    Width = 619
    DropDownCount = 5
    LookupField = 'T033_ID'
    LookupDisplay = 'T033_CODE_406'
  end
  inherited dsList: TDataSource
    Left = 76
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T033_ID,'
      '       T033_CODE_406'
      'from   V_406_REZ_TYPES')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000D000000543033
      335F434F44455F343036010000000000}
    Left = 48
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT033_CODE_406: TStringField
      FieldName = 'T033_CODE_406'
      Size = 8
    end
  end
end
