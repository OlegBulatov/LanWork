inherited A12_SelectRezList: TA12_SelectRezList
  Height = 545
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Height = 427
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_CODE_406'
        PickList.Strings = ()
        Title.Caption = 'Вид'
        Width = 60
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 93
  end
  inline Filters: TA12_SelectRezFilters [2]
    Width = 635
    Align = alTop
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      Width = 635
      inherited Panel1: TPanel
        Width = 108
        inherited Button1: TButton
          Action = actRefresh
        end
      end
      inherited paFilterItems: TPanel
        inherited RezNameFilter: TA12_NameFilter
          inherited ed: TEdit
            Width = 353
          end
        end
      end
    end
  end
  inherited actList: TActionList [3]
  end
  inherited dsList: TDataSource [4]
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'select T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       T033_ID,'
      '       T033_CODE_406'
      'from   V_406_ISSUERS_LIST'
      'where  T025_ID = 9 -- резиденты')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000008000000543032385F494E4E010000
      00000007000000543033335F49440100000000000D000000543033335F434F44
      455F343036010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
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
  end
  inherited oqAdd: TOracleQuery [7]
  end
  inherited oqUpdate: TOracleQuery [8]
  end
  inherited oqDelete: TOracleQuery [9]
  end
end
