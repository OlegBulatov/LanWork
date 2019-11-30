inherited B004_SectorFilter: TB004_SectorFilter
  inherited lbCaption: TLabel
    Width = 119
    Caption = '(1.2) Сектор экономики'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T211_NAME'
    LookupDisplay = 'T211_NAME;T211_DESC'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T211_ID,'
      '       T211_NAME,'
      '       T211_DESC'
      'FROM   V_711_SEKTOR'
      'ORDER BY T211_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543231315F494401000000000009000000543231
      315F4E414D4501000000000009000000543231315F44455343010000000000}
    object odsListT211_ID: TFloatField
      FieldName = 'T211_ID'
    end
    object odsListT211_NAME: TStringField
      FieldName = 'T211_NAME'
      Size = 8
    end
    object odsListT211_DESC: TStringField
      FieldName = 'T211_DESC'
      Size = 255
    end
  end
end
