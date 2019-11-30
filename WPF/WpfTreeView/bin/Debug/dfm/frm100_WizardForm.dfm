inherited frm100_Wizard: Tfrm100_Wizard
  Left = 388
  Top = 104
  BorderStyle = bsDialog
  Caption = 'frm100_Wizard'
  ClientHeight = 561
  ClientWidth = 521
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 50
    Width = 521
    Height = 2
    Align = alTop
  end
  object paMain: TPanel
    Left = 0
    Top = 89
    Width = 521
    Height = 431
    Align = alClient
    TabOrder = 0
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 520
    Width = 521
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnNext: TButton
      Left = 361
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Далее >>'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnNextClick
    end
    object btnCancel: TButton
      Left = 441
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Отмена'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnBack: TButton
      Left = 280
      Top = 9
      Width = 75
      Height = 25
      Caption = '<< Назад'
      ModalResult = 1
      TabOrder = 2
      OnClick = btnBackClick
    end
  end
  object pnlCaption: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
    object lblStep: TLabel
      Left = 24
      Top = 6
      Width = 40
      Height = 13
      Caption = 'lblStep'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCaption: TLabel
      Left = 42
      Top = 24
      Width = 46
      Height = 13
      Caption = 'lblCaption'
    end
  end
  object pnlDescription: TPanel
    Left = 0
    Top = 52
    Width = 521
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblDescription: TLabel
      Left = 42
      Top = 8
      Width = 63
      Height = 13
      Caption = 'lblDescription'
    end
  end
end
