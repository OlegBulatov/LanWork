inherited A002_SumByInd: TA002_SumByInd
  Width = 909
  Height = 585
  inherited xxxDBGrid: TxxxDBGrid
    Width = 909
    Height = 546
    AdvSettings.Indexes = <
      item
        FieldName = 'T200_INDUSTRY_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
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
      '  T200_INDUSTRY_ID,'
      '  T200_INDUSTRY_NAME,'
      '  SUM(T200_SALDO) AS T200_SALDO,'
      '  SUM(T200_SUM_IN) AS T200_SUM_IN,'
      '  SUM(T200_SUM_OUT) AS T200_SUM_OUT'
      'FROM DS_BOP_BOSS.VS_BOP_SUM_BY_CATEG'
      'WHERE T055_ID = :T055_ID'
      'AND T100_ID = :T100_ID'
      'GROUP BY T055_ID,'
      'T100_ID,'
      '  T200_INDUSTRY_ID,'
      '  T200_INDUSTRY_NAME'
      ''
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543130305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543130305F494401000000000010000000543230
      305F494E4455535452595F494401000000000012000000543230305F494E4455
      535452595F4E414D450100000000000A000000543230305F53414C444F010000
      0000000B000000543230305F53554D5F494E0100000000000C00000054323030
      5F53554D5F4F555401000000000007000000543035355F4944010000000000}
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT200_INDUSTRY_NAME: TStringField
      FieldName = 'T200_INDUSTRY_NAME'
      Size = 255
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
    object odsListT200_INDUSTRY_ID: TStringField
      FieldName = 'T200_INDUSTRY_ID'
      Size = 3
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
