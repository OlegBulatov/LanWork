inherited P002_Sector: TP002_Sector
  inherited Label1: TLabel
    Width = 36
    Caption = 'Сектор'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 18
    DisplayAllFields = True
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T211_NAME'
    LookupDisplay = 'T211_NAME;T211_DESC'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T211_NAME,'
      '       T211_DESC'
      'from   V_711_SEKTOR')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000543231315F4E414D450100000000000900000054
      3231315F44455343010000000000}
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
