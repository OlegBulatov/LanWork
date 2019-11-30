inherited R01_OwnerRemains: TR01_OwnerRemains
  Left = 255
  Top = 193
  Width = 824
  Height = 496
  Caption = 'Детализация операций по собственнику'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 813
    Height = 417
  end
  inherited Panel2: TPanel
    Top = 436
    Width = 816
    Visible = True
    inherited Panel3: TPanel
      Left = 651
      inherited OKBtn: TButton
        Enabled = False
        Visible = False
      end
    end
  end
  inherited paRight: TPanel
    Left = 816
    Height = 417
  end
  inherited paMain: TPanel
    Width = 813
    Height = 417
    inherited paToolBars: TPanel
      Width = 813
      Enabled = False
      Visible = False
      inherited ToolBar2: TToolBar
        Width = 813
        Enabled = False
        Visible = False
        inherited ToolButton5: TToolButton
          Visible = False
        end
        inherited tbSimFilter: TToolButton
          Enabled = False
          Visible = False
        end
        inherited tlbSearch: TToolBar
          inherited tbSearch: TToolButton
            Enabled = False
            Visible = False
          end
        end
        object ToolButton6: TToolButton
          Left = 674
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 141
      Width = 813
      Height = 276
      AdvSettings.Enabled = False
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 5
              Caption = 'Суммы (млн. долл. США)'
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = 'Суммы (млн. руб.)'
            end>
        end
        item
          Headers = <>
        end>
      ShowVscroll = False
      Columns = <
        item
          Expanded = False
          FieldName = 'OPER_CODE'
          PickList.Strings = ()
          Title.Caption = '№'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPER_DESC'
          PickList.Strings = ()
          Title.Caption = 'Показатель'
          Width = 218
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_CNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Кол-во бумаг (млн. шт.)'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_SUM_USD'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_NET_USD'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_TAX_USD'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_SUM_RUB'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_NET_RUB'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_TAX_RUB'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 75
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 813
      inherited Panel1: TPanel
        Left = 786
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 813
      inherited Panel1: TPanel
        Left = 786
      end
    end
    object paDetail: TPanel
      Left = 0
      Top = 65
      Width = 813
      Height = 76
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 8
        Top = 31
        Width = 66
        Height = 13
        Caption = 'Собственник'
      end
      object Label3: TLabel
        Left = 8
        Top = 55
        Width = 43
        Height = 13
        Caption = 'Тип инв.'
      end
      object SpeedButton1: TSpeedButton
        Left = 360
        Top = 2
        Width = 75
        Height = 22
        Action = actRefresh
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C00000000000000000000000000000000000000000000
          000000001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7F00020002FF7FFF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7F00020002000200020002FF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7F00020002FF7FFF7F0002FF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7F0002FF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7FFF7FFF7FFF7F0002FF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7F0002FF7FFF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7F00020002FF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7F00020002000200020002FF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F00020002FF7FFF7FFF7F
          FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7F00000000
          000000001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
          00001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
          1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000000000001F7C
          1F7C1F7C1F7C}
      end
      object DBEdit1: TDBEdit
        Left = 81
        Top = 27
        Width = 256
        Height = 21
        Color = clBtnFace
        DataField = 'T028_SHOT_NAME_BUY'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 81
        Top = 51
        Width = 256
        Height = 21
        Color = clBtnFace
        DataField = 'M050_TYPE_DESC'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
      end
      inline fm01_Period1: Tfm01_Period
        Left = 8
        Top = 2
        Width = 192
        TabOrder = 2
        inherited Label1: TLabel
          Caption = 'Платежи     с'
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 73
          Width = 118
          KeyField = 'T055_ID'
        end
        inherited odsPeriod: TOracleDataSet
          Session = dmMain.OracleSession
        end
      end
      inline fm01_Period2: Tfm01_Period
        Left = 203
        Top = 2
        Width = 134
        TabOrder = 3
        inherited Label1: TLabel
          Width = 17
          Caption = 'по'
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 16
          Width = 118
          KeyField = 'T055_ID'
        end
        inherited odsPeriod: TOracleDataSet
          Session = dmMain.OracleSession
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 417
    Width = 816
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actShowCnt: TAction
      Caption = 'Кол-во бумаг'
      Checked = True
    end
    object actShowSum: TAction
      Caption = 'Всего'
      Checked = True
    end
    object actShowPay: TAction
      Caption = 'Сумма выплат'
      Checked = True
    end
    object actShowTax: TAction
      Caption = 'Налог'
      Checked = True
    end
  end
  inherited dsList: TDataSource
    DataSet = odsDisplayData
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   M050_ID,'
      '         M030_ID,'
      '         NOT_PAY_PRC,'
      '         T028_SHOT_NAME_BUY,'
      '         M030_PRC,'
      '         M050_TYPE_DESC,'
      '         M050_TAX_VALUE,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_CNT'
      '             ELSE 0 END) AS IN_CNT,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_SUM_USD'
      '             ELSE 0 END) AS IN_SUM_USD,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_NET_USD'
      '             ELSE 0 END) AS IN_NET_USD,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_TAX_USD'
      '             ELSE 0 END) AS IN_TAX_USD,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_SUM_RUB'
      '             ELSE 0 END) AS IN_SUM_RUB,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_NET_RUB'
      '             ELSE 0 END) AS IN_NET_RUB,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_BEG THEN IN_TAX_RUB'
      '             ELSE 0 END) AS IN_TAX_RUB,'
      '         SUM(UP_CNT) AS UP_CNT,'
      '         SUM(UP_SUM_USD) AS UP_SUM_USD,'
      '         SUM(UP_NET_USD) AS UP_NET_USD,'
      '         SUM(UP_TAX_USD) AS UP_TAX_USD,'
      '         SUM(UP_SUM_RUB) AS UP_SUM_RUB,'
      '         SUM(UP_NET_RUB) AS UP_NET_RUB,'
      '         SUM(UP_TAX_RUB) AS UP_TAX_RUB,'
      '         SUM(OTH_BYEAR_CNT) AS OTH_BYEAR_CNT,'
      '         SUM(OTH_BYEAR_SUM_USD) AS OTH_BYEAR_SUM_USD,'
      '         SUM(OTH_BYEAR_NET_USD) AS OTH_BYEAR_NET_USD,'
      '         SUM(OTH_BYEAR_TAX_USD) AS OTH_BYEAR_TAX_USD,'
      '         SUM(OTH_BYEAR_SUM_RUB) AS OTH_BYEAR_SUM_RUB,'
      '         SUM(OTH_BYEAR_NET_RUB) AS OTH_BYEAR_NET_RUB,'
      '         SUM(OTH_BYEAR_TAX_RUB) AS OTH_BYEAR_TAX_RUB,'
      '         SUM(PAY_405_CNT_OUT) AS PAY_405_CNT_OUT,'
      '         SUM(PAY_405_SUM_USD_OUT) AS PAY_405_SUM_USD_OUT,'
      '         SUM(PAY_405_NET_USD_OUT) AS PAY_405_NET_USD_OUT,'
      '         SUM(PAY_405_TAX_USD_OUT) AS PAY_405_TAX_USD_OUT,'
      '         SUM(PAY_405_SUM_RUB_OUT) AS PAY_405_SUM_RUB_OUT,'
      '         SUM(PAY_405_NET_RUB_OUT) AS PAY_405_NET_RUB_OUT,'
      '         SUM(PAY_405_TAX_RUB_OUT) AS PAY_405_TAX_RUB_OUT,'
      '         SUM(PAY_405_CNT_IN) AS PAY_405_CNT_IN,'
      '         SUM(PAY_405_SUM_USD_IN) AS PAY_405_SUM_USD_IN,'
      '         SUM(PAY_405_NET_USD_IN) AS PAY_405_NET_USD_IN,'
      '         SUM(PAY_405_TAX_USD_IN) AS PAY_405_TAX_USD_IN,'
      '         SUM(PAY_405_SUM_RUB_IN) AS PAY_405_SUM_RUB_IN,'
      '         SUM(PAY_405_NET_RUB_IN) AS PAY_405_NET_RUB_IN,'
      '         SUM(PAY_405_TAX_RUB_IN) AS PAY_405_TAX_RUB_IN,'
      '         SUM(PAY_DPB_CNT_OUT) AS PAY_DPB_CNT_OUT,'
      '         SUM(PAY_DPB_SUM_USD_OUT) AS PAY_DPB_SUM_USD_OUT,'
      '         SUM(PAY_DPB_NET_USD_OUT) AS PAY_DPB_NET_USD_OUT,'
      '         SUM(PAY_DPB_TAX_USD_OUT) AS PAY_DPB_TAX_USD_OUT,'
      '         SUM(PAY_DPB_SUM_RUB_OUT) AS PAY_DPB_SUM_RUB_OUT,'
      '         SUM(PAY_DPB_NET_RUB_OUT) AS PAY_DPB_NET_RUB_OUT,'
      '         SUM(PAY_DPB_TAX_RUB_OUT) AS PAY_DPB_TAX_RUB_OUT,'
      '         SUM(PAY_DPB_CNT_IN) AS PAY_DPB_CNT_IN,'
      '         SUM(PAY_DPB_SUM_USD_IN) AS PAY_DPB_SUM_USD_IN,'
      '         SUM(PAY_DPB_NET_USD_IN) AS PAY_DPB_NET_USD_IN,'
      '         SUM(PAY_DPB_TAX_USD_IN) AS PAY_DPB_TAX_USD_IN,'
      '         SUM(PAY_DPB_SUM_RUB_IN) AS PAY_DPB_SUM_RUB_IN,'
      '         SUM(PAY_DPB_NET_RUB_IN) AS PAY_DPB_NET_RUB_IN,'
      '         SUM(PAY_DPB_TAX_RUB_IN) AS PAY_DPB_TAX_RUB_IN,'
      '         SUM(OTH_YEAR_CNT) AS OTH_YEAR_CNT,'
      '         SUM(OTH_YEAR_SUM_USD) AS OTH_YEAR_SUM_USD,'
      '         SUM(OTH_YEAR_NET_USD) AS OTH_YEAR_NET_USD,'
      '         SUM(OTH_YEAR_TAX_USD) AS OTH_YEAR_TAX_USD,'
      '         SUM(OTH_YEAR_SUM_RUB) AS OTH_YEAR_SUM_RUB,'
      '         SUM(OTH_YEAR_NET_RUB) AS OTH_YEAR_NET_RUB,'
      '         SUM(OTH_YEAR_TAX_RUB) AS OTH_YEAR_TAX_RUB,'
      '         SUM(OTH_AYEAR_UP_CNT) AS OTH_AYEAR_UP_CNT,'
      '         SUM(OTH_AYEAR_UP_SUM_USD) AS OTH_AYEAR_UP_SUM_USD,'
      '         SUM(OTH_AYEAR_UP_NET_USD) AS OTH_AYEAR_UP_NET_USD,'
      '         SUM(OTH_AYEAR_UP_TAX_USD) AS OTH_AYEAR_UP_TAX_USD,'
      '         SUM(OTH_AYEAR_UP_SUM_RUB) AS OTH_AYEAR_UP_SUM_RUB,'
      '         SUM(OTH_AYEAR_UP_NET_RUB) AS OTH_AYEAR_UP_NET_RUB,'
      '         SUM(OTH_AYEAR_UP_TAX_RUB) AS OTH_AYEAR_UP_TAX_RUB,'
      '         SUM(OTH_AYEAR_DOWN_CNT) AS OTH_AYEAR_DOWN_CNT,'
      '         SUM(OTH_AYEAR_DOWN_SUM_USD) AS OTH_AYEAR_DOWN_SUM_USD,'
      '         SUM(OTH_AYEAR_DOWN_NET_USD) AS OTH_AYEAR_DOWN_NET_USD,'
      '         SUM(OTH_AYEAR_DOWN_TAX_USD) AS OTH_AYEAR_DOWN_TAX_USD,'
      '         SUM(OTH_AYEAR_DOWN_SUM_RUB) AS OTH_AYEAR_DOWN_SUM_RUB,'
      '         SUM(OTH_AYEAR_DOWN_NET_RUB) AS OTH_AYEAR_DOWN_NET_RUB,'
      '         SUM(OTH_AYEAR_DOWN_TAX_RUB) AS OTH_AYEAR_DOWN_TAX_RUB,'
      '         SUM(OTH_CHNG_CNT) AS OTH_CHNG_CNT,'
      '         SUM(OTH_CHNG_SUM_USD) AS OTH_CHNG_SUM_USD, '
      '         SUM(OTH_CHNG_NET_USD) AS OTH_CHNG_NET_USD,'
      '         SUM(OTH_CHNG_TAX_USD) AS OTH_CHNG_TAX_USD,'
      '         SUM(OTH_CHNG_SUM_RUB) AS OTH_CHNG_SUM_RUB,'
      '         SUM(OTH_CHNG_NET_RUB) AS OTH_CHNG_NET_RUB,'
      '         SUM(OTH_CHNG_TAX_RUB) AS OTH_CHNG_TAX_RUB,'
      '         SUM(PER_SUM_USD) AS PER_SUM_USD,'
      '         SUM(PER_NET_USD) AS PER_NET_USD,'
      '         SUM(PER_TAX_USD) AS PER_TAX_USD,'
      '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_CNT'
      '             ELSE 0 END) AS OUT_CNT,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_SUM_US' +
        'D'
      '             ELSE 0 END) AS OUT_SUM_USD,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_NET_US' +
        'D'
      '             ELSE 0 END) AS OUT_NET_USD,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_TAX_US' +
        'D'
      '             ELSE 0 END) AS OUT_TAX_USD,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_SUM_RU' +
        'B'
      '             ELSE 0 END) AS OUT_SUM_RUB,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_NET_RU' +
        'B'
      '             ELSE 0 END) AS OUT_NET_RUB,'
      
        '         SUM(CASE WHEN V1.T055_ID = :T055_ID_END THEN OUT_TAX_RU' +
        'B'
      '             ELSE 0 END) AS OUT_TAX_RUB'
      'FROM     V_NR_STR_REMAINS_FOR_BIND V1'
      'WHERE    V1.M050_ID = :M050_ID'
      'AND      V1.T055_ID BETWEEN :T055_ID_BEG AND :T055_ID_END'
      'AND     V1.M030_ID = :M030_ID'
      'GROUP BY V1.M050_ID,'
      '         V1.M030_ID,'
      '         V1.NOT_PAY_PRC,'
      '         V1.T028_SHOT_NAME_BUY,'
      '         V1.M030_PRC,'
      '         V1.M050_TYPE_DESC,'
      '         V1.M050_TAX_VALUE'
      ' '
      ' ')
    Variables.Data = {
      0300000004000000080000003A4D3035305F4944040000000000000000000000
      0C0000003A543035355F49445F4245470400000000000000000000000C000000
      3A543035355F49445F454E44040000000000000000000000080000003A4D3033
      305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000005E0000000B0000004E4F545F5041595F505243010000000000120000
      00543032385F53484F545F4E414D455F425559010000000000080000004D3033
      305F5052430100000000000E0000004D3035305F545950455F44455343010000
      0000000E0000004D3035305F5441585F56414C5545010000000000070000004D
      3035305F494401000000000006000000494E5F434E540100000000000A000000
      494E5F53554D5F5553440100000000000A000000494E5F4E45545F5553440100
      000000000A000000494E5F5441585F5553440100000000000A000000494E5F53
      554D5F5255420100000000000A000000494E5F4E45545F525542010000000000
      0A000000494E5F5441585F5255420100000000000600000055505F434E540100
      000000000A00000055505F53554D5F5553440100000000000A00000055505F4E
      45545F5553440100000000000A00000055505F5441585F555344010000000000
      0A00000055505F53554D5F5255420100000000000A00000055505F4E45545F52
      55420100000000000A00000055505F5441585F5255420100000000000E000000
      5041595F3430355F434E545F494E010000000000120000005041595F3430355F
      53554D5F5553445F494E010000000000120000005041595F3430355F4E45545F
      5553445F494E010000000000120000005041595F3430355F5441585F5553445F
      494E010000000000120000005041595F3430355F53554D5F5255425F494E0100
      00000000120000005041595F3430355F4E45545F5255425F494E010000000000
      120000005041595F3430355F5441585F5255425F494E0100000000000F000000
      5041595F3430355F434E545F4F5554010000000000130000005041595F343035
      5F53554D5F5553445F4F5554010000000000130000005041595F3430355F4E45
      545F5553445F4F5554010000000000130000005041595F3430355F5441585F55
      53445F4F5554010000000000130000005041595F3430355F53554D5F5255425F
      4F5554010000000000130000005041595F3430355F4E45545F5255425F4F5554
      010000000000130000005041595F3430355F5441585F5255425F4F5554010000
      0000000E0000005041595F4450425F434E545F494E0100000000001200000050
      41595F4450425F53554D5F5553445F494E010000000000120000005041595F44
      50425F4E45545F5553445F494E010000000000120000005041595F4450425F54
      41585F5553445F494E010000000000120000005041595F4450425F53554D5F52
      55425F494E010000000000120000005041595F4450425F4E45545F5255425F49
      4E010000000000120000005041595F4450425F5441585F5255425F494E010000
      0000000F0000005041595F4450425F434E545F4F555401000000000013000000
      5041595F4450425F53554D5F5553445F4F555401000000000013000000504159
      5F4450425F4E45545F5553445F4F5554010000000000130000005041595F4450
      425F5441585F5553445F4F5554010000000000130000005041595F4450425F53
      554D5F5255425F4F5554010000000000130000005041595F4450425F4E45545F
      5255425F4F5554010000000000130000005041595F4450425F5441585F525542
      5F4F55540100000000000D0000004F54485F42594541525F434E540100000000
      00110000004F54485F42594541525F53554D5F55534401000000000011000000
      4F54485F42594541525F4E45545F555344010000000000110000004F54485F42
      594541525F5441585F555344010000000000110000004F54485F42594541525F
      53554D5F525542010000000000110000004F54485F42594541525F4E45545F52
      5542010000000000110000004F54485F42594541525F5441585F525542010000
      0000000C0000004F54485F594541525F434E54010000000000100000004F5448
      5F594541525F53554D5F555344010000000000100000004F54485F594541525F
      4E45545F555344010000000000100000004F54485F594541525F5441585F5553
      44010000000000100000004F54485F594541525F53554D5F5255420100000000
      00100000004F54485F594541525F4E45545F525542010000000000100000004F
      54485F594541525F5441585F525542010000000000100000004F54485F415945
      41525F55505F434E54010000000000140000004F54485F41594541525F55505F
      53554D5F555344010000000000140000004F54485F41594541525F55505F4E45
      545F555344010000000000140000004F54485F41594541525F55505F5441585F
      555344010000000000140000004F54485F41594541525F55505F53554D5F5255
      42010000000000140000004F54485F41594541525F55505F4E45545F52554201
      0000000000140000004F54485F41594541525F55505F5441585F525542010000
      000000120000004F54485F41594541525F444F574E5F434E5401000000000016
      0000004F54485F41594541525F444F574E5F53554D5F55534401000000000016
      0000004F54485F41594541525F444F574E5F4E45545F55534401000000000016
      0000004F54485F41594541525F444F574E5F5441585F55534401000000000016
      0000004F54485F41594541525F444F574E5F53554D5F52554201000000000016
      0000004F54485F41594541525F444F574E5F4E45545F52554201000000000016
      0000004F54485F41594541525F444F574E5F5441585F5255420100000000000B
      0000005045525F53554D5F5553440100000000000B0000005045525F4E45545F
      5553440100000000000B0000005045525F5441585F5553440100000000000700
      00004F55545F434E540100000000000B0000004F55545F53554D5F5553440100
      000000000B0000004F55545F4E45545F5553440100000000000B0000004F5554
      5F5441585F5553440100000000000B0000004F55545F53554D5F525542010000
      0000000B0000004F55545F4E45545F5255420100000000000B0000004F55545F
      5441585F5255420100000000000C0000004F54485F43484E475F434E54010000
      000000100000004F54485F43484E475F53554D5F555344010000000000100000
      004F54485F43484E475F4E45545F555344010000000000100000004F54485F43
      484E475F5441585F555344010000000000100000004F54485F43484E475F5355
      4D5F525542010000000000100000004F54485F43484E475F4E45545F52554201
      0000000000100000004F54485F43484E475F5441585F52554201000000000007
      0000004D3033305F4944010000000000}
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
    end
    object odsListNOT_PAY_PRC: TFloatField
      FieldName = 'NOT_PAY_PRC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT028_SHOT_NAME_BUY: TStringField
      FieldName = 'T028_SHOT_NAME_BUY'
      Size = 255
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListM050_TAX_VALUE: TFloatField
      FieldName = 'M050_TAX_VALUE'
    end
    object odsListIN_CNT: TFloatField
      FieldName = 'IN_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListIN_SUM_USD: TFloatField
      FieldName = 'IN_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIN_NET_USD: TFloatField
      FieldName = 'IN_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIN_TAX_USD: TFloatField
      FieldName = 'IN_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIN_SUM_RUB: TFloatField
      FieldName = 'IN_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIN_NET_RUB: TFloatField
      FieldName = 'IN_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIN_TAX_RUB: TFloatField
      FieldName = 'IN_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_CNT: TFloatField
      FieldName = 'UP_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListUP_SUM_USD: TFloatField
      FieldName = 'UP_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_NET_USD: TFloatField
      FieldName = 'UP_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_TAX_USD: TFloatField
      FieldName = 'UP_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_SUM_RUB: TFloatField
      FieldName = 'UP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_NET_RUB: TFloatField
      FieldName = 'UP_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListUP_TAX_RUB: TFloatField
      FieldName = 'UP_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_CNT: TFloatField
      FieldName = 'OTH_BYEAR_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_BYEAR_SUM_USD: TFloatField
      FieldName = 'OTH_BYEAR_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_NET_USD: TFloatField
      FieldName = 'OTH_BYEAR_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_TAX_USD: TFloatField
      FieldName = 'OTH_BYEAR_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_SUM_RUB: TFloatField
      FieldName = 'OTH_BYEAR_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_NET_RUB: TFloatField
      FieldName = 'OTH_BYEAR_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_BYEAR_TAX_RUB: TFloatField
      FieldName = 'OTH_BYEAR_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_CNT_OUT: TFloatField
      FieldName = 'PAY_405_CNT_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListPAY_405_SUM_USD_OUT: TFloatField
      FieldName = 'PAY_405_SUM_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_NET_USD_OUT: TFloatField
      FieldName = 'PAY_405_NET_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_TAX_USD_OUT: TFloatField
      FieldName = 'PAY_405_TAX_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_SUM_RUB_OUT: TFloatField
      FieldName = 'PAY_405_SUM_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_NET_RUB_OUT: TFloatField
      FieldName = 'PAY_405_NET_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_TAX_RUB_OUT: TFloatField
      FieldName = 'PAY_405_TAX_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_CNT_IN: TFloatField
      FieldName = 'PAY_405_CNT_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListPAY_405_SUM_USD_IN: TFloatField
      FieldName = 'PAY_405_SUM_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_NET_USD_IN: TFloatField
      FieldName = 'PAY_405_NET_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_TAX_USD_IN: TFloatField
      FieldName = 'PAY_405_TAX_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_SUM_RUB_IN: TFloatField
      FieldName = 'PAY_405_SUM_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_NET_RUB_IN: TFloatField
      FieldName = 'PAY_405_NET_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_405_TAX_RUB_IN: TFloatField
      FieldName = 'PAY_405_TAX_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_CNT_OUT: TFloatField
      FieldName = 'PAY_DPB_CNT_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListPAY_DPB_SUM_USD_OUT: TFloatField
      FieldName = 'PAY_DPB_SUM_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_NET_USD_OUT: TFloatField
      FieldName = 'PAY_DPB_NET_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_TAX_USD_OUT: TFloatField
      FieldName = 'PAY_DPB_TAX_USD_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_SUM_RUB_OUT: TFloatField
      FieldName = 'PAY_DPB_SUM_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_NET_RUB_OUT: TFloatField
      FieldName = 'PAY_DPB_NET_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_TAX_RUB_OUT: TFloatField
      FieldName = 'PAY_DPB_TAX_RUB_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_CNT_IN: TFloatField
      FieldName = 'PAY_DPB_CNT_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListPAY_DPB_SUM_USD_IN: TFloatField
      FieldName = 'PAY_DPB_SUM_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_NET_USD_IN: TFloatField
      FieldName = 'PAY_DPB_NET_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_TAX_USD_IN: TFloatField
      FieldName = 'PAY_DPB_TAX_USD_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_SUM_RUB_IN: TFloatField
      FieldName = 'PAY_DPB_SUM_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_NET_RUB_IN: TFloatField
      FieldName = 'PAY_DPB_NET_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPAY_DPB_TAX_RUB_IN: TFloatField
      FieldName = 'PAY_DPB_TAX_RUB_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_CNT: TFloatField
      FieldName = 'OTH_YEAR_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_YEAR_SUM_USD: TFloatField
      FieldName = 'OTH_YEAR_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_NET_USD: TFloatField
      FieldName = 'OTH_YEAR_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_TAX_USD: TFloatField
      FieldName = 'OTH_YEAR_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_SUM_RUB: TFloatField
      FieldName = 'OTH_YEAR_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_NET_RUB: TFloatField
      FieldName = 'OTH_YEAR_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_YEAR_TAX_RUB: TFloatField
      FieldName = 'OTH_YEAR_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_CNT: TFloatField
      FieldName = 'OTH_AYEAR_UP_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_AYEAR_UP_SUM_USD: TFloatField
      FieldName = 'OTH_AYEAR_UP_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_NET_USD: TFloatField
      FieldName = 'OTH_AYEAR_UP_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_TAX_USD: TFloatField
      FieldName = 'OTH_AYEAR_UP_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_SUM_RUB: TFloatField
      FieldName = 'OTH_AYEAR_UP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_NET_RUB: TFloatField
      FieldName = 'OTH_AYEAR_UP_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_UP_TAX_RUB: TFloatField
      FieldName = 'OTH_AYEAR_UP_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_CNT: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_AYEAR_DOWN_SUM_USD: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_NET_USD: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_TAX_USD: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_SUM_RUB: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_NET_RUB: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_AYEAR_DOWN_TAX_RUB: TFloatField
      FieldName = 'OTH_AYEAR_DOWN_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_CNT: TFloatField
      FieldName = 'OTH_CHNG_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_CHNG_SUM_USD: TFloatField
      FieldName = 'OTH_CHNG_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_NET_USD: TFloatField
      FieldName = 'OTH_CHNG_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_TAX_USD: TFloatField
      FieldName = 'OTH_CHNG_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_SUM_RUB: TFloatField
      FieldName = 'OTH_CHNG_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_NET_RUB: TFloatField
      FieldName = 'OTH_CHNG_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOTH_CHNG_TAX_RUB: TFloatField
      FieldName = 'OTH_CHNG_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPER_SUM_USD: TFloatField
      FieldName = 'PER_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPER_NET_USD: TFloatField
      FieldName = 'PER_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPER_TAX_USD: TFloatField
      FieldName = 'PER_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_CNT: TFloatField
      FieldName = 'OUT_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_SUM_USD: TFloatField
      FieldName = 'OUT_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_NET_USD: TFloatField
      FieldName = 'OUT_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_TAX_USD: TFloatField
      FieldName = 'OUT_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_SUM_RUB: TFloatField
      FieldName = 'OUT_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_NET_RUB: TFloatField
      FieldName = 'OUT_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListOUT_TAX_RUB: TFloatField
      FieldName = 'OUT_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM030_ID: TFloatField
      FieldName = 'M030_ID'
      Required = True
    end
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NR_CALC_REMAINS.p_calc_for_div(:M050_ID);'
      'END;'
      ''
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3035305F4944040000000000000000000000}
    Left = 104
    Top = 272
  end
  object odsDisplayData: TOracleDataSet
    SQL.Strings = (
      'SELECT   OPER_DESC,'
      '          OPER_CODE,'
      '          IN_CNT,'
      '         IN_SUM_USD,'
      '         IN_NET_USD,'
      '         IN_TAX_USD,'
      '         IN_SUM_RUB,'
      '         IN_NET_RUB,'
      '         IN_TAX_RUB'
      'FROM     V_NR_LINK_OWNER_REMAIN'
      ' '
      ' ')
    ReadBuffer = 50
    QBEDefinition.QBEFieldDefs = {
      040000000900000006000000494E5F434E540100000000000A000000494E5F53
      554D5F5553440100000000000A000000494E5F4E45545F555344010000000000
      0A000000494E5F5441585F5553440100000000000A000000494E5F53554D5F52
      55420100000000000A000000494E5F4E45545F5255420100000000000A000000
      494E5F5441585F525542010000000000090000004F5045525F434F4445010000
      000000090000004F5045525F44455343010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Active = True
    Left = 104
    Top = 227
    object IN_CNT1: TFloatField
      FieldName = 'IN_CNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object IN_SUM_USD1: TFloatField
      FieldName = 'IN_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object IN_NET_USD1: TFloatField
      FieldName = 'IN_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object IN_TAX_USD1: TFloatField
      FieldName = 'IN_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object IN_SUM_RUB1: TFloatField
      FieldName = 'IN_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object IN_NET_RUB1: TFloatField
      FieldName = 'IN_NET_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object IN_TAX_RUB1: TFloatField
      FieldName = 'IN_TAX_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDisplayDataOPER_DESC: TStringField
      FieldName = 'OPER_DESC'
      Size = 39
    end
    object odsDisplayDataOPER_CODE: TFloatField
      FieldName = 'OPER_CODE'
    end
  end
  object DataSource1: TDataSource
    DataSet = odsList
    Left = 592
    Top = 137
  end
end
