inherited B004_AccountFilter: TB004_AccountFilter
  inherited lbCaption: TLabel
    Width = 74
    Caption = '(1.2) Вид счета'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T216_CODE'
    LookupDisplay = 'T216_DESC'
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
