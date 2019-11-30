inherited A002_SumDetailEdit: TA002_SumDetailEdit
  Width = 317
  Height = 156
  object Label1: TLabel [0]
    Left = 4
    Top = 82
    Width = 37
    Height = 13
    Caption = 'Сальдо'
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 106
    Width = 54
    Height = 13
    Caption = 'Поступило'
  end
  object Label3: TLabel [2]
    Left = 4
    Top = 130
    Width = 38
    Height = 13
    Caption = 'Изъято'
  end
  inline A002_Region1: TA002_Region [3]
    Left = 4
    Top = 5
    Width = 295
    inherited lbCaption: TLabel
      Left = 0
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 80
      Width = 216
      DataField = 'T200_REGION_ID'
    end
    inherited cb: TCheckBox
      Left = 56
      Enabled = False
      Visible = False
    end
  end
  inline A002_Industry1: TA002_Industry
    Left = 4
    Top = 29
    Width = 295
    TabOrder = 1
    inherited lbCaption: TLabel
      Left = 0
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 80
      Width = 216
      DataField = 'T200_INDUSTRY_ID'
    end
    inherited cb: TCheckBox
      Left = 56
      Enabled = False
      Visible = False
    end
  end
  inline A002_Country1: TA002_Country
    Left = 4
    Top = 53
    Width = 295
    TabOrder = 2
    inherited lbCaption: TLabel
      Left = 0
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 80
      Width = 216
      DataField = 'T200_COUNTRY_ID'
    end
    inherited cb: TCheckBox
      Left = 56
      Enabled = False
      Visible = False
    end
  end
  object edSaldo: TDBEdit
    Left = 84
    Top = 78
    Width = 121
    Height = 21
    DataField = 'T200_SALDO'
    TabOrder = 3
  end
  object edIn: TDBEdit
    Left = 84
    Top = 102
    Width = 121
    Height = 21
    DataField = 'T200_SUM_IN'
    TabOrder = 4
  end
  object edOut: TDBEdit
    Left = 84
    Top = 126
    Width = 121
    Height = 21
    DataField = 'T200_SUM_OUT'
    TabOrder = 5
  end
end
