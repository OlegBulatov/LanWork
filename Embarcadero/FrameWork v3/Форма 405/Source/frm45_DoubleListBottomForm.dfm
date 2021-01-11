inherited frm45_DoubleListBottom: Tfrm45_DoubleListBottom
  Left = 106
  Top = 198
  Caption = 'frm45_DoubleListBottom'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 822
    ExplicitHeight = 285
  end
  inherited paRight: TPanel
    ExplicitLeft = 825
    ExplicitHeight = 285
  end
  inherited paMain: TPanel
    ExplicitWidth = 822
    ExplicitHeight = 285
    inherited ToolBar2: TToolBar
      ExplicitWidth = 822
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 795
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 795
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 318
    ExplicitWidth = 825
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
