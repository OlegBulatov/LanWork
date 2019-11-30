object frm01_Main: Tfrm01_Main
  Left = 488
  Top = 207
  Width = 758
  Height = 497
  Caption = 'Форма 404'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 193
    Top = 30
    Width = 2
    Height = 390
    Cursor = crHSplit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 26
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '
      Color = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 48
        Height = 16
        Caption = 'Label1'
      end
    end
  end
  object paFrameParent: TPanel
    Left = 195
    Top = 30
    Width = 547
    Height = 390
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 420
    Width = 742
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  inline A00_MenuTree1: TA00_MenuTree
    Top = 30
    Width = 193
    Height = 390
    Align = alLeft
    TabOrder = 3
    inherited tvList: TTreeView
      Width = 193
      Height = 390
      OnChange = A00_MenuTree1tvListChange
    end
    inherited paToolButton: TPanel
      Width = 193
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 220
    object N4: TMenuItem
      Caption = 'Программа'
      object N3: TMenuItem
        Action = actQuit
      end
    end
    object N6: TMenuItem
      Caption = 'Данные'
      object OracleBI1: TMenuItem
        Caption = 'Обновить данные Oracle BI'
        OnClick = OracleBI1Click
      end
    end
    object N1: TMenuItem
      Caption = 'Сервис'
      object N9: TMenuItem
        Action = actShowSettings
        Enabled = False
        Visible = False
      end
      object N2: TMenuItem
        Action = actChangePass
      end
      object N5: TMenuItem
        Action = actSetRepPath
      end
    end
    object N7: TMenuItem
      Caption = 'Справка'
      object N8: TMenuItem
        Action = actProgramInfo
      end
    end
    object ss1: TMenuItem
    end
  end
  object ActionList: TActionList
    Left = 88
    Top = 220
    object actProgramInfo: TAction
      Caption = 'О программе'
      OnExecute = actProgramInfoExecute
    end
    object actQuit: TAction
      Caption = 'Выход'
      OnExecute = actQuitExecute
    end
    object actUdateData: TAction
      Caption = 'Импорт всех данных'
      Hint = 'Импорт всех данных'
    end
    object actGetLastData: TAction
      Caption = 'Импорт вчерашних данных'
      Hint = 'Импорт вчерашних данных'
    end
    object actShowSettings: TAction
      Caption = 'Параметры...'
      OnExecute = actShowSettingsExecute
    end
    object actChangePass: TAction
      Caption = 'Сменить пароль...'
      OnExecute = actChangePassExecute
      OnUpdate = actChangePassUpdate
    end
    object actSetRepPath: TAction
      Caption = 'Установить путь к папке отчетов'
      OnExecute = actSetRepPathExecute
    end
  end
  object oqBI: TOracleQuery
    SQL.Strings = (
      'begin'
      ' Pk_404_Olap.p_do_load;'
      'end;')
    Session = dmMain.OracleSession
    Left = 403
    Top = 78
  end
end
