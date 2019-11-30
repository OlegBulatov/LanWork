inherited fmCurrencyLookUp: TfmCurrencyLookUp
  inherited lbCaption: TLabel
    Left = 18
    Width = 38
    Caption = 'Валюта'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'ISO_DIG'
    LookupDisplay = 'NAME_RUSH'
  end
  inherited cb: TCheckBox
    Left = 0
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select ISO_DIG, NAME_RUSH  '
      'from DS_408_BOSS.V_408_CURRENCY '
      'order by ISO_DIG asc ')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000700000049534F5F444947010000000000090000004E414D
      455F52555348010000000000}
    object odsListISO_DIG: TStringField
      FieldName = 'ISO_DIG'
      Size = 3
    end
    object odsListNAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
  end
end
