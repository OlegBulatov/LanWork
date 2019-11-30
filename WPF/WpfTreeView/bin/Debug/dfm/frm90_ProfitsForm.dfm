inherited frm90_Profits: Tfrm90_Profits
  Left = 244
  Top = 283
  Width = 768
  Caption = 'frm90_Profits'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 238
    Top = 0
    Width = 3
    Height = 454
    Cursor = crHSplit
  end
  object paIssuerList: TPanel
    Left = 0
    Top = 0
    Width = 238
    Height = 454
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object tsIssuersList: TTabSheet
      Caption = 'Эмитенты'
    end
  end
  object paProfits: TPanel
    Left = 241
    Top = 0
    Width = 519
    Height = 454
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paProfits'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 519
      Height = 454
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      OnChanging = PageControl1Changing
      object TabSheet1: TTabSheet
        Caption = 'Данные для отчетов'
      end
      object TabSheet2: TTabSheet
        Caption = 'Первичные данные'
        ImageIndex = 2
      end
      object TabSheet3: TTabSheet
        Caption = 'Объявления'
        ImageIndex = 2
      end
      object TabSheet4: TTabSheet
        Caption = 'Структура'
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Caption = 'Эмиссии'
        ImageIndex = 4
      end
      object TabSheet6: TTabSheet
        Caption = 'График выплат'
        ImageIndex = 5
      end
    end
  end
end
