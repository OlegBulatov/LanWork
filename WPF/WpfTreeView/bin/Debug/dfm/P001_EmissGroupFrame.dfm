inherited P001_EmissGroup: TP001_EmissGroup
  inherited Label1: TLabel
    Width = 82
    Caption = 'Группа эмиссий'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 14
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T059_ID'
    LookupDisplay = 'T059_SHORT_NAME'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T059_ID,'
      '       T059_SHORT_NAME'
      'FROM   V_405_EMISSION_GROUP_ALL'
      'WHERE  T059_ID <> 1')
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
