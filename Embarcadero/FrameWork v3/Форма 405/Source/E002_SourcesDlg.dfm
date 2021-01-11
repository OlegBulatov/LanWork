object E002_Sources: TE002_Sources
  Left = 269
  Top = 339
  Width = 575
  Height = 311
  Caption = 'Источники данных ф 405 (КО)'
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
    Top = 236
    Width = 567
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 475
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  inline Grid: TE002_SourcesGrid
    Width = 567
    Height = 236
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 567
      Height = 211
    end
    inherited paToolButton: TPanel
      Width = 567
    end
  end
end
