inherited z002_inv_filter: Tz002_inv_filter
  Width = 411
  Height = 24
  inherited lbCaption: TLabel
    Width = 81
    Caption = 'Тип инвестиции'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 250
    LookupField = 'T001_INV_TYPE'
    LookupDisplay = 'T001_INV_TYPE_DESCR'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT t001_inv_type, t001_inv_type_descr FROM v_405_inv_type')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000543030315F494E565F5459504501000000000013
      000000543030315F494E565F545950455F4445534352010000000000}
    object odsListT001_INV_TYPE: TFloatField
      FieldName = 'T001_INV_TYPE'
    end
    object odsListT001_INV_TYPE_DESCR: TStringField
      FieldName = 'T001_INV_TYPE_DESCR'
      Size = 15
    end
  end
end
