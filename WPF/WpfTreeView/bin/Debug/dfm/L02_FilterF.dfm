inherited fmFilter: TfmFilter
  Width = 440
  Height = 72
  object Label2: TLabel
    Left = 21
    Top = 32
    Width = 84
    Height = 13
    Caption = 'Фильтровать по'
  end
  object lbCaption: TLabel
    Left = 21
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Дополнительно'
  end
  object edSearchText: TEdit
    Left = 144
    Top = 4
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyPress = edSearchTextKeyPress
  end
  object cmbField: TComboBox
    Left = 144
    Top = 29
    Width = 294
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 1
    OnChange = cmbFieldChange
  end
  object chbAll: TCheckBox
    Left = 144
    Top = 54
    Width = 161
    Height = 17
    Caption = 'Только слово целиком'
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 5
    Top = 6
    Width = 17
    Height = 17
    Enabled = False
    TabOrder = 3
    Visible = False
  end
end
