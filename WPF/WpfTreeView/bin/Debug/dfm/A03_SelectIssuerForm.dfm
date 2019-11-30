object A03_SelectIssuer: TA03_SelectIssuer
  Left = 198
  Top = 315
  Width = 571
  Height = 480
  Caption = 'Выберите главного эмитента'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 563
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 381
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Выбрать'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 469
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Отменить'
      ModalResult = 2
      TabOrder = 1
    end
  end
  inline Grid: TA03_SelectIssuerGrid
    Width = 563
    Height = 405
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 563
      Height = 380
    end
    inherited paToolButton: TPanel
      Width = 563
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
        Width = 81
      end
      inherited tlbSelect: TToolBar
        Left = 501
        Width = 31
      end
    end
  end
end
