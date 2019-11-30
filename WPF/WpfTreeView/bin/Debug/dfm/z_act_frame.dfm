inherited z_act: Tz_act
  Width = 398
  Height = 22
  inherited lbCaption: TLabel
    Width = 50
    Caption = 'Действие'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 90
    Width = 305
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'ID'
    LookupDisplay = 'DESCR'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select id, descr from V_DO_ACTIONS')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000050000004445534352010000
      000000}
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListDESCR: TStringField
      FieldName = 'DESCR'
      Size = 255
    end
  end
end
