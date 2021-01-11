object dmSettings: TdmSettings
  OldCreateOrder = False
  Left = 357
  Top = 167
  Height = 380
  Width = 667
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_Class_Utils.p_save_setting(:NAME, :NO, :VALUE);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000050000003A4E414D45050000000000000000000000030000
      003A4E4F040000000000000000000000060000003A56414C5545050000000000
      000000000000}
    Left = 72
    Top = 16
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_Class_Utils.p_clear_settings(:NAME);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A4E414D45050000000000000000000000}
    Left = 16
    Top = 16
  end
  object odsLoad: TOracleDataSet
    SQL.Strings = (
      'select T225_VALUE,'
      '       T225_VALUE_NO'
      'from   V_405_SETTINGS'
      'where  T225_VALUE_NAME = :NAME'
      'order by T225_VALUE_NO')
    Variables.Data = {0300000001000000050000003A4E414D45050000000000000000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 16
  end
end
