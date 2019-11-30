inherited A07_SectorsEdit: TA07_SectorsEdit
  Height = 58
  object lbT036_CODE: TLabel [0]
    Left = 8
    Top = 12
    Width = 19
    Height = 13
    Caption = 'Код'
  end
  object lbT036_NAME: TLabel [1]
    Left = 8
    Top = 35
    Width = 36
    Height = 13
    Caption = 'Cектор'
  end
  object edT036_CODE: TDBEdit [2]
    Left = 98
    Top = 8
    Width = 322
    Height = 21
    DataField = 'T036_CODE'
    MaxLength = 3
    TabOrder = 0
  end
  object edT036_NAME: TDBEdit [3]
    Left = 98
    Top = 31
    Width = 322
    Height = 21
    DataField = 'T036_NAME'
    MaxLength = 255
    TabOrder = 1
  end
end
