object frm01_Main: Tfrm01_Main
  Left = 183
  Top = 226
  Width = 690
  Height = 466
  Caption = '����� 405'
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
    Left = 114
    Top = 30
    Width = 5
    Height = 366
    Cursor = crHSplit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
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
      Caption = '   �������'
      Color = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object TreeView: TTreeView
    Left = 0
    Top = 30
    Width = 114
    Height = 366
    Align = alLeft
    HideSelection = False
    Indent = 19
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    OnChange = TreeViewChange
    Items.Data = {
      01000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      09D4EEF0ECE020343035}
  end
  object paFrameParent: TPanel
    Left = 119
    Top = 30
    Width = 563
    Height = 366
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 396
    Width = 682
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 144
    object N4: TMenuItem
      Caption = '���������'
      object N3: TMenuItem
        Action = actQuit
      end
    end
    object N1: TMenuItem
      Caption = '������'
      object N9: TMenuItem
        Action = actShowSettings
      end
      object N2: TMenuItem
        Action = actChangePass
      end
      object N10: TMenuItem
        Action = actSetRepPath
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Action = actStartReplication
      end
    end
    object N7: TMenuItem
      Caption = '�������'
      object N8: TMenuItem
        Action = actProgramInfo
      end
    end
  end
  object ActionList: TActionList
    Left = 56
    Top = 144
    object actProgramInfo: TAction
      Caption = '� ���������'
      OnExecute = actProgramInfoExecute
    end
    object actQuit: TAction
      Caption = '�����'
      OnExecute = actQuitExecute
    end
    object actUdateData: TAction
      Caption = '������ ���� ������'
      Hint = '������ ���� ������'
    end
    object actGetLastData: TAction
      Caption = '������ ��������� ������'
      Hint = '������ ��������� ������'
    end
    object actShowSettings: TAction
      Caption = '���������...'
      OnExecute = actShowSettingsExecute
    end
    object actChangePass: TAction
      Caption = '������� ������...'
      OnExecute = actChangePassExecute
      OnUpdate = actChangePassUpdate
    end
    object actStartReplication: TAction
      Caption = '�������� ������� �� ���'
      Hint = '������ �������� �������� ������� �� ���'
      OnExecute = actStartReplicationExecute
    end
    object actSetRepPath: TAction
      Caption = '���������� ���� � ����� �������...'
      OnExecute = actSetRepPathExecute
    end
  end
end
