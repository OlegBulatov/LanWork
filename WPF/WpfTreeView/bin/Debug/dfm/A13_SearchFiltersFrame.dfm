inherited A13_SearchFilters: TA13_SearchFilters
  Width = 334
  Height = 721
  object Label1: TLabel [0]
    Left = 8
    Top = 294
    Width = 61
    Height = 13
    Caption = 'Показатели'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 406
    Width = 106
    Height = 13
    Caption = 'Страны-контрагенты'
  end
  object Label3: TLabel [2]
    Left = 12
    Top = 515
    Width = 124
    Height = 13
    Caption = 'Кредитные организации'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 186
    Width = 146
    Height = 13
    Caption = 'Страны материнского банка'
  end
  object Button1: TButton [4]
    Left = 194
    Top = 12
    Width = 131
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Извлечь данные >>'
    TabOrder = 0
  end
  inline PeriodFilterFrom: TA12_PeriodFilterAll [5]
    Left = 8
    Top = 44
    Width = 318
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    inherited lbCaption: TLabel
      Width = 47
      Caption = 'Период с'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 120
      Width = 198
      ListStyle = [lsSizeable]
      OnChange = PeriodFilterFromlcbChange
      OnCloseUp = PeriodFilterFromlcbChange
    end
    inherited actList: TActionList
      Left = 264
    end
  end
  inline PartFilter: TA12_PartFilter
    Left = 8
    Top = 88
    Width = 318
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 120
      Width = 198
      Hint = 'Не выбрано'
      DropDownCount = 7
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked, lsSizeable]
      ParentShowHint = False
      ShowHint = True
      Advanced.ShowSelectionHint = True
    end
    inherited actList: TActionList
      Left = 268
    end
  end
  inline SectorFilter: TA13_SectorFilter
    Left = 8
    Top = 110
    Width = 318
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 120
      Width = 198
      Hint = 'Не выбрано'
      ListStyle = [lsChecked, lsSizeable]
      ParentShowHint = False
      ShowHint = True
      Advanced.ShowSelectionHint = True
    end
    inherited actList: TActionList
      Left = 268
    end
  end
  inline CurrencyFilter: TA13_CurrencyFilter
    Left = 8
    Top = 132
    Width = 320
    TabOrder = 4
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 120
      Width = 200
      Hint = 'Не выбрано'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked, lsSizeable]
      ParentShowHint = False
      ShowHint = True
      Advanced.ShowSelectionHint = True
    end
    inherited actList: TActionList
      Left = 268
      Top = 0
    end
  end
  inline DetailsFilter: TA12_DetailsFilter
    Left = 8
    Top = 155
    Width = 320
    TabOrder = 5
    inherited actList: TActionList
      Left = 284
    end
    inherited dsList: TDataSource
      Left = 252
    end
    inherited odsList: TOracleDataSet
      Left = 220
    end
  end
  inline ItemsGroupFilter: TA13_ItemsGroupFilter
    Left = 16
    Top = 351
    Width = 312
    TabOrder = 6
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = ItemsGroupFilterrbClick
    end
  end
  inline ItemFilter: TA13_ItemFilter
    Left = 16
    Top = 373
    Width = 312
    TabOrder = 7
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
      DropDownWidth = 0
    end
    inherited rb: TRadioButton
      OnClick = ItemFilterrbClick
    end
  end
  inline CountriesGroupFilter: TA13_CountriesGroupFilter
    Left = 16
    Top = 463
    Width = 312
    TabOrder = 8
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = CountriesGroupFilterrbClick
    end
    inherited odsGroup: TOracleDataSet
      Left = 264
    end
  end
  inline CountryFilter: TA13_CountryFilter
    Left = 16
    Top = 485
    Width = 312
    TabOrder = 9
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
      Hint = 'Не выбрано'
      DisplayEmpty = 'Не выбрано'
      ParentShowHint = False
      ShowHint = True
      Advanced.ShowSelectionHint = True
    end
    inherited rb: TRadioButton
      OnClick = CountryFilterrbClick
    end
  end
  inline BanksGroupFilter: TA13_BanksGroupFilter
    Left = 16
    Top = 573
    Width = 312
    TabOrder = 10
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = BanksGroupFilterrbClick
    end
    inherited dsList: TDataSource
      Left = 212
    end
    inherited odsList: TOracleDataSet
      Left = 184
    end
    inherited odsGroup: TOracleDataSet
      Left = 248
    end
  end
  object Panel1: TPanel
    Left = 16
    Top = 310
    Width = 161
    Height = 17
    BevelOuter = bvNone
    TabOrder = 11
    object rbItemsAll: TRadioButton
      Left = 0
      Top = 0
      Width = 113
      Height = 17
      Caption = 'Все'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbItemsAllClick
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 422
    Width = 142
    Height = 17
    BevelOuter = bvNone
    TabOrder = 12
    object rbCountriesAll: TRadioButton
      Left = 0
      Top = 0
      Width = 113
      Height = 17
      Caption = 'Все'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbCountriesAllClick
    end
  end
  inline ItemsTypeFilter: TA13_ItemsTypeFilter
    Left = 16
    Top = 329
    Width = 312
    TabOrder = 13
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = ItemsTypeFilterrbClick
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 533
    Width = 142
    Height = 17
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 14
    object rbBanksAll: TRadioButton
      Left = 0
      Top = 0
      Width = 113
      Height = 17
      Caption = 'Все'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbBanksAllClick
    end
  end
  inline NkoFilter: TA13_NkoFilter
    Left = 16
    Top = 551
    Width = 312
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 15
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
      DropDownWidth = 0
    end
    inherited rb: TRadioButton
      OnClick = fmNkorbClick
    end
  end
  inline SngGroupFilter: TA13_CountriesSngGroupFilter
    Left = 16
    Top = 441
    Width = 312
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 16
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = SngGroupFilterrbClick
    end
  end
  inline BanksSelectedFilter: TA13_BanksSelectedFilter
    Left = 16
    Top = 596
    Width = 312
    TabOrder = 17
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
      EmptyValue = 'Не выбрано'
    end
    inherited rb: TRadioButton
      Width = 81
      OnClick = BanksSelectedFilterrbClick
    end
    inherited actList: TActionList
      Left = 232
    end
    inherited dsList: TDataSource
      Left = 196
    end
    inherited odsList: TOracleDataSet
      Left = 164
      Top = 5
    end
  end
  object Panel4: TPanel
    Left = 16
    Top = 202
    Width = 161
    Height = 17
    BevelOuter = bvNone
    TabOrder = 18
    object rbMothersAll: TRadioButton
      Left = 0
      Top = 0
      Width = 113
      Height = 17
      Caption = 'Все'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbMothersAllClick
    end
  end
  inline MothersSngGroupFilter: TA13_CountriesSngGroupFilter
    Left = 16
    Top = 221
    Width = 312
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 19
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = MothersSngGroupFilterrbClick
    end
    inherited actList: TActionList
      Left = 232
    end
    inherited dsList: TDataSource
      Left = 200
    end
    inherited odsList: TOracleDataSet
      Left = 168
    end
  end
  inline MothersGroupFilter: TA13_CountriesGroupFilter
    Left = 16
    Top = 243
    Width = 312
    TabOrder = 20
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
    end
    inherited rb: TRadioButton
      OnClick = MothersGroupFilterrbClick
    end
    inherited actList: TActionList
      Left = 264
    end
    inherited dsList: TDataSource
      Left = 200
      Top = 6
    end
    inherited odsList: TOracleDataSet
      Left = 168
      Top = 6
    end
    inherited odsGroup: TOracleDataSet
      Left = 228
    end
  end
  inline MothersFilter: TA13_CountryFilter
    Left = 16
    Top = 265
    Width = 312
    TabOrder = 21
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 112
      Width = 200
      Hint = 'Не выбрано'
      DisplayEmpty = 'Не выбрано'
      ParentShowHint = False
      ShowHint = True
      Advanced.ShowSelectionHint = True
    end
    inherited rb: TRadioButton
      OnClick = MothersFilterrbClick
    end
  end
  inline PeriodFilterTo: TA12_PeriodFilterAll
    Left = 8
    Top = 66
    Width = 318
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 22
    inherited lbCaption: TLabel
      Width = 53
      Caption = 'Период по'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 120
      Width = 198
      ListStyle = [lsSizeable]
      OnChange = PeriodFilterTolcbChange
      OnCloseUp = PeriodFilterTolcbChange
    end
    inherited actList: TActionList
      Left = 264
    end
  end
  inherited actList: TActionList
    Left = 12
    Top = 8
  end
end
