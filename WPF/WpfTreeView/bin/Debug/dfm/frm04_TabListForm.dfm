inherited frm04_TabList: Tfrm04_TabList
  Left = 337
  Top = 0
  Width = 687
  Height = 570
  Caption = 'frm04_TabList'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 151
    Width = 679
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inherited spRight: TSplitter
    Left = 676
    Height = 151
  end
  inherited paRight: TPanel
    Left = 679
    Height = 151
  end
  inherited paMain: TPanel
    Width = 676
    Height = 151
    inherited ToolBar2: TToolBar
      Width = 676
      object ToolButton5: TToolButton
        Left = 604
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 612
        Top = 0
        Action = actShowDetail
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 676
      Height = 86
    end
    inherited fmSeach: TfmSeachFrame
      Width = 676
      inherited Panel1: TPanel
        Left = 649
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 676
      inherited Panel1: TPanel
        Left = 649
      end
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 154
    Width = 679
    Height = 330
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 4
    object pc01: TPageControl
      Left = 1
      Top = 1
      Width = 677
      Height = 328
      ActivePage = ts01
      Align = alClient
      TabOrder = 0
      object ts01: TTabSheet
        Caption = 'Закладка 01'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 517
    Width = 679
  end
  inherited pnlButtons: TPanel
    Top = 484
    Width = 679
    inherited OKBtn: TButton
      Left = 521
    end
    inherited CancelBtn: TButton
      Left = 601
    end
  end
  inherited ActionList: TActionList
    object actShowDetail: TAction
      Caption = 'Закладка 01'
      Checked = True
      Hint = 'Показать/скрыть закладку 01'
      ImageIndex = 11
      OnExecute = actShowDetailExecute
    end
  end
end
