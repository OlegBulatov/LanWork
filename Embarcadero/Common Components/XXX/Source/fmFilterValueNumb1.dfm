inherited fmFilterValueNumbFrame1: TfmFilterValueNumbFrame1
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Значение'
  end
  object lcValue: TDBLookupComboBox
    Left = 61
    Top = 5
    Width = 338
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    DropDownWidth = 325
    ListSource = DataSource
    TabOrder = 0
    OnDropDown = lcValueDropDown
  end
  object DataSource: TDataSource
    Left = 232
  end
end
