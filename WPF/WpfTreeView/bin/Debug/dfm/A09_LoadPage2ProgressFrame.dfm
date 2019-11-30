inherited A09_LoadPage2Progress: TA09_LoadPage2Progress
  Width = 553
  Height = 397
  inherited Bevel1: TBevel
    Left = 10
    Width = 550
  end
  inherited ProgressBar1: TGauge
    Left = 11
    Width = 550
  end
  inherited Label6: TLabel
    Width = 85
    Caption = 'Время загрузки:'
  end
  inherited lbTime: TLabel
    Left = 97
  end
  inherited lbProcessName: TLabel
    Width = 295
    Caption = 'Идет процесс загрузки отчетов кредитных организаций...'
  end
  inherited lbResult: TLabel
    Top = 97
    Visible = False
  end
  inherited lbProgressStep: TLabel
    Width = 55
    Caption = 'Загружено'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_410_Load.p_load_reports(:T018_ID, :T055_ID_S, :T055_ID_E, :' +
        'LOAD_N, :LOAD_R, :USER);'
      'END;'
      ' ')
    Variables.Data = {
      0300000006000000080000003A543031385F4944040000000000000000000000
      0A0000003A543035355F49445F530400000000000000000000000A0000003A54
      3035355F49445F45040000000000000000000000070000003A4C4F41445F4E05
      0000000000000000000000070000003A4C4F41445F5205000000000000000000
      0000050000003A55534552050000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_get_counts(:T055_ID_S,'
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
      '  :T018_ID := DPB_410_BOSS.PK_410_LOAD.F_START_REPLICATION;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031385F4944040000000000000000000000}
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_410_Load.f_get_progess(:T018_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A565F434F554E54040000000000000000000000
      080000003A543031385F4944040000000000000000000000}
    Left = 44
    Top = 136
  end
end
