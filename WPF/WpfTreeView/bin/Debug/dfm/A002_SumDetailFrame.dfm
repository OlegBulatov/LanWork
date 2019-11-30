inherited A002_SumDetail: TA002_SumDetail
  Width = 909
  Height = 344
  inherited xxxDBGrid: TxxxDBGrid
    Width = 909
    Height = 304
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T200_REGION_ID'
        PickList.Strings = ()
        Title.Caption = 'Код региона'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_REGION_NAME'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_INDUSTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код отрасли'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_INDUSTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отрасль'
        Width = 120
        Visible = True
      end
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
        Width = 120
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
    Top = 329
    Width = 909
    TabOrder = 2
    inherited xxxDBGrid: TxxxDBGrid
      Width = 909
      Columns = <
        item
          Expanded = False
          FieldName = 'STR_COUNT'
          PickList.Strings = ()
          Width = 564
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
    inherited actAdd: TAction
      Visible = True
    end
    inherited actEdit: TAction
      Visible = True
    end
    inherited actDelete: TAction
      Visible = True
    end
  end
  inherited dsList: TDataSource [4]
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'SELECT'
      '  T100_ID,'
      '  T100_TYPE,'
      '  T200_REGION_ID,'
      '  T200_REGION_NAME,'
      '  T200_INDUSTRY_ID,'
      '  T200_INDUSTRY_NAME,'
      '  T200_COUNTRY_ID,'
      '  T200_COUNTRY_NAME,'
      '  T055_ID,'
      '  T203_ID,'
      '  T203_NAME,'
      '  T203_LOGIN,'
      '  SUM(T200_SALDO) AS T200_SALDO,'
      '  SUM(T200_SUM_IN) AS T200_SUM_IN,'
      '  SUM(T200_SUM_OUT) AS T200_SUM_OUT'
      'FROM DS_BOP_BOSS.VS_BOP_SUM_BY_CATEG'
      'WHERE T055_ID = :T055_ID'
      'AND T100_ID = :T100_ID'
      'GROUP BY'
      '  T100_ID,'
      '  T100_TYPE,'
      '  T200_REGION_ID,'
      '  T200_REGION_NAME,'
      '  T200_INDUSTRY_ID,'
      '  T200_INDUSTRY_NAME,'
      '  T200_COUNTRY_ID,'
      '  T200_COUNTRY_NAME,'
      '  T055_ID,'
      '  T203_ID,'
      '  T203_NAME,'
      '  T203_LOGIN'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543130305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543130305F49440100000000000E000000543230
      305F524547494F4E5F494401000000000010000000543230305F524547494F4E
      5F4E414D4501000000000010000000543230305F494E4455535452595F494401
      000000000012000000543230305F494E4455535452595F4E414D450100000000
      000F000000543230305F434F554E5452595F4944010000000000110000005432
      30305F434F554E5452595F4E414D450100000000000A000000543230305F5341
      4C444F0100000000000B000000543230305F53554D5F494E0100000000000C00
      0000543230305F53554D5F4F555401000000000007000000543035355F494401
      000000000009000000543130305F545950450100000000000700000054323033
      5F494401000000000009000000543230335F4E414D450100000000000A000000
      543230335F4C4F47494E010000000000}
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT200_REGION_NAME: TStringField
      FieldName = 'T200_REGION_NAME'
      Size = 250
    end
    object odsListT200_INDUSTRY_NAME: TStringField
      FieldName = 'T200_INDUSTRY_NAME'
      Size = 255
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
    object odsListT200_REGION_ID: TFloatField
      FieldName = 'T200_REGION_ID'
    end
    object odsListT200_INDUSTRY_ID: TStringField
      FieldName = 'T200_INDUSTRY_ID'
      Size = 3
    end
    object odsListT200_COUNTRY_ID: TFloatField
      FieldName = 'T200_COUNTRY_ID'
    end
    object odsListT100_TYPE: TStringField
      FieldName = 'T100_TYPE'
      Size = 1
    end
    object odsListT203_LOGIN: TStringField
      FieldName = 'T203_LOGIN'
      Size = 10
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
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      ' SELECT'
      '  '#39'Всего строк: '#39' || Count(*)  AS STR_COUNT,'
      '  SUM(T200_SALDO) AS T200_SALDO,'
      '  SUM(T200_SUM_IN) AS T200_SUM_IN,'
      '  SUM(T200_SUM_OUT) AS T200_SUM_OUT'
      'FROM DS_BOP_BOSS.VS_BOP_SUM')
    QBEDefinition.QBEFieldDefs = {
      04000000040000001700000027C2D1C5C3CED1D2D0CECA3A277C7C434F554E54
      282A290100000000000A000000543230305F53414C444F0100000000000B0000
      00543230305F53554D5F494E0100000000000C000000543230305F53554D5F4F
      5554010000000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 456
    object odsTotalT200_SALDO: TFloatField
      FieldName = 'T200_SALDO'
    end
    object odsTotalT200_SUM_IN: TFloatField
      FieldName = 'T200_SUM_IN'
    end
    object odsTotalT200_SUM_OUT: TFloatField
      FieldName = 'T200_SUM_OUT'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 192
    Top = 456
  end
end
