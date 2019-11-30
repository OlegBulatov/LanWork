inherited fmCountryLookUp: TfmCountryLookUp
  inherited lbCaption: TLabel
    Left = 18
    Width = 36
    Caption = 'Страна'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DataSource = dsList
    LookupField = 'CO_ISO_DIG'
    LookupDisplay = 'CO_NAME_SHORT'
  end
  inherited cb: TCheckBox
    Left = 0
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select CO_NAME_SHORT, CO_ISO_DIG'
      'from DS_408_BOSS.V_408_COUNTRY '
      'order by CO_ISO_DIG asc ')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000434F5F4E414D455F53484F52540100000000000A
      000000434F5F49534F5F444947010000000000}
    object odsListCO_NAME_SHORT: TStringField
      FieldName = 'CO_NAME_SHORT'
      Size = 256
    end
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
  end
end
