inherited A12_Emis: TA12_Emis
  Width = 707
  Height = 683
  inherited xxxDBGrid: TxxxDBGrid
    Left = 16
    Top = 217
    Width = 700
    Height = 472
    Align = alNone
    Columns = <
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип Бумаги'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T101_NAME_SHORT'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T102_NAME_RU'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T102_ISO_CHR'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T031_NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 85
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Left = 2
    Top = 168
    Width = 705
    Align = alNone
  end
  inline TA12_FitrerEmi1: TA12_FitrerEmi [2]
    Left = 4
    Top = 14
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      inherited Panel1: TPanel
        inherited Button1: TButton
          OnClick = actRefreshExecute
        end
      end
      inherited paFilterItems: TPanel
        inherited CountryFilter: TA12_CountryFilter
          inherited lcb: TxxxDBLookupCheckCombo
            Top = -1
            Height = 20
          end
        end
      end
    end
    inherited actList: TActionList
      Left = 448
    end
  end
  inline Iss_Filter: TA12_Iss_Filter [3]
    Left = 8
    Top = 80
    Height = 25
    TabOrder = 3
    inherited lcb: TxxxDBLookupCheckCombo
      LookupField = 'ID'
      LookupDisplay = 'NAME'
    end
  end
  inherited actList: TActionList [4]
    Left = 56
    Top = 524
  end
  inherited dsList: TDataSource [5]
    Left = 209
    Top = 479
  end
  inherited odsList: TOracleDataSet [6]
    SQL.Strings = (
      ' select '
      #9't030_id ,'
      #9't026_sec_regn, '
      #9't027_sec_type, '
      #9't028_shot_name,'
      #9't028_id'#9','
      #9't101_id'#9','
      #9't101_name_short, '
      #9't102_name_ru, '
      #9't102_iso_chr, '
      #9't031_nominal '
      ' from '
      '    v_emissions where 1=2')
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000D000000543032365F5345435F5245474E0100000000000D
      000000543032375F5345435F545950450100000000000E000000543032385F53
      484F545F4E414D450100000000000F000000543130315F4E414D455F53484F52
      540100000000000C000000543130325F4E414D455F52550100000000000C0000
      00543130325F49534F5F4348520100000000000C000000543033315F4E4F4D49
      4E414C01000000000007000000543032385F4944010000000000070000005431
      30315F494401000000000007000000543033305F4944010000000000}
    Left = 153
    Top = 485
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
    object odsListT101_NAME_SHORT: TStringField
      FieldName = 'T101_NAME_SHORT'
      Size = 250
    end
    object odsListT102_NAME_RU: TStringField
      FieldName = 'T102_NAME_RU'
      Size = 255
    end
    object odsListT102_ISO_CHR: TStringField
      FieldName = 'T102_ISO_CHR'
      Size = 3
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
  end
  inherited PopupMenu: TPopupMenu [7]
    Left = 64
    Top = 407
  end
  inherited oqAdd: TOracleQuery [8]
    Left = 567
    Top = 376
  end
  inherited oqUpdate: TOracleQuery [9]
    Left = 567
    Top = 428
  end
  inherited oqDelete: TOracleQuery
    Left = 583
    Top = 500
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 161
    Top = 570
  end
end
