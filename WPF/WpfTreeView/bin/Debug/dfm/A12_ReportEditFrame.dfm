inherited A12_ReportEdit: TA12_ReportEdit
  Width = 448
  Height = 209
  object Label1: TLabel [0]
    Left = 26
    Top = 107
    Width = 34
    Height = 13
    Caption = 'Сумма'
  end
  object Label2: TLabel [1]
    Left = 26
    Top = 145
    Width = 63
    Height = 13
    Caption = 'Примечание'
  end
  object Bevel1: TBevel [2]
    Left = 26
    Top = 132
    Width = 395
    Height = 4
    Shape = bsTopLine
  end
  inline SectorEdit: TA13_SectorFilter [3]
    Left = 8
    Top = 34
    Width = 412
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 301
      DataField = 'T036_ID'
      DisplayEmpty = ''
    end
    inherited cb: TCheckBox
      Checked = True
      State = cbChecked
      Visible = False
    end
  end
  inline CountryEdit: TA13_CountryFilter
    Left = 8
    Top = 57
    Width = 412
    TabOrder = 1
    inherited lbCaption: TLabel
      Width = 36
      Caption = 'Страна'
      Enabled = True
      Visible = True
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 301
      DataField = 'T021_COUNTRY'
      ListStyle = [lsSizeable]
    end
    inherited rb: TRadioButton
      Width = 0
      Checked = True
      TabStop = True
      Visible = False
    end
  end
  inline CurrencyEdit: TA13_CurrencyFilter
    Left = 8
    Top = 80
    Width = 412
    TabOrder = 2
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 301
      DataField = 'T021_CURRENCY'
      DisplayEmpty = ''
      EmptyItemColor = clWindowText
    end
    inherited cb: TCheckBox
      Checked = True
      State = cbChecked
      Visible = False
    end
  end
  inline ItemEdit: TA13_ItemFilter
    Left = 8
    Top = 12
    Width = 412
    TabOrder = 3
    inherited lbCaption: TLabel
      Width = 61
      Caption = 'Показатель'
      Enabled = True
      Visible = True
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 301
      DataField = 'T037_ID'
      DisplayEmpty = ''
      ListStyle = [lsSizeable]
    end
    inherited rb: TRadioButton
      Width = 0
      Checked = True
      TabStop = True
      Visible = False
    end
  end
  object SumEdit: TDBEdit
    Left = 120
    Top = 102
    Width = 120
    Height = 21
    DataField = 'T021_SUM_OUT'
    TabOrder = 4
  end
  object CommentEdit: TDBMemo
    Left = 120
    Top = 142
    Width = 301
    Height = 57
    TabOrder = 5
  end
  inherited actList: TActionList
    Left = 348
    Top = 96
  end
end
