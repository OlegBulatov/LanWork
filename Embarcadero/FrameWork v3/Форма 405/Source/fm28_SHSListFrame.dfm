inherited fm28_SHSList: Tfm28_SHSList
  Height = 234
  ExplicitHeight = 234
  inherited gr01: TxxxDBGrid
    Height = 230
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE, T027_COMMENTS'
      'from     V_405_SEC_TYPE_SHS'
      'order by T027_SEC_TYPE')
  end
end
