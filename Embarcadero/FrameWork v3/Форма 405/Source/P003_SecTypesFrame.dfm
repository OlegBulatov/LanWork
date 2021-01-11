inherited P003_SecTypes: TP003_SecTypes
  inherited Label1: TLabel
    Width = 40
    Caption = 'Тип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 16
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyValue = 'All'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS '
      'FROM   V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Size = 255
    end
  end
end
