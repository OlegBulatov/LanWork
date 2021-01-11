inherited E001_TypeSec: TE001_TypeSec
  inherited lbCaption: TLabel
    Width = 40
    Caption = '“ип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 3
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
  end
  inherited cb: TCheckBox
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID, T027_SEC_TYPE,'
      '  T027_COMMENTS'
      'FROM     V_405_IIPS_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      DisplayWidth = 4
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Size = 255
    end
  end
end
