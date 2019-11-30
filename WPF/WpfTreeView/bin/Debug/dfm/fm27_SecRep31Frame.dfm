inherited fm27_SecRep31: Tfm27_SecRep31
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE, T027_COMMENTS'
      'from     V_405_SEC_TYPE'
      'where t027_id in (3, 4, 36, 161, 162, 167)'
      'order by T027_SEC_TYPE')
  end
end
