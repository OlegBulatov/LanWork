inherited R01_OpersEdit: TR01_OpersEdit
  Width = 286
  Height = 64
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Процент налога'
  end
  object ed01: TDBEdit [1]
    Left = 96
    Top = 4
    Width = 121
    Height = 21
    DataField = 'M079_PROC_VALUE'
    TabOrder = 0
  end
  inherited actList: TActionList
    Left = 160
    Top = 8
  end
end
