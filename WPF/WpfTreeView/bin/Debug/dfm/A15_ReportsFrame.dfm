inherited A15_Reports: TA15_Reports
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T002_ID ID, '
      '       T002_PARENT_ID PARENT_ID, '
      '       T002_DISPL_NAME DISPLAY_NAME, '
      '       T002_IMAGE_INDEX IMAGE_INDEX,'
      '       T002_SELECTED_INDEX SELECT_INDEX,'
      '       T002_VISIBLE VISIBLE'
      'FROM   V_410_REPORTS_LIST')
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'alter session set NLS_NUMERIC_CHARACTERS = '#39'.,'#39)
  end
  object odsSheets: TOracleDataSet
    SQL.Strings = (
      'select T065_SHEET_NAME,'
      '       T071_ID,'
      '       T072_ID'
      'from   V_410_REPORTS_SHEETS'
      'where  T061_ID = :T061_ID')
    Variables.Data = {
      0300000001000000080000003A543036315F4944040000000000000000000000}
    Session = dmMain.OracleSession
    Left = 490
    Top = 114
  end
end
