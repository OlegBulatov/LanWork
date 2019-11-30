inherited F005_ReporterFilter: TF005_ReporterFilter
  inherited lbCaption: TLabel
    Width = 100
    Caption = 'Отчит. организация'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'REPORTER_INN'
    LookupDisplay = 'REPORTER_INN;REPORTER_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT REPORTER_INN,'
      '       REPORTER_NAME'
      'FROM   V_405_415_DATA_REPORTERS'
      'ORDER BY REPORTER_INN')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000C0000005245504F525445525F494E4E0100000000000D00
      00005245504F525445525F4E414D45010000000000}
    object odsListREPORTER_INN: TStringField
      DisplayWidth = 10
      FieldName = 'REPORTER_INN'
      Size = 255
    end
    object odsListREPORTER_NAME: TStringField
      FieldName = 'REPORTER_NAME'
      Size = 255
    end
  end
end
