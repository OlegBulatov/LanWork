inherited A12_Summation: TA12_Summation
  Width = 1110
  Height = 26
  object DBText1: TDBText [0]
    Left = 78
    Top = 6
    Width = 75
    Height = 25
    DataField = 'COUNT_STR'
    DataSource = dsList
  end
  object DBText2: TDBText [1]
    Left = 284
    Top = 6
    Width = 161
    Height = 25
    DataField = 'NOMINAL_USD_ALL'
    DataSource = dsList
  end
  object DBText3: TDBText [2]
    Left = 612
    Top = 6
    Width = 217
    Height = 25
    DataField = 'MARKET_USD_ALL'
    DataSource = dsList
  end
  object Label1: TLabel [3]
    Left = 24
    Top = 6
    Width = 65
    Height = 25
    Caption = 'Строк:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [4]
    Left = 168
    Top = 6
    Width = 95
    Height = 13
    Caption = 'Всего номинал:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [5]
    Left = 480
    Top = 6
    Width = 81
    Height = 13
    Caption = 'Всего рынок:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited actList: TActionList
    Left = 752
  end
  inherited dsList: TDataSource
    Left = 812
    Top = 65531
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select count(*) AS COUNT_STR,'
      ' SUM(NOMINAL_USD_ALL) AS NOMINAL_USD_ALL,'
      ' SUM(MARKET_USD_ALL) AS MARKET_USD_ALL'
      'from V_404_SUM_DATA')
    QBEDefinition.QBEFieldDefs = {
      040000000300000009000000434F554E545F5354520100000000000F0000004E
      4F4D494E414C5F5553445F414C4C0100000000000E0000004D41524B45545F55
      53445F414C4C010000000000}
    Left = 692
    object odsListCOUNT_STR: TFloatField
      FieldName = 'COUNT_STR'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListNOMINAL_USD_ALL: TFloatField
      FieldName = 'NOMINAL_USD_ALL'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListMARKET_USD_ALL: TFloatField
      FieldName = 'MARKET_USD_ALL'
      DisplayFormat = '### ### ### ##0.000'
    end
  end
end
