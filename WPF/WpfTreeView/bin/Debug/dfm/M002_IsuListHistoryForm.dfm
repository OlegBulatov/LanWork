object M002_IsuListHistory: TM002_IsuListHistory
  Left = 155
  Top = 241
  Width = 1173
  Height = 359
  ActiveControl = Button1
  Caption = 'История изменений'
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
  inline Grid: TM002_IsuListHistoryGrid
    Width = 1165
    Height = 287
    Align = alClient
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1165
      Height = 241
    end
    inherited paToolButton: TPanel
      Width = 1165
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 1165
      inherited Panel1: TPanel
        Left = 1138
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 287
    Width = 1165
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 1068
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Закрыть'
      ModalResult = 2
      TabOrder = 0
    end
  end
end
