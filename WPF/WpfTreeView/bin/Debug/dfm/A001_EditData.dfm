inherited fmEditData: TfmEditData
  Width = 495
  Height = 402
  object Label1: TLabel [0]
    Left = 16
    Top = 152
    Width = 24
    Height = 13
    Caption = 'Вход'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 176
    Width = 50
    Height = 13
    Caption = 'Операция'
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 200
    Width = 37
    Height = 13
    Caption = 'Прочие'
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Исход'
  end
  object Label5: TLabel [4]
    Left = 272
    Top = 152
    Width = 42
    Height = 13
    Caption = 'Вход US'
  end
  object Label6: TLabel [5]
    Left = 272
    Top = 176
    Width = 68
    Height = 13
    Caption = 'Операция US'
  end
  object Label7: TLabel [6]
    Left = 272
    Top = 200
    Width = 55
    Height = 13
    Caption = 'Прочие US'
  end
  object Label8: TLabel [7]
    Left = 272
    Top = 224
    Width = 49
    Height = 13
    Caption = 'Исход US'
  end
  object SpeedButton1: TSpeedButton [8]
    Left = 224
    Top = 176
    Width = 23
    Height = 22
    Action = act1
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000BDBD0000BDBD
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
      0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
      0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
      0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000BDBD0000BDBD
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  inline fmCountryLookUp1: TfmCountryLookUp [9]
    Width = 495
    Height = 25
    Align = alTop
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 138
      Width = 334
      DataField = 'T101_ID'
      DataSource = nil
    end
    inherited cb: TCheckBox
      Left = 80
    end
  end
  inline fmCurrencyLookUp1: TfmCurrencyLookUp
    Top = 25
    Width = 495
    Height = 24
    Align = alTop
    TabOrder = 1
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 138
      Width = 334
      Height = 20
      DataField = 'T102_ID'
    end
  end
  inline fmTimeLookUp1: TfmTimeLookUp
    Top = 49
    Width = 495
    Height = 32
    Align = alTop
    TabOrder = 2
    inherited lbCaption: TLabel
      Left = 10
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 138
      Width = 334
      Height = 20
      DataField = 'T055_ID'
    end
    inherited cb: TCheckBox
      Left = 80
    end
  end
  object ed_T001_IN: TDBEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 21
    DataField = 'T001_IN'
    TabOrder = 3
    OnKeyPress = ed_T001_INKeyPress
  end
  object ed_T001_OPR: TDBEdit
    Left = 88
    Top = 168
    Width = 121
    Height = 21
    DataField = 'T001_OPR'
    TabOrder = 4
    OnKeyPress = ed_T001_OPRKeyPress
  end
  object ed_T001_OTH: TDBEdit
    Left = 88
    Top = 192
    Width = 121
    Height = 21
    DataField = 'T001_OTH'
    TabOrder = 5
    OnKeyPress = ed_T001_OTHKeyPress
  end
  object ed_T001_OUT: TDBEdit
    Left = 88
    Top = 216
    Width = 121
    Height = 21
    DataField = 'T001_OUT'
    TabOrder = 6
    OnKeyPress = ed_T001_OUTKeyPress
  end
  object ed_T001_IN_US: TDBEdit
    Left = 352
    Top = 144
    Width = 121
    Height = 21
    DataField = 'T001_IN_US'
    ReadOnly = True
    TabOrder = 7
  end
  object ed_T001_OPR_US: TDBEdit
    Left = 352
    Top = 168
    Width = 121
    Height = 21
    DataField = 'T001_OPR_US'
    ReadOnly = True
    TabOrder = 8
  end
  object ed_T001_OTH_US: TDBEdit
    Left = 352
    Top = 192
    Width = 121
    Height = 21
    DataField = 'T001_OTH_US'
    ReadOnly = True
    TabOrder = 9
  end
  object ed_T001_OUT_US: TDBEdit
    Left = 352
    Top = 216
    Width = 121
    Height = 21
    DataField = 'T001_OUT_US'
    ReadOnly = True
    TabOrder = 10
  end
  object ed_T001_PER_US: TDBEdit
    Left = 352
    Top = 248
    Width = 121
    Height = 21
    DataField = 'T001_PER_US'
    TabOrder = 11
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object act1: TAction
      Hint = 'Перевести'
      ImageIndex = 7
      OnExecute = act1Execute
    end
  end
end
