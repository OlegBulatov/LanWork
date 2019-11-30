inherited fm38_IssReinvList: Tfm38_IssReinvList
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT    T028_ID, T028_SHOT_NAME'
      'FROM     V_NR_ISSUERS_SELECT_REINV'
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' ')
  end
end
