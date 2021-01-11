inherited A000_ProgessDB: TA000_ProgessDB
  Left = 376
  Top = 341
  Caption = 'Название процесса'
  ClientHeight = 107
  OldCreateOrder = True
  OnCreate = FormCreate
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
    Top = 72
    OnClick = btnOkClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 328
    Top = 70
  end
  object oqGetState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_PROGRESS.P_GET_PROGRESS ('
      '    :i_context,'
      '    :o_proc_caption,'
      '    :O_PROC_DESC,'
      '    :O_PROC_CNT,'
      '    :o_proc_total,'
      '    :O_PROC_REMANING,'
      '    :O_PROC_ELAPSED,'
      '    :O_STEP_CAPTION,'
      '    :O_STEP_DESC,'
      '    :O_STEP_CNT,'
      '    :o_step_total,'
      '    :O_STEP_REMANING,'
      '    :O_STEP_ELAPSED);'
      'eND;'
      ' '
      ' '
      ' ')
    Session = osProgress
    Variables.Data = {
      030000000D0000000C0000003A4F5F50524F435F444553430500000000000000
      000000000B0000003A4F5F50524F435F434E540400000000000000000000000B
      0000003A4F5F535445505F434E540400000000000000000000000F0000003A4F
      5F535445505F43415054494F4E0500000000000000000000000C0000003A4F5F
      535445505F444553430500000000000000000000000A0000003A495F434F4E54
      4558540400000000000000000000000F0000003A4F5F50524F435F4341505449
      4F4E0500000000000000000000000D0000003A4F5F50524F435F544F54414C04
      00000000000000000000000D0000003A4F5F535445505F544F54414C04000000
      0000000000000000100000003A4F5F50524F435F52454D414E494E4704000000
      00000000000000000F0000003A4F5F50524F435F454C41505345440400000000
      00000000000000100000003A4F5F535445505F52454D414E494E470400000000
      000000000000000F0000003A4F5F535445505F454C4150534544040000000000
      000000000000}
    Threaded = True
    OnThreadFinished = oqGetStateThreadFinished
    OnThreadError = oqGetStateThreadError
    Left = 296
    Top = 70
  end
  object osProgress: TOracleSession
    Left = 264
    Top = 70
  end
  object oqStartProgress: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :RetVal := PK_405_PROGRESS.P_START_PROC (:I_CODE);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A52455456414C04000000000000000000000007
      0000003A495F434F4445050000000000000000000000}
    ThreadSynchronized = False
    Left = 264
    Top = 39
  end
end
