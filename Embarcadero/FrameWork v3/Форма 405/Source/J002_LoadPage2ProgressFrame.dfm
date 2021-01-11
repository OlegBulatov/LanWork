inherited J002_LoadPage2Progress: TJ002_LoadPage2Progress
  Height = 473
  ExplicitHeight = 473
  inherited lbProcessName: TLabel
    Width = 146
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1092#1086#1088#1084#1099' 417'
    ExplicitWidth = 146
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
      0400000006000000140000003A0054003000350035005F00490044005F005300
      040000000000000000000000140000003A0054003000350035005F0049004400
      5F0045000400000000000000000000000E0000003A004C004F00410044005F00
      4E000500000000000000000000000E0000003A004C004F00410044005F005200
      0500000000000000000000000A0000003A005500530045005200050000000000
      000000000000100000003A0054003100380030005F0049004400040000000000
      000000000000}
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
      0400000006000000140000003A0054003000350035005F00490044005F005300
      040000000000000000000000140000003A0054003000350035005F0049004400
      5F0045000400000000000000000000000C0000003A004E005F0041004C004C00
      0400000000000000000000000C0000003A0052005F0041004C004C0004000000
      0000000000000000040000003A004E0004000000000000000000000004000000
      3A005300040000000000000000000000}
  end
  inherited oqBeforeProcess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T180_ID := PK_405_417_data.F_START_417_REPLICATION;'
      '  COMMIT; '
      'END;')
    Variables.Data = {
      0400000001000000100000003A0054003100380030005F004900440004000000
      0000000000000000}
    Top = 144
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_count := Pk_405_417_data.f_get_417_progress(:T180_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0056005F0043004F0055004E00540004000000
      0000000000000000100000003A0054003100380030005F004900440004000000
      0000000000000000}
    Left = 44
    Top = 136
  end
  object oqResult: TOracleQuery
    SQL.Strings = (
      'select T180_JOB_ERROR'
      'from   V_405_T180_417_REPLICATION'
      'where  T180_ID = :T180_ID')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003100380030005F004900440004000000
      0000000000000000}
    Left = 264
    Top = 208
  end
end
