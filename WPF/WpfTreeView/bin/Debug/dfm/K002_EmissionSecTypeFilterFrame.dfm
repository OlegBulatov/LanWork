inherited K002_EmissionSecTypeFilter: TK002_EmissionSecTypeFilter
  inherited lbCaption: TLabel
    Width = 40
    Caption = 'Тип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 32
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS'
      'from   V_405_SECTYPE_FILTER'
      'where  ORDER_NUM >= 0'
      'order  by T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Size = 255
    end
  end
end
