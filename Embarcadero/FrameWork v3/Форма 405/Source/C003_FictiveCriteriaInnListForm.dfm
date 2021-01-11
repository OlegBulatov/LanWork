object C003_FictiveCriteriaInnList: TC003_FictiveCriteriaInnList
  Left = 666
  Top = 253
  Width = 748
  Height = 551
  Caption = 'Список ИНН крупных компаний'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 479
    Width = 740
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 652
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Закрыть'
      ModalResult = 1
      TabOrder = 0
    end
  end
  inline Grid: TC003_FictiveCriteriaInnListGrid
    Width = 740
    Height = 479
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 740
      Height = 433
    end
    inherited paToolButton: TPanel
      Width = 740
      inherited tlbList: TToolBar
        Width = 242
      end
      inherited tlbExcel: TToolBar
        Left = 319
      end
      inherited tlbSeach: TToolBar
        Left = 353
        Width = 67
      end
      inherited tlbFilter: TToolBar
        Left = 420
      end
      inherited tlbSelect: TToolBar
        Left = 501
        Width = 31
      end
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 740
      inherited Panel1: TPanel
        Left = 713
      end
    end
    inherited odsList: TOracleDataSet
      SQL.Strings = (
        '')
    end
  end
end
