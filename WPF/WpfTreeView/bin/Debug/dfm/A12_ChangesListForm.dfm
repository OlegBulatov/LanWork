object A12_ChangesListFrm: TA12_ChangesListFrm
  Left = 66
  Top = 241
  Width = 820
  Height = 426
  Caption = 'История изменений'
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
    Top = 351
    Width = 812
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 723
      Top = 11
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Закрыть'
      ModalResult = 1
      TabOrder = 0
    end
  end
  inline List: TA12_ChangesList
    Width = 812
    Height = 351
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 812
      Height = 326
    end
    inherited paToolButton: TPanel
      Width = 812
    end
  end
end
