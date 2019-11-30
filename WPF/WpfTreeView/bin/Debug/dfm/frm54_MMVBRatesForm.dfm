inherited frm54_MMVBRates: Tfrm54_MMVBRates
  Left = 134
  Top = 246
  Caption = 'Котировки ММВБ'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcRatesTypes: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 447
    ActivePage = tsLoad2
    Align = alClient
    TabOrder = 0
    object tsLoadingRates: TTabSheet
      Caption = 'Загрузка облигаций'
      ImageIndex = 2
    end
    object tsLoad2: TTabSheet
      Caption = 'Загрузка акций'
      ImageIndex = 3
    end
    object tsStocks: TTabSheet
      Caption = 'Акции и облигации'
    end
    object tsGKO: TTabSheet
      Caption = 'ГКО-ОФЗ'
      ImageIndex = 1
    end
  end
end
