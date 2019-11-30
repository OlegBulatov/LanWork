inherited A14_ItemsGroupEdit: TA14_ItemsGroupEdit
  Height = 38
  object Label1: TLabel [0]
    Left = 8
    Top = 12
    Width = 50
    Height = 13
    Hint = 'Название '#13#10'группы'#13#10'банков'
    Caption = 'Название'
    ParentShowHint = False
    ShowHint = True
  end
  object ed01: TDBEdit [1]
    Left = 98
    Top = 8
    Width = 330
    Height = 21
    DataField = 'T038_GROUP_NAME'
    MaxLength = 255
    TabOrder = 0
  end
end
