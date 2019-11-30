object dmParent: TdmParent
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object OracleSession: TOracleSession
    DesignConnection = True
    Left = 56
    Top = 32
  end
  object oqGetSetting: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  :H003_VALUE := Pk_Form_405.f_get_setting(:H003_NAME);'
      'END;')
    Session = OracleSession
    Variables.Data = {
      03000000020000000B0000003A483030335F56414C5545050000000000000000
      0000000A0000003A483030335F4E414D45050000000000000000000000}
    Left = 56
    Top = 136
  end
  object oqSetSetting: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Form_405.p_set_setting(:H003_NAME, :H003_VALUE);'
      'END;')
    Session = OracleSession
    Variables.Data = {
      03000000020000000B0000003A483030335F56414C5545050000000000000000
      0000000A0000003A483030335F4E414D45050000000000000000000000}
    Left = 56
    Top = 192
  end
  object oqMatrixDo: TOracleQuery
    Session = OracleSession
    Left = 224
    Top = 152
  end
end
