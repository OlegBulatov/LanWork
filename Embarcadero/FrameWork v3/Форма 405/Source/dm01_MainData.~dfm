object dm01_Main: Tdm01_Main
  OldCreateOrder = False
  Left = 142
  Top = 205
  Height = 480
  Width = 696
  object odsTree: TOracleDataSet
    SQL.Strings = (
      'SELECT   H001_ID,'
      #9' H001_PARENT_ID,'
      #9' H001_CLASS_NAME,'
      #9' H001_DISPL_NAME,'
      '                 H001_MX_OPERATION,'
      '                 H001_POSITION,'
      '                 -1 H001_IMAGE_INDEX'
      'FROM'#9' V_H001_TREE'
      'ORDER BY H001_POSITION')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000533030315F49440100000000000E000000533030
      315F504152454E545F49440100000000000F000000533030315F434C4153535F
      4E414D450100000000000F000000533030315F444953504C5F4E414D45010000
      000000}
    Session = dmMain.OracleSession
    Left = 56
    Top = 80
  end
  object oqStartReplication: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Replication. p_replicate_data;'
      'end;'
      '')
    Session = dmMain.OracleSession
    Left = 56
    Top = 248
  end
  object oqSetSessionParams: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_FORM_405.p_set_session_params;'
      'end;')
    Session = dmMain.OracleSession
    Left = 160
    Top = 88
  end
end
