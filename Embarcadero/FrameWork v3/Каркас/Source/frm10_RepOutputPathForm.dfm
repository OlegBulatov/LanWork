object frm10_RepOutputPath: Tfrm10_RepOutputPath
  Left = 192
  Top = 107
  Width = 309
  Height = 108
  Caption = 'Путь к папке отчетов'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 162
    Height = 13
    Caption = 'Выберете путь к папке отчетов:'
  end
  object Btn01: TButton
    Left = 144
    Top = 47
    Width = 75
    Height = 25
    Action = actOk
    TabOrder = 0
  end
  object Btn02: TButton
    Left = 224
    Top = 47
    Width = 75
    Height = 25
    Action = actCancel
    TabOrder = 1
  end
  object deRepOutputPath: TDirectoryEdit
    Left = 4
    Top = 20
    Width = 295
    Height = 21
    NumGlyphs = 1
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 152
    Top = 8
    object actOk: TAction
      Caption = 'OK'
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Отмена'
      OnExecute = actCancelExecute
    end
  end
end
