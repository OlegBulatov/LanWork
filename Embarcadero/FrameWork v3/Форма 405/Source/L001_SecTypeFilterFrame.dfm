inherited L001_SecTypeFilter: TL001_SecTypeFilter
  inherited lbCaption: TLabel
    Width = 40
    Caption = '“ип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 10
    ListStyle = [lsSizeable]
    LookupField = 'T027_ID'
    LookupDisplay = 'DESC_FLD'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE || '#39' - '#39' || T027_COMMENTS DESC_FLD'
      'FROM   V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F494401000000000008000000444553
      435F464C44010000000000}
  end
end
