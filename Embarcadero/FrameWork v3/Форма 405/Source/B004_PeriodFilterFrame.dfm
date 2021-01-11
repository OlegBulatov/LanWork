inherited B004_PeriodFilter: TB004_PeriodFilter
  inherited lbCaption: TLabel
    Width = 88
    Caption = 'Отчетный период'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T002_NUMB_IN_YEA_TEXT'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         T002_NUMB_IN_YEA,'
      #9'  T002_NUMB_IN_YEA_TEXT'
      'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
      'WHERE    T055_ID >= 1910'
      'ORDER BY T002_NUMB_IN_YEA DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F494401000000000010000000543030
      325F4E554D425F494E5F59454101000000000015000000543030325F4E554D42
      5F494E5F5945415F54455854010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Size = 10
    end
  end
end
