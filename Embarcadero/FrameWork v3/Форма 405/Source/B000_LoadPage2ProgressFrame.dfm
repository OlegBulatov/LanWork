inherited B000_LoadPage2Progress: TB000_LoadPage2Progress
  Height = 473
  inherited lbProcessName: TLabel
    Width = 149
    Caption = 'Загрузка отчетов формы 711'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Load_711.p_load_711('
      '    :T220_id,'
      '    :T055_id_s,'
      '    :T055_id_e,'
      '    :LOAD_N,'
      '    :LOAD_R,'
      '    :USER'
      '    );'
      'END;')
    Variables.Data = {
      0300000006000000080000003A543232305F4944040000000000000000000000
      0A0000003A543035355F49445F530400000000000000000000000A0000003A54
      3035355F49445F45040000000000000000000000070000003A4C4F41445F4E05
      0000000000000000000000070000003A4C4F41445F5205000000000000000000
      0000050000003A55534552050000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_711.p_get_711_counts(:T055_ID_S,'
      '                               :T055_ID_E,'
      '                               :N_ALL,'
      '                               :R_ALL, '
      '                               :N,'
      '                               :S);'
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
      '  :T220_ID := PK_405_LOAD_711.F_START_711_REPLICATION;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0300000001000000080000003A543232305F4944040000000000000000000000}
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_405_Load_711.f_get_711_progress(:T220_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A565F434F554E54040000000000000000000000
      080000003A543232305F4944040000000000000000000000}
    Left = 44
    Top = 136
  end
end
