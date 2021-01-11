object z_tst: Tz_tst
  Left = 95
  Top = 193
  Width = 746
  Height = 384
  Caption = 'z_tst'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline fmGrid21: TfmGrid2
    Width = 730
    Height = 345
    Align = alClient
    inherited xxxDBGrid: TxxxDBGrid
      Left = 40
      Top = 54
      Width = 705
      Align = alNone
    end
    inherited paToolButton: TPanel
      Width = 745
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 745
      inherited Panel1: TPanel
        Left = 718
      end
    end
    inherited odsList: TOracleDataSet
      Top = 133
    end
  end
end
