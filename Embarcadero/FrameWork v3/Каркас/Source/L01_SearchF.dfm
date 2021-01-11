inherited fmSearch: TfmSearch
  Width = 350
  Height = 136
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 71
    Height = 13
    Caption = 'Искать текст:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 74
    Height = 13
    Caption = 'Место поиска:'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 57
    Width = 71
    Height = 13
    Caption = 'Направление:'
  end
  object edSearchText: TEdit [3]
    Left = 98
    Top = 4
    Width = 244
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyPress = edSearchTextKeyPress
  end
  object cmbField: TComboBox [4]
    Left = 98
    Top = 29
    Width = 244
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 1
    OnChange = cmbFieldChange
  end
  object chbRegister: TCheckBox [5]
    Left = 98
    Top = 82
    Width = 161
    Height = 17
    Caption = 'Учитывать регистр'
    TabOrder = 2
  end
  object chbAll: TCheckBox [6]
    Left = 98
    Top = 107
    Width = 161
    Height = 17
    Caption = 'Только слово целиком'
    TabOrder = 3
  end
  object cmbSType: TComboBox [7]
    Left = 98
    Top = 54
    Width = 141
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    DropDownCount = 2
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Вперед'
      'Назад')
  end
end
