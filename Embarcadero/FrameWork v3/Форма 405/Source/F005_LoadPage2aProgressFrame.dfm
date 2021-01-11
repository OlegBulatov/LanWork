inherited F005_LoadPage2aProgress: TF005_LoadPage2aProgress
  Height = 473
  inherited lbProcessName: TLabel
    Width = 147
    Caption = 'Загрузка данных формы 415'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_415_data.p_load_415('
      '    :T245_id,'
      '    :T055_id_s,'
      '    :T055_id_e,'
      '    :LOAD_N,'
      '    :LOAD_R,'
      '    :USER'
      '    );'
      'END;')
    Variables.Data = {
      03000000060000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000007000000
      3A4C4F41445F4E050000000000000000000000070000003A4C4F41445F520500
      00000000000000000000050000003A5553455205000000000000000000000008
      0000003A543234355F4944040000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_data.p_get_415_counts(:T055_ID_S,'
      '                                   :T055_ID_E,'
      '                                   :N_ALL,'
      '                                   :R_ALL, '
      '                                   :N,'
      '                                   :S);'
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
      '  :T245_ID := PK_405_415_data.F_START_415_REPLICATION;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0300000001000000080000003A543234355F4944040000000000000000000000}
    Top = 144
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_405_415_data.f_get_415_progress(:T245_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A565F434F554E54040000000000000000000000
      080000003A543234355F4944040000000000000000000000}
    Left = 44
    Top = 136
  end
end
