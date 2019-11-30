inherited A002_SumByCntr: TA002_SumByCntr
  Width = 909
  Height = 585
  inherited xxxDBGrid: TxxxDBGrid
    Width = 909
    Height = 546
    AdvSettings.Indexes = <
      item
        FieldName = 'T200_COUNTRY_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T200_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SALDO'
        PickList.Strings = ()
        Title.Caption = 'Сальдо'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'Поступило'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Изъято'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T100_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 909
  end
  inline A002_Total1: TA002_Total [2]
    Top = 571
    Width = 909
    TabOrder = 2
    inherited xxxDBGrid: TxxxDBGrid
      Width = 909
      Columns = <
        item
          Expanded = False
          FieldName = 'STR_COUNT'
          PickList.Strings = ()
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T200_SALDO'
          PickList.Strings = ()
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T200_SUM_IN'
          PickList.Strings = ()
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T200_SUM_OUT'
          PickList.Strings = ()
          Width = 100
          Visible = True
        end>
    end
    inherited paToolButton: TPanel
      Width = 909
    end
  end
  inherited actList: TActionList [3]
  end
  inherited dsList: TDataSource [4]
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'SELECT'
      'T055_ID,'
      'T100_ID,'
      '  T200_COUNTRY_ID,'
      '  T200_COUNTRY_NAME,'
      '  SUM(T200_SALDO) AS T200_SALDO,'
      '  SUM(T200_SUM_IN) AS T200_SUM_IN,'
      '  SUM(T200_SUM_OUT) AS T200_SUM_OUT'
      'FROM DS_BOP_BOSS.VS_BOP_SUM_BY_CATEG'
      'WHERE T055_ID = :T055_ID'
      'AND T100_ID = :T100_ID'
      'GROUP BY T055_ID,'
      'T100_ID,'
      '  T200_COUNTRY_ID,'
      '  T200_COUNTRY_NAME'
      ''
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543130305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543130305F49440100000000000F000000543230
      305F434F554E5452595F494401000000000011000000543230305F434F554E54
      52595F4E414D450100000000000A000000543230305F53414C444F0100000000
      000B000000543230305F53554D5F494E0100000000000C000000543230305F53
      554D5F4F555401000000000007000000543035355F4944010000000000}
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT200_COUNTRY_NAME: TStringField
      FieldName = 'T200_COUNTRY_NAME'
      Size = 250
    end
    object odsListT200_SALDO: TFloatField
      FieldName = 'T200_SALDO'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT200_SUM_IN: TFloatField
      FieldName = 'T200_SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT200_SUM_OUT: TFloatField
      FieldName = 'T200_SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT200_COUNTRY_ID: TFloatField
      FieldName = 'T200_COUNTRY_ID'
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
