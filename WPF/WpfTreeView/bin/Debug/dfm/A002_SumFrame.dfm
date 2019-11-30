inherited A002_Sum: TA002_Sum
  Width = 909
  Height = 585
  inherited xxxDBGrid: TxxxDBGrid
    Width = 909
    Height = 560
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
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'Поступило'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Изъято'
        Width = 75
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
        FieldName = 'T200_ID'
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
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  T200_ID,'
      '  T100_ID,'
      '  T200_REGION_ID,'
      '  T200_REGION_NAME,'
      '  T200_INDUSTRY_ID,'
      '  T200_INDUSTRY_NAME,'
      '  T200_COUNTRY_ID,'
      '  T200_COUNTRY_NAME,'
      '  T200_SALDO,'
      '  T200_SUM_IN,'
      '  T200_SUM_OUT,'
      '  T055_ID'
      'FROM DS_BOP_BOSS.VS_BOP_SUM')
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543230305F494401000000000007000000543130
      305F49440100000000000E000000543230305F524547494F4E5F494401000000
      000010000000543230305F524547494F4E5F4E414D4501000000000010000000
      543230305F494E4455535452595F494401000000000012000000543230305F49
      4E4455535452595F4E414D450100000000000F000000543230305F434F554E54
      52595F494401000000000011000000543230305F434F554E5452595F4E414D45
      0100000000000A000000543230305F53414C444F0100000000000B0000005432
      30305F53554D5F494E0100000000000C000000543230305F53554D5F4F555401
      000000000007000000543035355F4944010000000000}
    object odsListT200_ID: TFloatField
      FieldName = 'T200_ID'
    end
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT200_REGION_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'T200_REGION_ID'
    end
    object odsListT200_REGION_NAME: TStringField
      FieldName = 'T200_REGION_NAME'
      Size = 250
    end
    object odsListT200_INDUSTRY_ID: TStringField
      Alignment = taCenter
      FieldName = 'T200_INDUSTRY_ID'
      Size = 3
    end
    object odsListT200_INDUSTRY_NAME: TStringField
      FieldName = 'T200_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT200_COUNTRY_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'T200_COUNTRY_ID'
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
  end
end
