inherited A05_BankGroupsEdit: TA05_BankGroupsEdit
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
    DataField = 'T030_GROUP_NAME'
    MaxLength = 255
    TabOrder = 0
  end
  inherited actList: TActionList
    Left = 340
    Top = 4
  end
end
