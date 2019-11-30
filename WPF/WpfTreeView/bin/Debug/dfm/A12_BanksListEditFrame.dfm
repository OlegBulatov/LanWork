inherited A12_BanksListEdit: TA12_BanksListEdit
  Width = 348
  Height = 251
  object Label1: TLabel [0]
    Left = 8
    Top = 62
    Width = 56
    Height = 13
    Caption = 'Код SWIFT'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 87
    Width = 42
    Height = 13
    Caption = 'ОКОПФ'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 10
    Width = 32
    Height = 13
    Caption = 'Рег №'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 36
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 110
    Width = 14
    Height = 13
    Caption = 'ГУ'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 134
    Width = 31
    Height = 13
    Caption = 'Адрес'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 156
    Width = 67
    Height = 13
    Caption = 'Исполнитель'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 180
    Width = 95
    Height = 13
    Caption = 'ФИО исполнителя'
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 204
    Width = 45
    Height = 13
    Caption = 'Телефон'
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 228
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object ed1: TDBEdit [10]
    Left = 112
    Top = 56
    Width = 225
    Height = 21
    DataField = 'T020_SWIFT'
    TabOrder = 0
  end
  object ed2: TDBEdit [11]
    Left = 112
    Top = 80
    Width = 225
    Height = 21
    DataField = 'T020_OKOPF'
    TabOrder = 1
  end
  object ed3: TDBEdit [12]
    Left = 112
    Top = 8
    Width = 225
    Height = 21
    DataField = 'T020_BANK_CODE'
    Enabled = False
    TabOrder = 2
  end
  object ed4: TDBEdit [13]
    Left = 112
    Top = 32
    Width = 225
    Height = 21
    DataField = 'T020_BANK_NAME'
    Enabled = False
    TabOrder = 3
  end
  object ed5: TDBEdit [14]
    Left = 112
    Top = 104
    Width = 225
    Height = 21
    DataField = 'BANK_KP'
    Enabled = False
    TabOrder = 4
  end
  object ed6: TDBEdit [15]
    Left = 112
    Top = 128
    Width = 225
    Height = 21
    DataField = 'BANK_ADDR'
    Enabled = False
    TabOrder = 5
  end
  object ed7: TDBEdit [16]
    Left = 112
    Top = 152
    Width = 225
    Height = 21
    DataField = 'T020_OFFICER'
    TabOrder = 6
  end
  object ed8: TDBEdit [17]
    Left = 112
    Top = 176
    Width = 225
    Height = 21
    DataField = 'T020_CHIEFNAME'
    TabOrder = 7
  end
  object ed9: TDBEdit [18]
    Left = 112
    Top = 200
    Width = 225
    Height = 21
    DataField = 'T020_PHONE'
    TabOrder = 8
  end
  object ed10: TDBEdit [19]
    Left = 112
    Top = 224
    Width = 225
    Height = 21
    DataField = 'T020_EMAIL'
    TabOrder = 9
  end
  inherited actList: TActionList
    Left = 64
    Top = 248
  end
end
