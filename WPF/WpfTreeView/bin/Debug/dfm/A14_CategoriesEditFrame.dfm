inherited A14_CategoriesEdit: TA14_CategoriesEdit
  Height = 505
  object GroupBox1: TGroupBox [0]
    Left = 4
    Top = 424
    Width = 428
    Height = 77
    Caption = 'Включаем в расчет'
    TabOrder = 0
    inline A14_CategoriesFlag1: TA14_CategoriesFlag
      Left = 1
      Top = 21
      inherited lbCaption: TLabel
        Width = 54
        Caption = 'Поступило'
      end
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_FLAG_IN'
      end
    end
    inline A14_CategoriesFlag2: TA14_CategoriesFlag
      Left = 1
      Top = 46
      TabOrder = 1
      inherited lbCaption: TLabel
        Width = 38
        Caption = 'Изъято'
      end
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_FLAG_OUT'
      end
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 4
    Top = 317
    Width = 428
    Height = 108
    Caption = 'Детализация'
    TabOrder = 1
    inline A14_RegionDef1: TA14_RegionDef
      Left = 1
      Top = 21
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_DEF_REGION'
      end
    end
    inline A14_IndustryDef1: TA14_IndustryDef
      Left = 1
      Top = 46
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_DEF_INDUSTRY'
      end
    end
    inline A14_CountriesDef1: TA14_CountriesDef
      Left = 1
      Top = 70
      TabOrder = 2
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_DEF_COUNTRY'
      end
    end
  end
  object GroupBox3: TGroupBox [2]
    Left = 4
    Top = 2
    Width = 428
    Height = 315
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 76
      Height = 13
      Caption = 'Наименование'
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 50
      Height = 13
      Caption = 'Описание'
    end
    object DBEdit1: TDBEdit
      Left = 99
      Top = 12
      Width = 316
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DISPLAY_NAME'
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 99
      Top = 37
      Width = 316
      Height = 195
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T100_DESC'
      TabOrder = 1
    end
    inline A14_CategoriesType1: TA14_CategoriesType
      Left = 1
      Top = 237
      TabOrder = 2
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T100_TYPE'
        OnChange = A14_CategoriesType1lcbChange
      end
    end
    inline A015_Users1: TA015_Users
      Left = 1
      Top = 263
      TabOrder = 3
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T203_ID'
      end
    end
    inline A14_Source1: TA14_Source
      Left = 1
      Top = 288
      TabOrder = 4
      inherited lcb: TxxxDBLookupCheckCombo
        DataField = 'T204_ID'
      end
    end
  end
end
