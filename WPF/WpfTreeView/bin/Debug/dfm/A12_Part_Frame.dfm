inherited A12_Part: TA12_Part
  inherited lbCaption: TLabel
    Width = 37
    Caption = 'Раздел'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T105_ID'
    LookupDisplay = 'T105_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select t105_id, t105_desc FROM t105_part')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543130355F494401000000000009000000543130
      355F44455343010000000000}
    object odsListT105_ID: TFloatField
      FieldName = 'T105_ID'
    end
    object odsListT105_DESC: TStringField
      FieldName = 'T105_DESC'
      Size = 256
    end
  end
end
