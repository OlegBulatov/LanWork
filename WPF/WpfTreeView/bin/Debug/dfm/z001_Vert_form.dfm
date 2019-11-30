object z001_VertForm: Tz001_VertForm
  Left = 386
  Top = 154
  Width = 520
  Height = 700
  Caption = 'z001_VertForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline z001_Vert1: Tz001_Vert
    Width = 504
    Height = 662
    Align = alClient
    inherited xxxDBGrid: TxxxDBGrid
      Width = 504
      Height = 596
    end
    inherited paToolButton: TPanel
      Width = 504
    end
    inherited Panel1: TPanel
      Top = 621
      Width = 504
    end
  end
  object Button1: TButton
    Left = 417
    Top = 629
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Выход'
    TabOrder = 1
    OnClick = Button1Click
  end
end
