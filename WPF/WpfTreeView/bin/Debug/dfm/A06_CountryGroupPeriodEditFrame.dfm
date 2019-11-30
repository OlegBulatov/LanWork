inherited A06_CountryGroupPeriodEdit: TA06_CountryGroupPeriodEdit
  Width = 250
  Height = 31
  object Label1: TLabel [0]
    Left = 16
    Top = 12
    Width = 64
    Height = 13
    Caption = 'Дата начала'
  end
  object DBDate1: TDBDateTimePicker [1]
    Left = 112
    Top = 8
    Width = 117
    Height = 21
    CalAlignment = dtaLeft
    Date = 40909
    Time = 40909
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    MaxDate = 73050
    MinDate = 40909
    ParseInput = False
    TabOrder = 0
    DataField = 'DATE_START'
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'select count(*)'
      'from   V_410_COUNTRY_GROUP_PERIODS'
      'where  T033_ID = :T033_ID'
      'and    ((DATE_START = :DATE_START)'
      '         or'
      '        (DATE_END+1 = :DATE_START))')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033335F4944040000000000000000000000
      0B0000003A444154455F53544152540C0000000000000000000000}
    Left = 40
    Top = 4
  end
end
