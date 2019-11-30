inherited A03_SelectEnisGrid: TA03_SelectEnisGrid
  Width = 963
  Height = 815
  inherited paToolButton: TPanel [0]
    Top = 71
    Width = 1669
    Height = 22
    Align = alNone
    inherited tlbNav: TToolBar
      Height = 22
    end
    inherited tlbList: TToolBar
      Height = 22
    end
    inherited tlbExcel: TToolBar
      Height = 22
    end
    inherited tlbSeach: TToolBar
      Height = 22
    end
    inherited tlbFilter: TToolBar
      Height = 22
    end
    inherited tlbSelect: TToolBar
      Height = 22
    end
  end
  inherited xxxDBGrid: TxxxDBGrid [1]
    Top = 93
    Width = 1669
    Height = 905
    Align = alBottom
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 1
            Caption = 'Эммисия'
          end
          item
            FirstCol = 2
            LastCol = 3
            Caption = 'Эмитент'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 100
        Visible = True
      end>
  end
  inline FilterSTC: TA12_FitrerEmi [2]
    Width = 612
    Height = 70
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      Width = 612
      Height = 70
      inherited Panel1: TPanel
        Width = 192
        Height = 53
      end
      inherited paFilterItems: TPanel
        Height = 53
      end
    end
  end
  inherited actList: TActionList [3]
    Left = 384
    Top = 476
  end
  inherited dsList: TDataSource [4]
    Left = 625
    Top = 575
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'SELECT'
      #9'T030_ID,'
      '      t026_sec_regn,'
      '      t027_sec_type,'
      '      T028_SHOT_NAME,'
      '      T028_country_id'
      'from'
      '      V_404_EMISSIONS_MAIN ')
    QBEDefinition.QBEFieldDefs = {
      04000000050000000D000000543032365F5345435F5245474E0100000000000D
      000000543032375F5345435F545950450100000000000E000000543032385F53
      484F545F4E414D450100000000000F000000543032385F434F554E5452595F49
      4401000000000007000000543033305F4944010000000000}
    Left = 137
    Top = 485
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
  end
  inherited PopupMenu: TPopupMenu [6]
    Left = 464
    Top = 631
  end
  inherited oqAdd: TOracleQuery [7]
    Left = 687
    Top = 480
  end
  inherited oqUpdate: TOracleQuery [8]
    Left = 407
    Top = 548
  end
  inherited oqDelete: TOracleQuery [9]
    Left = 807
    Top = 548
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 777
    Top = 474
  end
end
