inherited fm35_Repo: Tfm35_Repo
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Код операции'
    Layout = tlCenter
  end
  object cmbRepo: TComboBox
    Left = 103
    Top = 4
    Width = 252
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'Все'
      'Прямое РЕПО'
      'Обратное РЕПО'
      'Все кроме РЕПО')
  end
end
