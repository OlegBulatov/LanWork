inherited E002_SecTypeFilter: TE002_SecTypeFilter
  inherited lbCaption: TLabel
    Width = 40
    Caption = 'Тип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 6
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T027_SEC_TYPE'
    LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS'
      '       --T027_SEC_TYPE || '#39' - '#39' || T027_COMMENTS DESC_FLD'
      'FROM   V_405_SEC_TYPE'
      'WHERE  T027_SEC_TYPE IN ('#39'DR'#39','#39'DR1'#39','#39'DR2'#39','#39'OTHER'#39','#39'-'#39')'
      'ORDER BY T027_SEC_TYPE')
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
