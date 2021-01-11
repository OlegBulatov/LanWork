inherited E001_RemFields: TE001_RemFields
  Width = 381
  Height = 186
  object Label1: TLabel [0]
    Left = 4
    Top = 4
    Width = 53
    Height = 13
    Caption = 'Уровень 1'
  end
  object chlColumns: TCheckListBox [1]
    Left = 2
    Top = 23
    Width = 125
    Height = 160
    OnClickCheck = chlColumnsClickCheck
    ItemHeight = 13
    Items.Strings = (
      'Входящие остатки'
      'Операции'
      'Исходящие остатки')
    TabOrder = 0
  end
end
