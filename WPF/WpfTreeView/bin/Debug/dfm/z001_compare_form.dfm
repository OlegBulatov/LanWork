object z001_CompareForm: Tz001_CompareForm
  Left = 263
  Top = 179
  Width = 825
  Height = 700
  Caption = 'z001_CompareForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline z001_compare1: Tz001_compare
    Width = 817
    Height = 666
    Align = alClient
    inherited xxxDBGrid: TxxxDBGrid
      Width = 817
      Height = 600
    end
    inherited paToolButton: TPanel
      Width = 817
    end
    inherited Panel1: TPanel
      Top = 625
      Width = 817
      Caption = ''
    end
  end
  object Button1: TButton
    Left = 717
    Top = 629
    Width = 85
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Выход'
    TabOrder = 1
    OnClick = Button1Click
  end
end
