inherited A12_CheckProgress: TA12_CheckProgress
  inherited lbProcessName: TLabel
    Width = 79
    Caption = 'Сверка отчетов'
  end
  inherited lbResult: TLabel
    Visible = False
  end
  inherited lbProgressStep: TLabel
    Width = 61
    Caption = 'Обработано'
  end
  inherited oqThread: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Check.p_check_all_data(:T055_ID);'
      '  COMMIT;'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
  end
  inherited oqMaxCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := Pk_410_Check.f_get_progress(:T055_ID);'
      'end;')
    Variables.Data = {
      0300000002000000070000003A524553554C5404000000000000000000000008
      0000003A543035355F4944040000000000000000000000}
  end
  inherited oqBeforeProcess: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Check.p_clear_check_marks(:T055_ID);'
      '  COMMIT;'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
  end
end
