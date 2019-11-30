inherited A000_ProcInfo: TA000_ProcInfo
  Left = 406
  Top = 226
  Caption = 'Название процесса'
  ClientHeight = 135
  ClientWidth = 392
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ProgressBar1: TGauge
    Left = 8
    Top = 26
    Progress = 67
  end
  inherited Label1: TLabel
    Top = 48
    Width = 242
    Caption = 'Количество обработанных записей 934 из 1508'
  end
  inherited Label2: TLabel
    Left = 280
    Top = 74
    Enabled = False
    Visible = False
  end
  object lbStep: TLabel [3]
    Left = 8
    Top = 8
    Width = 137
    Height = 13
    Caption = 'Шаг 2 из 3. Название шага'
  end
  object lbPrcElapsed: TLabel [4]
    Left = 60
    Top = 64
    Width = 42
    Height = 13
    Caption = '00:00:00'
  end
  object lbPrcRemain: TLabel [5]
    Left = 61
    Top = 80
    Width = 42
    Height = 13
    Caption = '00:00:00'
  end
  object Label3: TLabel [6]
    Left = 8
    Top = 64
    Width = 43
    Height = 13
    Caption = 'Прошло:'
  end
  object Label4: TLabel [7]
    Left = 8
    Top = 80
    Width = 52
    Height = 13
    Caption = 'Осталось:'
  end
  inherited btnOk: TButton
    Top = 100
    OnClick = btnOkClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 328
    Top = 6
  end
  object oqGetPorcInfo: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_get_proс_info ('
      
        '    :T303_ID, :T303_CAPTION, :T303_NAME, :T303_COMMENT, :T303_CU' +
        'RR_CNT, :T303_TOTAL_CNT,'
      '    :T303_END_TIME, :o_remaning, :o_elapsed '
      '    );'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Session = osProgress
    Variables.Data = {
      03000000090000000D0000003A543330335F43415054494F4E05000000000000
      00000000000A0000003A543330335F4E414D450500000000000000000000000D
      0000003A543330335F434F4D4D454E540500000000000000000000000E000000
      3A543330335F435552525F434E540500000000000000000000000F0000003A54
      3330335F544F54414C5F434E540500000000000000000000000B0000003A4F5F
      52454D414E494E470400000000000000000000000A0000003A4F5F454C415053
      45440400000000000000000000000E0000003A543330335F454E445F54494D45
      0C0000000000000000000000080000003A543330335F49440400000000000000
      00000000}
    Threaded = True
    OnThreadFinished = oqGetPorcInfoThreadFinished
    OnThreadError = oqGetPorcInfoThreadError
    Left = 360
    Top = 38
  end
  object osProgress: TOracleSession
    Left = 360
    Top = 6
  end
  object oqStartProcess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  DPB_405_BOSS.PK_405_PROCESS_INFO.P_START_PROC ( :T303_CAPTION,' +
        ' :T303_NAME, :T303_COMMENT, :T303_CURR_CNT, :T303_TOTAL_CNT );'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000050000000D0000003A543330335F43415054494F4E05000000000000
      00000000000A0000003A543330335F4E414D450500000000000000000000000D
      0000003A543330335F434F4D4D454E540500000000000000000000000E000000
      3A543330335F435552525F434E540400000000000000000000000F0000003A54
      3330335F544F54414C5F434E54040000000000000000000000}
    ThreadSynchronized = False
    Left = 264
    Top = 39
  end
  object oqCteateProcess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :RetVal := DPB_405_BOSS.Pk_405_Process_Info.f_create_proc;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A52455456414C040000000000000000000000}
    ThreadSynchronized = False
    Left = 264
    Top = 7
  end
  object oqSetProcInfo: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_set_proc_info( :T303_CAPTIO' +
        'N, :T303_NAME, :T303_COMMENT, :T303_CURR_CNT, :T303_TOTAL_CNT );'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000050000000D0000003A543330335F434F4D4D454E5405000000000000
      00000000000E0000003A543330335F435552525F434E54040000000000000000
      0000000D0000003A543330335F43415054494F4E050000000000000000000000
      0A0000003A543330335F4E414D450500000000000000000000000F0000003A54
      3330335F544F54414C5F434E54040000000000000000000000}
    ThreadSynchronized = False
    Left = 328
    Top = 71
  end
  object oqSetCnt: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_set_cnt(:T303_COMMENT, :T30' +
        '3_CURR_CNT);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000D0000003A543330335F434F4D4D454E5405000000000000
      00000000000E0000003A543330335F435552525F434E54040000000000000000
      000000}
    ThreadSynchronized = False
    Left = 296
    Top = 7
  end
  object oqIncCommCnt: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_inc_cnt(:T303_COMMENT, :T30' +
        '3_CURR_CNT);'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000D0000003A543330335F434F4D4D454E5405000000000000
      00000000000E0000003A543330335F435552525F434E54040000000000000000
      000000}
    ThreadSynchronized = False
    Left = 296
    Top = 39
  end
  object oqIncStepCnt: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_inc_cnt(:T303_CURR_CNT);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000E0000003A543330335F435552525F434E54040000000000
      000000000000}
    ThreadSynchronized = False
    Left = 296
    Top = 71
  end
  object oqIncCnt: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_inc_cnt;'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    ThreadSynchronized = False
    Left = 328
    Top = 39
  end
  object oqEndProcess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DPB_405_BOSS.PK_405_PROCESS_INFO.p_end_proc( :T303_CAPTION);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000D0000003A543330335F43415054494F4E05000000000000
      0000000000}
    ThreadSynchronized = False
    Left = 264
    Top = 71
  end
  object oqMatrixDo: TOracleQuery
    SQL.Strings = (
      '')
    Session = osProgress
    Left = 105
    Top = 48
  end
end
