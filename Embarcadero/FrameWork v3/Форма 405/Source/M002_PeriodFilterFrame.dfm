inherited M002_PeriodFilter: TM002_PeriodFilter
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 168
    Width = 154
    LookupField = 'T185_DATA_CHANGE_DATE'
    LookupDisplay = 'T185_DATA_CHANGE_DATE'
    ExplicitLeft = 168
    ExplicitWidth = 154
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T185_DATA_CHANGE_DATE'
    LookupDisplay = 'T185_DATA_CHANGE_DATE'
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_DATA_CHANGE_DATE'
      'from   V_405_ISU_DATA'
      'where  T185_DATA_CHANGE_DATE >= :PERIOD_FROM'
      'order by T185_DATA_CHANGE_DATE')
    Variables.Data = {
      0400000001000000180000003A0050004500520049004F0044005F0046005200
      4F004D000C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000002A00000054003100380035005F0044004100540041005F00
      4300480041004E00470045005F004400410054004500010000000000}
  end
end
