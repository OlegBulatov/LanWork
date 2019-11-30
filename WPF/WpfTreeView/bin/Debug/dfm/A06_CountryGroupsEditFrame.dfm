inherited A06_CountryGroupsEdit: TA06_CountryGroupsEdit
  Width = 367
  Height = 85
  object Label1: TLabel [0]
    Left = 8
    Top = 12
    Width = 58
    Height = 13
    Caption = 'Код группы'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 36
    Width = 79
    Height = 13
    Caption = 'Название (рус.)'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 61
    Width = 85
    Height = 13
    Caption = 'Название (англ.)'
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 8
    Width = 35
    Height = 21
    DataField = 'T033_CODE'
    MaxLength = 3
    TabOrder = 0
  end
  object ed02: TDBEdit [4]
    Left = 98
    Top = 32
    Width = 259
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T033_GROUP_NAME_RUS'
    MaxLength = 255
    TabOrder = 1
  end
  object ed03: TDBEdit [5]
    Left = 98
    Top = 57
    Width = 259
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T033_GROUP_NAME_ENG'
    MaxLength = 255
    TabOrder = 2
  end
end
