inherited frm04_TabList: Tfrm04_TabList
  Left = 214
  Top = 206
  Caption = 'frm04_TabList'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 58
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 151
    ExplicitWidth = 679
  end
  inherited spRight: TSplitter
    Height = 58
    ExplicitLeft = 676
    ExplicitHeight = 151
  end
  inherited paRight: TPanel
    Height = 58
    ExplicitLeft = 679
    ExplicitHeight = 151
  end
  inherited paMain: TPanel
    Height = 58
    ExplicitWidth = 676
    ExplicitHeight = 151
    inherited ToolBar2: TToolBar
      ExplicitWidth = 676
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 597
        Top = 0
        Action = actShowDetail
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 82
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 649
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 649
      end
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 61
    Width = 680
    Height = 330
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 4
    ExplicitTop = 154
    ExplicitWidth = 679
    object pc01: TPageControl
      Left = 1
      Top = 1
      Width = 678
      Height = 328
      ActivePage = ts01
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 677
      object ts01: TTabSheet
        Caption = #1047#1072#1082#1083#1072#1076#1082#1072' 01'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 517
    ExplicitWidth = 679
  end
  inherited pnlButtons: TPanel
    inherited OKBtn: TButton
      Left = 521
      ExplicitLeft = 521
    end
    inherited CancelBtn: TButton
      Left = 601
      ExplicitLeft = 601
    end
  end
  inherited ActionList: TActionList
    object actShowDetail: TAction
      Caption = #1047#1072#1082#1083#1072#1076#1082#1072' 01'
      Checked = True
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1079#1072#1082#1083#1072#1076#1082#1091' 01'
      ImageIndex = 11
      OnExecute = actShowDetailExecute
    end
  end
end
