inherited A002_Region: TA002_Region
  inherited lbCaption: TLabel
    Width = 36
    Caption = 'Регион'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 25
    LookupField = 'KOD1'
    LookupDisplay = 'NAME_LOOKUP'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  CODE,'
      '  KOD1,'
      '  NAME_RUS,'
      '  NAME_RUS1,'
      '  NAME_LOOKUP'
      'FROM DS_BOP_BOSS.VS_BOP_REGIONS'
      'ORDER BY KOD1')
    QBEDefinition.QBEFieldDefs = {
      040000000500000004000000434F4445010000000000040000004B4F44310100
      00000000080000004E414D455F525553010000000000090000004E414D455F52
      5553310100000000000B0000004E414D455F4C4F4F4B5550010000000000}
    object odsListCODE: TFloatField
      FieldName = 'CODE'
    end
    object odsListKOD1: TFloatField
      DisplayWidth = 4
      FieldName = 'KOD1'
    end
    object odsListNAME_RUS: TStringField
      FieldName = 'NAME_RUS'
      Size = 250
    end
    object odsListNAME_RUS1: TStringField
      FieldName = 'NAME_RUS1'
      Size = 250
    end
    object odsListNAME_LOOKUP: TStringField
      FieldName = 'NAME_LOOKUP'
      Size = 292
    end
  end
end
