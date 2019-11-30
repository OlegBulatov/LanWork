inherited frm33_IssuerSelectList: Tfrm33_IssuerSelectList
  Left = 40
  Top = 31
  Width = 912
  Height = 675
  Caption = 'Список выбранных эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 901
    Height = 596
  end
  inherited Panel2: TPanel
    Top = 615
    Width = 904
    Visible = True
    inherited Panel3: TPanel
      Left = 739
    end
  end
  inherited paRight: TPanel
    Left = 904
    Height = 596
  end
  inherited paMain: TPanel
    Width = 901
    Height = 596
    inherited ToolBar2: TToolBar
      Width = 901
      inherited ToolButton17: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 901
      Height = 531
    end
    inherited fmSeach: TfmSeachFrame
      Width = 901
      inherited Panel1: TPanel
        Left = 874
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 901
      inherited Panel1: TPanel
        Left = 874
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 596
    Width = 904
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T028_ID,'
      '  T028_SHOT_NAME,'
      '  T036_ISBANK, '
      '  T036_INCLUDE,'
      '  T028_INN,'
      '  T025_ID,'
      '  T025_SHOT_NAME,'
      '  T036_TICKER_SKRIN,'
      '  T036_MAIL_ADDRESS,'
      '  T036_REG_NUMBER,'
      '  T036_COMPANY_HEAD,'
      '  T036_INDUSTRY,'
      '  T037_ID,'
      '  T028_COUNTRY_ID,'
      '  COUNTRY_NAME, '
      '  T028_CODE'
      'FROM   V_NR_ISSUERS_SELECT')
  end
end
