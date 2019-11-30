inherited A13_PrepareItems: TA13_PrepareItems
  Width = 115
  Height = 40
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T037_ID,'
      '       T037_ID T037_ID_A,'
      '       T037_STATE,'
      '       T037_PART'
      'FROM   T037_FORM_ITEMS')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033375F49440100000000000A000000543033
      375F535441544501000000000009000000543033375F50415254010000000000
      09000000543033375F49445F41010000000000}
    Left = 8
    Top = 5
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_ID_A: TFloatField
      FieldName = 'T037_ID_A'
    end
    object odsListT037_STATE: TStringField
      FieldName = 'T037_STATE'
      Size = 1
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
  end
end
