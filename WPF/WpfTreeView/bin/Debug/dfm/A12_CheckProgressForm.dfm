inherited A12_CheckProgressFrm: TA12_CheckProgressFrm
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Сверка данных отчетов'
  ClientHeight = 150
  ClientWidth = 486
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline Progress: TA12_CheckProgress
    Width = 486
    Height = 109
    Align = alClient
    inherited Bevel1: TBevel
      Width = 466
    end
    inherited ProgressBar1: TGauge
      Width = 466
    end
    inherited osThread: TOracleSession
      Left = 144
      Top = 72
    end
    inherited oqThread: TOracleQuery
      Left = 180
      Top = 72
    end
    inherited oqMaxCount: TOracleQuery
      Top = 80
    end
    inherited oqBeforeProcess: TOracleQuery
      Left = 292
      Top = 80
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 109
    Width = 486
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnOk: TButton
      Left = 213
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
    end
  end
end
