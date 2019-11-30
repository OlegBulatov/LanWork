inherited P004_CountCodes: TP004_CountCodes
  inherited Label1: TLabel
    Caption = 'Вид счета'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 14
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T216_CODE'
    LookupDisplay = 'T216_DESC'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T216_CODE,'
      '       T216_DESC'
      'from   V_711_COUNT_CODES'
      'order by T216_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000543231365F434F44450100000000000900000054
      3231365F44455343010000000000}
    object odsListT216_CODE: TStringField
      FieldName = 'T216_CODE'
      Size = 127
    end
    object odsListT216_DESC: TStringField
      FieldName = 'T216_DESC'
      Size = 255
    end
  end
end
