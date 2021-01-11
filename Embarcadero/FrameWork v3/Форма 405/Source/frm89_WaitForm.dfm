object frm89_Wait: Tfrm89_Wait
  Left = 336
  Top = 298
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'frm89_Wait'
  ClientHeight = 60
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 9
    Width = 377
    Height = 16
  end
  object ProgressBar1: TGauge
    Left = 9
    Top = 10
    Width = 375
    Height = 14
    BackColor = clBtnFace
    BorderStyle = bsNone
    ForeColor = clBlue
    Progress = 0
  end
  object Label2: TLabel
    Left = 8
    Top = 28
    Width = 52
    Height = 13
    Caption = 'Осталось:'
  end
  object Label4: TLabel
    Left = 62
    Top = 28
    Width = 42
    Height = 13
    Caption = '00:00:00'
  end
  object Label5: TLabel
    Left = 62
    Top = 44
    Width = 42
    Height = 13
    Hint = 'Прошло времени'
    Caption = '00:00:00'
    ParentShowHint = False
    ShowHint = True
  end
  object Label6: TLabel
    Left = 8
    Top = 44
    Width = 43
    Height = 13
    Caption = 'Прошло:'
  end
  object btnOk: TButton
    Left = 156
    Top = 32
    Width = 75
    Height = 25
    Caption = 'ОК'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 280
    Top = 32
  end
end
