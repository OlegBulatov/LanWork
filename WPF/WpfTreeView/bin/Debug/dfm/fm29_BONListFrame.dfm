inherited fm29_BONList: Tfm29_BONList
  Height = 187
  inherited gr01: TxxxDBGrid
    Height = 183
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE, T027_COMMENTS'
      'from     V_405_SEC_TYPE_BON'
      'order by T027_SEC_TYPE')
  end
end
