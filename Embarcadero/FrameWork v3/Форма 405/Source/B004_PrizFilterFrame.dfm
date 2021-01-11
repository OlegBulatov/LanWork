inherited B004_PrizFilter: TB004_PrizFilter
  inherited lbCaption: TLabel
    Width = 136
    Caption = '(1.1) Признак депозитария'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T210_DK_PRIZ_NAME'
    LookupDisplay = 'T210_DK_PRIZ_NAME;T210_DK_PRIZ_SHORT_DESC'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T210_ID,'
      '       T210_DK_PRIZ_NAME,'
      '       T210_DK_PRIZ_SHORT_DESC'
      'FROM   V_711_DK_PRIZ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543231305F494401000000000011000000543231
      305F444B5F5052495A5F4E414D4501000000000017000000543231305F444B5F
      5052495A5F53484F52545F44455343010000000000}
    object odsListT210_ID: TFloatField
      FieldName = 'T210_ID'
    end
    object odsListT210_DK_PRIZ_NAME: TStringField
      DisplayWidth = 2
      FieldName = 'T210_DK_PRIZ_NAME'
      Size = 1
    end
    object odsListT210_DK_PRIZ_SHORT_DESC: TStringField
      FieldName = 'T210_DK_PRIZ_SHORT_DESC'
      Size = 255
    end
  end
end
