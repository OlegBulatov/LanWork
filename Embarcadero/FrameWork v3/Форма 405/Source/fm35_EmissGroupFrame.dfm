inherited fm35_EmissGroup: Tfm35_EmissGroup
  inherited Label1: TLabel
    Width = 82
    Caption = 'Группа эмиссий'
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    DropDownCount = 14
    LookupField = 'T059_ID'
    LookupDisplay = 'T059_SHORT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  T059_ID, T059_SHORT_NAME'
      'FROM     V_405_EMISSION_GROUP_ALL')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035395F49440100000000000F000000543035
      395F53484F52545F4E414D45010000000000}
    object odsListT059_ID: TFloatField
      FieldName = 'T059_ID'
    end
    object odsListT059_SHORT_NAME: TStringField
      FieldName = 'T059_SHORT_NAME'
      Size = 255
    end
  end
end
