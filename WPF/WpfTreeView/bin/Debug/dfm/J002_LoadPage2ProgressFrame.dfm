inherited J002_LoadPage2Progress: TJ002_LoadPage2Progress
  Height = 473
  inherited lbProcessName: TLabel
    Width = 147
    Caption = 'Загрузка данных формы 417'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_417_data.p_load_417_start('
      '    :T180_id,'
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
      0000003A543138305F4944040000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_417_data.p_get_417_counts(:T055_ID_S,'
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
      '  :T180_ID := PK_405_417_data.F_START_417_REPLICATION;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0300000001000000080000003A543138305F4944040000000000000000000000}
    Top = 144
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_405_417_data.f_get_417_progress(:T180_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A565F434F554E54040000000000000000000000
      080000003A543138305F4944040000000000000000000000}
    Left = 44
    Top = 136
  end
  object oqResult: TOracleQuery
    SQL.Strings = (
      'select T180_JOB_ERROR'
      'from   V_405_T180_417_REPLICATION'
      'where  T180_ID = :T180_ID')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543138305F4944040000000000000000000000}
    Left = 264
    Top = 208
  end
end
