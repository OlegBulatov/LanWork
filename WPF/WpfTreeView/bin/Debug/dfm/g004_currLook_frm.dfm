inherited g004_currLook: Tg004_currLook
  Width = 274
  Height = 34
  inherited lbCaption: TLabel
    Left = 28
    Top = 5
    Width = 41
    Caption = 'Валюта '
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 83
    Top = 2
    Width = 149
    LookupField = 'CUR_ID'
    LookupDisplay = 'CUR_LOOKUP'
    OnCloseUp = nil
  end
  inherited cb: TCheckBox
    Left = 3
    Top = 3
    Checked = False
    State = cbUnchecked
  end
  inherited actList: TActionList
    Left = 208
    Top = 65532
  end
  inherited dsList: TDataSource
    Left = 152
    Top = 65530
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_CURRLOOK')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000A0000004355525F4C4F4F4B555001000000000006000000
      4355525F4944010000000000}
    Left = 192
    Top = 65530
    object odsListCUR_LOOKUP: TStringField
      FieldName = 'CUR_LOOKUP'
      Size = 259
    end
    object odsListCUR_ID: TStringField
      FieldName = 'CUR_ID'
      Size = 3
    end
  end
end
