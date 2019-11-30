inherited A13_BanksSelectedFilter: TA13_BanksSelectedFilter
  inherited lbCaption: TLabel
    Width = 25
    Caption = 'Банк'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T020_BANK_CODE'
    LookupDisplay = 'T020_BANK_CODE;T020_BANK_NAME'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited rb: TRadioButton
    Caption = 'Банк'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T020_BANK_CODE,'
      '       T020_BANK_NAME'
      'from V_410_BANKS_REPORTED')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543032305F42414E4B5F434F4445010000000000
      0E000000543032305F42414E4B5F4E414D45010000000000}
    object odsListT020_BANK_CODE: TStringField
      DisplayLabel = 'Код'
      DisplayWidth = 5
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT020_BANK_NAME: TStringField
      DisplayLabel = 'Название'
      FieldName = 'T020_BANK_NAME'
      Size = 45
    end
  end
end
