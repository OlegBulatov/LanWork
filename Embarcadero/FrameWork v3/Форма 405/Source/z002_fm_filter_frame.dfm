object z002_fm_filter: Tz002_fm_filter
  Left = 0
  Top = 0
  Width = 781
  Height = 128
  TabOrder = 0
  object Label1: TLabel
    Left = 248
    Top = 5
    Width = 12
    Height = 13
    Caption = 'по'
  end
  object Label2: TLabel
    Left = 217
    Top = 28
    Width = 12
    Height = 13
    Caption = 'по'
  end
  inline PeriodFilter: TE002_PeriodFilter
    Left = 2
    Top = -1
    Width = 529
    Height = 29
    inherited Label1: TLabel
      Left = 315
      Top = 8
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 127
      Top = 3
      Width = 182
    end
    inherited cb: TCheckBox
      Checked = False
      State = cbUnchecked
    end
    inherited lcb2: TRxDBLookupCombo
      Left = 341
      Top = 4
      Width = 184
    end
  end
  inline BankFilter: TB002_BankFilter
    Left = 2
    Top = 47
    Width = 374
    TabOrder = 1
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 127
      Width = 208
    end
    inherited cb: TCheckBox
      Checked = False
      State = cbUnchecked
    end
  end
  inline TypeFilter: Tz002_type_filter
    Left = 338
    Top = 27
    Width = 217
    Height = 29
    TabOrder = 2
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 68
      Width = 121
    end
    inherited cb: TCheckBox
      Checked = False
      State = cbUnchecked
    end
    inherited odsList: TOracleDataSet
      Left = 141
    end
  end
  inline HandlerFilter: Tz002_handler_filter
    Left = 339
    Top = 48
    Width = 204
    Height = 25
    TabOrder = 3
    inherited lbCaption: TLabel
      Left = 17
      Top = 1
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 64
      Width = 123
    end
    inherited cb: TCheckBox
      Checked = False
      State = cbUnchecked
    end
  end
  object Date1: TDateTimePicker
    Left = 129
    Top = 24
    Width = 80
    Height = 21
    CalAlignment = dtaLeft
    Date = 42636.6616727199
    Time = 42636.6616727199
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object Date2: TDateTimePicker
    Left = 234
    Top = 26
    Width = 80
    Height = 21
    CalAlignment = dtaLeft
    Date = 42636.6618263426
    Time = 42636.6618263426
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
  end
  object cbDate: TCheckBox
    Left = 3
    Top = 27
    Width = 123
    Height = 17
    Caption = 'Дата изменения   с'
    TabOrder = 6
  end
  inline SecTypeFilter: TC002_TypeSec
    Left = 3
    Top = 71
    Width = 540
    TabOrder = 7
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 124
      Width = 398
    end
    inherited cb: TCheckBox
      Checked = False
      State = cbUnchecked
    end
  end
  inline InvTypeFilter: Tz002_inv_filter
    Left = 2
    Top = 93
    Width = 703
    Height = 25
    TabOrder = 8
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 126
      Top = -1
      Width = 397
    end
  end
  object Button1: TButton
    Left = 537
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 9
  end
end
