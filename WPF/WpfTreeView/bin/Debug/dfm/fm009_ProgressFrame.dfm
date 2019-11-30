inherited fmProgress: TfmProgress
  Width = 604
  Height = 264
  OnResize = FrameResize
  object Bevel1: TBevel [0]
    Left = 8
    Top = 33
    Width = 584
    Height = 16
    Anchors = [akLeft, akTop, akRight]
  end
  object ProgressBar1: TGauge [1]
    Left = 9
    Top = 34
    Width = 584
    Height = 14
    Anchors = [akLeft, akTop, akRight]
    BackColor = clBtnFace
    BorderStyle = bsNone
    ForeColor = clBlue
    Progress = 10
  end
  object Label6: TLabel [2]
    Left = 8
    Top = 79
    Width = 43
    Height = 13
    Caption = 'Прошло:'
  end
  object lbTime: TLabel [3]
    Left = 62
    Top = 79
    Width = 42
    Height = 13
    Hint = 'Прошло времени'
    Caption = '00:00:00'
    ParentShowHint = False
    ShowHint = True
  end
  object lbProcessName: TLabel [4]
    Left = 8
    Top = 8
    Width = 113
    Height = 13
    Caption = 'Название процесса....'
  end
  object lbResult: TLabel [5]
    Left = 8
    Top = 95
    Width = 113
    Height = 13
    Caption = 'Название процесса....'
  end
  object lbProgressStep: TLabel [6]
    Left = 8
    Top = 61
    Width = 146
    Height = 13
    Caption = 'Отображаем ход загрузки....'
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 340
    Top = 32
  end
  object osThread: TOracleSession
    Cursor = crDefault
    Left = 124
    Top = 140
  end
  object oqThread: TOracleQuery
    Session = osThread
    Left = 160
    Top = 140
  end
  object oqMaxCount: TOracleQuery
    Session = dmMain.OracleSession
    Left = 264
    Top = 96
  end
  object oqBeforeProcess: TOracleQuery
    Session = dmMain.OracleSession
    Left = 264
    Top = 128
  end
  object oqMatrixDo: TOracleQuery
    Session = osThread
    Left = 360
    Top = 152
  end
end
