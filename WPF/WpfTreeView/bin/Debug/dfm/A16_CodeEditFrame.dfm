inherited A16_CodeEdit: TA16_CodeEdit
  Width = 421
  Height = 113
  object LabelCode: TLabel [0]
    Left = 12
    Top = 4
    Width = 73
    Height = 13
    Caption = 'Код операции:'
  end
  object LabelName: TLabel [1]
    Left = 12
    Top = 46
    Width = 104
    Height = 13
    Caption = 'Название операции:'
  end
  object edCode: TDBEdit [2]
    Left = 12
    Top = 18
    Width = 397
    Height = 21
    DataField = 'T036_OP_CODE'
    TabOrder = 0
  end
  object edName: TDBMemo [3]
    Left = 12
    Top = 60
    Width = 397
    Height = 49
    DataField = 'T036_OP_NAME'
    TabOrder = 1
  end
end
