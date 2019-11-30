inherited A002_Filter: TA002_Filter
  Width = 1038
  Height = 615
  object paFilter: TPanel [0]
    Left = 0
    Top = 0
    Width = 1038
    Height = 79
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 854
      Top = 4
      Width = 70
      Height = 21
      Hint = 'Обновить данные'
      Caption = 'Обновить'
      OnClick = SpeedButton1Click
    end
    inline A002_Time1: TA002_Time
      Left = 4
      Top = 4
      Width = 425
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 102
        Width = 323
      end
    end
    inline A002_Categories1: TA002_Categories
      Left = 4
      Top = 28
      Width = 425
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 102
        Width = 323
      end
    end
    inline A002_Region1: TA002_Region
      Left = 454
      Top = 4
      TabOrder = 2
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A002_Industry1: TA002_Industry
      Left = 454
      Top = 28
      TabOrder = 3
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A002_Country1: TA002_Country
      Left = 454
      Top = 52
      TabOrder = 4
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A002_View1: TA002_View
      Left = 4
      Top = 52
      Width = 425
      TabOrder = 5
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 102
        Width = 323
        OnCloseUp = A002_View1lcbCloseUp
      end
    end
  end
  object paFrame: TPanel [1]
    Left = 0
    Top = 79
    Width = 1038
    Height = 536
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paFrame'
    TabOrder = 1
  end
end
