inherited fm17_Direction: Tfm17_Direction
  inherited Label1: TLabel
    Width = 68
    Caption = 'Направление'
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    DropDownCount = 3
    LookupField = 'T006_DIRECTION'
    LookupDisplay = 'T006_DIR_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T006_DIRECTION, T006_DIR_NAME'
      'FROM   V_405_DIRECTION'
      'ORDER BY T006_DIR_NAME')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543030365F444952454354494F4E010000000000
      0D000000543030365F4449525F4E414D45010000000000}
    object odsListT006_DIR_NAME: TStringField
      FieldName = 'T006_DIR_NAME'
      Size = 9
    end
    object odsListT006_DIRECTION: TFloatField
      FieldName = 'T006_DIRECTION'
    end
  end
end
