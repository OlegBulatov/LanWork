inherited M001_InnKoEdit: TM001_InnKoEdit
  Width = 626
  Height = 150
  object Label1: TLabel [0]
    Left = 16
    Top = 8
    Width = 114
    Height = 13
    Caption = 'Дата начала действия'
  end
  object Label2: TLabel [1]
    Left = 331
    Top = 8
    Width = 132
    Height = 13
    Caption = 'Дата окончания действия'
  end
  object lbRegn: TLabel [2]
    Left = 16
    Top = 31
    Width = 154
    Height = 13
    Caption = 'Организация (рег.№ в КГРКО)'
  end
  object Label4: TLabel [3]
    Left = 331
    Top = 31
    Width = 100
    Height = 13
    Caption = 'Организация (ИНН)'
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 55
    Width = 150
    Height = 13
    Caption = 'Организация (наименование)'
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 79
    Width = 22
    Height = 13
    Caption = 'БИК'
  end
  object Label3: TLabel [6]
    Left = 350
    Top = 79
    Width = 30
    Height = 13
    Caption = 'Город'
  end
  object Label7: TLabel [7]
    Left = 16
    Top = 102
    Width = 31
    Height = 13
    Caption = 'Адрес'
  end
  object Label8: TLabel [8]
    Left = 16
    Top = 127
    Width = 266
    Height = 13
    Caption = 'Организация (индикатор действующей КО в КГРКО)'
  end
  object Label9: TLabel [9]
    Left = 350
    Top = 128
    Width = 198
    Height = 13
    Caption = 'Небанковская кредитная организация'
  end
  object deDateStart: TDateEdit [10]
    Left = 178
    Top = 3
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 0
  end
  object deDateEnd: TDateEdit [11]
    Left = 484
    Top = 3
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 1
  end
  object edRegn: TDBEdit [12]
    Left = 177
    Top = 27
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object edInn: TDBEdit [13]
    Left = 484
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edName: TDBEdit [14]
    Left = 177
    Top = 51
    Width = 428
    Height = 21
    TabOrder = 4
  end
  object edBic: TDBEdit [15]
    Left = 176
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edCity: TDBEdit [16]
    Left = 415
    Top = 75
    Width = 190
    Height = 21
    TabOrder = 6
  end
  object edAddr: TDBEdit [17]
    Left = 188
    Top = 99
    Width = 417
    Height = 21
    TabOrder = 7
  end
  object cbActive: TDBComboBox [18]
    Left = 289
    Top = 124
    Width = 38
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 8
  end
  object cbNko: TDBComboBox [19]
    Left = 555
    Top = 124
    Width = 50
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 9
  end
  inherited actList: TActionList
    Left = 80
    Top = 80
  end
end
