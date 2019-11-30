object Form1: TForm1
  Left = 227
  Top = 233
  Width = 503
  Height = 659
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 257
    Top = 26
    Width = 11
    Height = 559
    Cursor = crHSplit
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 585
    Width = 495
    Height = 20
    Panels = <>
    SimplePanel = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 26
    Align = alTop
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
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 5
      Height = 16
    end
    object lbUserName: TLabel
      Left = 478
      Top = 6
      Width = 5
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
    end
  end
  object Panel1: TPanel
    Left = 268
    Top = 26
    Width = 227
    Height = 559
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 26
    Width = 257
    Height = 559
    Align = alLeft
    TabOrder = 3
    inline fmTree408: TfmTree408
      Left = 1
      Top = 1
      Width = 255
      Height = 557
      Align = alClient
      inherited paTreeParent: TPanel
        Width = 255
        Height = 532
        inherited tvList: TTreeView
          Width = 251
          Height = 528
          OnChange = fmTree4081tvListChange
        end
      end
      inherited paToolButton: TPanel
        Width = 255
      end
      inherited actList: TActionList
        Left = 40
        Top = 400
      end
      inherited dsList: TDataSource
        Left = 88
        Top = 59
      end
      inherited odsList: TOracleDataSet
        Left = 140
        Top = 49
      end
      inherited oqAdd: TOracleQuery
        Left = 118
        Top = 384
      end
      inherited oqUpdate: TOracleQuery
        Left = 118
        Top = 416
      end
      inherited oqDelete: TOracleQuery
        Left = 118
        Top = 448
      end
      inherited odsFetchRecord: TOracleDataSet
        Left = 72
        Top = 346
      end
      inherited odsItemData: TOracleDataSet
        Left = 36
        Top = 475
      end
    end
  end
  object oqInitUser: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_BOP_USER.p_init_user_login ( :I_LOGIN);'
      'END; '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A495F4C4F47494E050000000000000000000000}
    Left = 379
    Top = 94
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 250
    object N1: TMenuItem
      Caption = 'Программа'
      object N8: TMenuItem
        Caption = 'Выход'
      end
    end
    object cvfddf1: TMenuItem
      Caption = 'Данные'
    end
    object N2: TMenuItem
      Caption = 'Сервис'
      object N5: TMenuItem
        Caption = 'Параметры...'
      end
      object N6: TMenuItem
        Caption = 'Сменить пароль...'
      end
      object N7: TMenuItem
        Caption = 'Установить путь к папке отчетов'
      end
    end
    object N3: TMenuItem
      Caption = 'Справка'
      object N4: TMenuItem
        Caption = 'О программе'
      end
    end
  end
end
