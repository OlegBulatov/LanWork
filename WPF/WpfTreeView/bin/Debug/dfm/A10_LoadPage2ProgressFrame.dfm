inherited A10_LoadPage2Progress: TA10_LoadPage2Progress
  inherited lbProcessName: TLabel
    Width = 295
    Caption = 'Идет процесс загрузки отчетов кредитных организаций...'
  end
  inherited lbProgressStep: TLabel
    Width = 55
    Caption = 'Загружено'
  end
  inherited osThread: TOracleSession
    LogonUsername = 'DS_404_BOSS'
    LogonPassword = 'PWD_404_BOSS'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_404_Load.p_load_reports(:T018_ID, :T055_ID_S, :T055_ID_E, :' +
        'LOAD_N, :LOAD_R, :PART, :USER);'
      'END;')
    Variables.Data = {
      0300000007000000080000003A543031385F4944040000000000000000000000
      0A0000003A543035355F49445F530400000000000000000000000A0000003A54
      3035355F49445F45040000000000000000000000070000003A4C4F41445F4E05
      0000000000000000000000070000003A4C4F41445F5205000000000000000000
      0000050000003A55534552050000000000000000000000050000003A50415254
      040000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_get_counts(:T055_ID_S,'
      '                           :T055_ID_E,'
      '                           :N_ALL,'
      '                           :R_ALL, '
      '                           :N,'
      '                           :S);'
      'end;')
    Variables.Data = {
      03000000060000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000006000000
      3A4E5F414C4C040000000000000000000000060000003A525F414C4C04000000
      0000000000000000020000003A4E040000000000000000000000020000003A53
      040000000000000000000000}
  end
  inherited oqBeforeProcess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T018_ID := PK_404_Load.f_start_replication;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031385F4944040000000000000000000000}
  end
  inherited oqMatrixDo: TOracleQuery
    Left = 344
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_404_Load.f_get_progess(:T018_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A565F434F554E54040000000000000000000000
      080000003A543031385F4944040000000000000000000000}
    Left = 44
    Top = 136
  end
end
