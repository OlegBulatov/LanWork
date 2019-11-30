object E001_SiDetails: TE001_SiDetails
  Left = 64
  Top = 230
  Width = 1107
  Height = 364
  BorderIcons = [biSystemMenu]
  Caption = 'Детализация доли прямых инвестиций'
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
    Top = 293
    Width = 1099
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnClose: TButton
      Left = 1014
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Закрыть'
      ModalResult = 1
      TabOrder = 0
    end
  end
  inline Grid: TE001_SiDetailsGrid
    Width = 1099
    Height = 293
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1099
      Height = 247
    end
    inherited paToolButton: TPanel
      Width = 1099
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 1099
      inherited Panel1: TPanel
        Left = 1072
      end
    end
  end
end
