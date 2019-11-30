object M001_InnKoHistoryList: TM001_InnKoHistoryList
  Left = 184
  Top = 306
  Width = 1190
  Height = 418
  Caption = 'M001_InnKoHistoryList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 346
    Width = 1182
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 1079
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Закрыть'
      ModalResult = 2
      TabOrder = 0
    end
  end
  inline Grid: TM001_InnKoHistoryGrid
    Width = 1182
    Height = 346
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1182
      Height = 300
    end
    inherited paToolButton: TPanel
      Width = 1182
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 1182
      inherited Panel1: TPanel
        Left = 1155
      end
    end
  end
end
