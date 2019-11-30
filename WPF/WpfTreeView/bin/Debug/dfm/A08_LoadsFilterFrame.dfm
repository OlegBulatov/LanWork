inherited A08_LoadsFilter: TA08_LoadsFilter
  inherited lbCaption: TLabel
    Width = 103
    Caption = 'Загрузки отчетов от'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T018_ID'
    LookupDisplay = 'T018_TEXT'
    OnGetImage = lcbGetImage
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T018_ID,'
      '       T018_RESULT,'
      '       T018_TEXT'
      'from   V_404_REPLICATIONS'
      'order by T018_START_DATE DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031385F494401000000000009000000543031
      385F544558540100000000000B000000543031385F524553554C540100000000
      00}
    object odsListT018_ID: TFloatField
      FieldName = 'T018_ID'
    end
    object odsListT018_TEXT: TStringField
      FieldName = 'T018_TEXT'
      Size = 28
    end
    object odsListT018_RESULT: TStringField
      FieldName = 'T018_RESULT'
      Size = 1
    end
  end
end
