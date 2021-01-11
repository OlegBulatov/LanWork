object M001_InnKoHistoryList: TM001_InnKoHistoryList
  Left = -7
  Top = 309
  Width = 1038
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
    Top = 338
    Width = 1022
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 927
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
    Height = 338
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Height = 292
    end
  end
end
