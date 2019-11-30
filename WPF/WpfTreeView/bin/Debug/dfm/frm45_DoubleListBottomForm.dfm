inherited frm45_DoubleListBottom: Tfrm45_DoubleListBottom
  Left = 106
  Top = 198
  Width = 833
  Height = 371
  Caption = 'frm45_DoubleListBottom'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 822
    Height = 285
  end
  inherited paRight: TPanel
    Left = 825
    Height = 285
  end
  inherited paMain: TPanel
    Width = 822
    Height = 285
    inherited ToolBar2: TToolBar
      Width = 822
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 822
      Height = 220
    end
    inherited fmSeach: TfmSeachFrame
      Width = 822
      inherited Panel1: TPanel
        Left = 795
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 822
      inherited Panel1: TPanel
        Left = 795
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 318
    Width = 825
  end
  inherited pnlButtons: TPanel
    Top = 285
    Width = 825
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
end
