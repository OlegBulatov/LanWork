inherited A12_SelectNrezList: TA12_SelectNrezList
  Width = 816
  inherited xxxDBGrid: TxxxDBGrid
    Top = 114
    Width = 816
    Height = 327
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_CODE_406'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 66
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 89
    Width = 816
  end
  inline Filters: TA12_SelectNrezFilters [2]
    Width = 816
    Align = alTop
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      Width = 816
      inherited Panel1: TPanel
        Left = 493
        Width = 321
        inherited Button1: TButton
          Action = actRefresh
        end
      end
      inherited paFilterItems: TPanel
        Width = 491
        inherited CodeFilter: TA12_CountryFilter
          Width = 482
          inherited lcb: TxxxDBLookupCheckCombo
            Width = 398
          end
        end
      end
    end
  end
  inherited actList: TActionList [3]
    Top = 316
  end
  inherited dsList: TDataSource [4]
    Left = 241
    Top = 211
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'select T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_COUNTRY_ID,'
      
        '       T028_COUNTRY_ID || '#39'   '#39' || T028_COUNTRY_NAME T028_COUNTR' +
        'Y,'
      '       T033_ID,'
      '       T033_CODE_406'
      'from   V_406_ISSUERS_LIST'
      'where  T025_ID = 8 -- нерезиденты')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000F000000543032385F434F554E5452
      595F494401000000000007000000543033335F49440100000000000D00000054
      3033335F434F44455F3430360100000000000C000000543032385F434F554E54
      5259010000000000}
    Left = 201
    Top = 209
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT028_COUNTRY: TStringField
      FieldName = 'T028_COUNTRY'
      Size = 508
    end
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT033_CODE_406: TStringField
      FieldName = 'T033_CODE_406'
      Size = 8
    end
  end
  inherited PopupMenu: TPopupMenu [6]
    Left = 20
    Top = 255
  end
  inherited oqAdd: TOracleQuery [7]
    Left = 287
    Top = 212
  end
  inherited oqUpdate: TOracleQuery [8]
    Left = 283
    Top = 256
  end
  inherited oqDelete: TOracleQuery [9]
    Top = 304
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 201
    Top = 278
  end
end
