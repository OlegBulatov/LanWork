inherited A115_ReportBisSector: TA115_ReportBisSector
  inherited lbCaption: TLabel
    Width = 62
    Caption = 'Сектор БМР'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 15
    DisplayAllFields = True
    LookupField = 'T071_ID'
    LookupDisplay = 'T071_CODE;NAME_BY_LEVEL'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T071_ID,'
      '       T071_CODE,'
      '       NAME_BY_LEVEL,'
      '       T071_PRIM'
      'FROM   V_410_BOP_SECTORS_TREE'
      'WHERE  T070_ID = :T070_ID')
    Variables.Data = {
      0300000001000000080000003A543037305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543037315F494401000000000009000000543037
      315F434F44450100000000000D0000004E414D455F42595F4C4556454C010000
      00000009000000543037315F5052494D010000000000}
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
    end
    object odsListT071_CODE: TStringField
      FieldName = 'T071_CODE'
      Size = 1
    end
    object odsListNAME_BY_LEVEL: TStringField
      FieldName = 'NAME_BY_LEVEL'
      Size = 4000
    end
  end
end
