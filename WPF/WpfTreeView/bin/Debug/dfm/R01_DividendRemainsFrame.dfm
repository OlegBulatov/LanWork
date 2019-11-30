inherited R01_DividendRemains: TR01_DividendRemains
  Left = 222
  Top = 211
  Width = 978
  Height = 456
  Caption = 'Детализация по объявлению выплат дивидендов '
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 967
    Height = 370
  end
  inherited paRight: TPanel
    Left = 970
    Height = 370
  end
  inherited paMain: TPanel
    Width = 967
    Height = 370
    inherited ToolBar2: TToolBar
      Width = 967
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 967
      Height = 305
      AdvSettings.Enabled = False
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 2
              LastCol = 5
              Caption = 'Всего (млн. долл. США)'
            end
            item
              FirstCol = 6
              LastCol = 9
              Caption = 'Прямые (млн. долл. США)'
            end
            item
              FirstCol = 10
              LastCol = 13
              Caption = 'Портфельные (млн. долл. США)'
            end>
        end
        item
          Headers = <>
        end>
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
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALL_CNT'
          PickList.Strings = ()
          Title.Caption = 'Млн. шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALL_SUM_USD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Всего'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALL_NET_USD'
          PickList.Strings = ()
          Title.Caption = 'Выплаты'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALL_TAX_USD'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_CNT'
          PickList.Strings = ()
          Title.Caption = 'Млн. шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_SUM_USD'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_NET_USD'
          PickList.Strings = ()
          Title.Caption = 'Выплаты'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_TAX_USD'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF_CNT'
          PickList.Strings = ()
          Title.Caption = 'Млн. шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF_SUM_USD'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF_NET_USD'
          PickList.Strings = ()
          Title.Caption = 'Выплаты'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF_TAX_USD'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 967
      inherited Panel1: TPanel
        Left = 940
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 967
      inherited Panel1: TPanel
        Left = 940
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 403
    Width = 970
  end
  inherited pnlButtons: TPanel
    Top = 370
    Width = 970
  end
  inherited dsList: TDataSource
    DataSet = odsDisplayData
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
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   M050_ID,'
      '         M050_TYPE,'
      '         SUM(UP_CNT) AS UP_CNT,'
      '         SUM(UP_SUM_USD) AS UP_SUM_USD,'
      '         SUM(UP_NET_USD) AS UP_NET_USD,'
      '         SUM(UP_TAX_USD) AS UP_TAX_USD,'
      '         SUM(OTH_BYEAR_CNT) AS OTH_BYEAR_CNT,'
      '         SUM(OTH_BYEAR_SUM_USD) AS OTH_BYEAR_SUM_USD,'
      '         SUM(OTH_BYEAR_NET_USD) AS OTH_BYEAR_NET_USD,'
      '         SUM(OTH_BYEAR_TAX_USD) AS OTH_BYEAR_TAX_USD,'
      '         SUM(PAY_405_CNT_OUT) AS PAY_405_CNT_OUT,'
      '         SUM(PAY_405_SUM_USD_OUT) AS PAY_405_SUM_USD_OUT,'
      '         SUM(PAY_405_NET_USD_OUT) AS PAY_405_NET_USD_OUT,'
      '         SUM(PAY_405_TAX_USD_OUT) AS PAY_405_TAX_USD_OUT,'
      '         SUM(PAY_405_CNT_IN) AS PAY_405_CNT_IN,'
      '         SUM(PAY_405_SUM_USD_IN) AS PAY_405_SUM_USD_IN,'
      '         SUM(PAY_405_NET_USD_IN) AS PAY_405_NET_USD_IN,'
      '         SUM(PAY_405_TAX_USD_IN) AS PAY_405_TAX_USD_IN,'
      '         SUM(PAY_DPB_CNT_OUT) AS PAY_DPB_CNT_OUT,'
      '         SUM(PAY_DPB_SUM_USD_OUT) AS PAY_DPB_SUM_USD_OUT,'
      '         SUM(PAY_DPB_NET_USD_OUT) AS PAY_DPB_NET_USD_OUT,'
      '         SUM(PAY_DPB_TAX_USD_OUT) AS PAY_DPB_TAX_USD_OUT,'
      '         SUM(PAY_DPB_CNT_IN) AS PAY_DPB_CNT_IN,'
      '         SUM(PAY_DPB_SUM_USD_IN) AS PAY_DPB_SUM_USD_IN,'
      '         SUM(PAY_DPB_NET_USD_IN) AS PAY_DPB_NET_USD_IN,'
      '         SUM(PAY_DPB_TAX_USD_IN) AS PAY_DPB_TAX_USD_IN,'
      '         SUM(OTH_YEAR_CNT) AS OTH_YEAR_CNT,'
      '         SUM(OTH_YEAR_SUM_USD) AS OTH_YEAR_SUM_USD,'
      '         SUM(OTH_YEAR_NET_USD) AS OTH_YEAR_NET_USD,'
      '         SUM(OTH_YEAR_TAX_USD) AS OTH_YEAR_TAX_USD,'
      '         SUM(OTH_AYEAR_UP_CNT) AS OTH_AYEAR_UP_CNT,'
      '         SUM(OTH_AYEAR_UP_SUM_USD) AS OTH_AYEAR_UP_SUM_USD,'
      '         SUM(OTH_AYEAR_UP_NET_USD) AS OTH_AYEAR_UP_NET_USD,'
      '         SUM(OTH_AYEAR_UP_TAX_USD) AS OTH_AYEAR_UP_TAX_USD,'
      '         SUM(OTH_AYEAR_DOWN_CNT) AS OTH_AYEAR_DOWN_CNT,'
      '         SUM(OTH_AYEAR_DOWN_SUM_USD) AS OTH_AYEAR_DOWN_SUM_USD,'
      '         SUM(OTH_AYEAR_DOWN_NET_USD) AS OTH_AYEAR_DOWN_NET_USD,'
      '         SUM(OTH_AYEAR_DOWN_TAX_USD) AS OTH_AYEAR_DOWN_TAX_USD,'
      '         SUM(OTH_CHNG_CNT) AS OTH_CHNG_CNT,'
      '         SUM(OTH_CHNG_SUM_USD) AS OTH_CHNG_SUM_USD,'
      '         SUM(OTH_CHNG_NET_USD) AS OTH_CHNG_NET_USD,'
      '         SUM(OTH_CHNG_TAX_USD) AS OTH_CHNG_TAX_USD,'
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
      '             ELSE 0 END) AS OUT_TAX_USD'
      'FROM     V_NR_STR_REMAINS_FOR_BIND V1'
      'WHERE    V1.M050_ID = :M050_ID'
      'AND      V1.T055_ID <= :T055_ID_END'
      'GROUP BY M050_ID,'
      '         M050_TYPE'
      'ORDER BY M050_TYPE'
      '')
    Variables.Data = {
      0300000002000000080000003A4D3035305F4944040000000000000000000000
      0C0000003A543035355F49445F454E44040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000031000000070000004D3035305F49440100000000000600000055505F
      434E540100000000000A00000055505F53554D5F5553440100000000000A0000
      0055505F4E45545F5553440100000000000A00000055505F5441585F55534401
      00000000000E0000005041595F3430355F434E545F494E010000000000120000
      005041595F3430355F53554D5F5553445F494E01000000000012000000504159
      5F3430355F4E45545F5553445F494E010000000000120000005041595F343035
      5F5441585F5553445F494E0100000000000F0000005041595F3430355F434E54
      5F4F5554010000000000130000005041595F3430355F53554D5F5553445F4F55
      54010000000000130000005041595F3430355F4E45545F5553445F4F55540100
      00000000130000005041595F3430355F5441585F5553445F4F55540100000000
      000E0000005041595F4450425F434E545F494E01000000000012000000504159
      5F4450425F53554D5F5553445F494E010000000000120000005041595F445042
      5F4E45545F5553445F494E010000000000120000005041595F4450425F544158
      5F5553445F494E0100000000000F0000005041595F4450425F434E545F4F5554
      010000000000130000005041595F4450425F53554D5F5553445F4F5554010000
      000000130000005041595F4450425F4E45545F5553445F4F5554010000000000
      130000005041595F4450425F5441585F5553445F4F55540100000000000D0000
      004F54485F42594541525F434E54010000000000110000004F54485F42594541
      525F53554D5F555344010000000000110000004F54485F42594541525F4E4554
      5F555344010000000000110000004F54485F42594541525F5441585F55534401
      00000000000C0000004F54485F594541525F434E54010000000000100000004F
      54485F594541525F53554D5F555344010000000000100000004F54485F594541
      525F4E45545F555344010000000000100000004F54485F594541525F5441585F
      555344010000000000100000004F54485F41594541525F55505F434E54010000
      000000140000004F54485F41594541525F55505F53554D5F5553440100000000
      00140000004F54485F41594541525F55505F4E45545F55534401000000000014
      0000004F54485F41594541525F55505F5441585F555344010000000000120000
      004F54485F41594541525F444F574E5F434E54010000000000160000004F5448
      5F41594541525F444F574E5F53554D5F555344010000000000160000004F5448
      5F41594541525F444F574E5F4E45545F555344010000000000160000004F5448
      5F41594541525F444F574E5F5441585F5553440100000000000B000000504552
      5F53554D5F5553440100000000000B0000005045525F4E45545F555344010000
      0000000B0000005045525F5441585F555344010000000000070000004F55545F
      434E540100000000000B0000004F55545F53554D5F5553440100000000000B00
      00004F55545F4E45545F5553440100000000000B0000004F55545F5441585F55
      53440100000000000C0000004F54485F43484E475F434E540100000000001000
      00004F54485F43484E475F53554D5F555344010000000000100000004F54485F
      43484E475F4E45545F555344010000000000100000004F54485F43484E475F54
      41585F555344010000000000090000004D3035305F54595045010000000000}
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
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
    object odsListM050_TYPE: TIntegerField
      FieldName = 'M050_TYPE'
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
    Left = 336
    Top = 144
  end
  object odsDisplayData: TOracleDataSet
    SQL.Strings = (
      'SELECT OPER_CODE,'
      '  OPER_DESC,'
      '  ALL_CNT,'
      '  ALL_SUM_USD,'
      '  ALL_NET_USD,'
      '  ALL_TAX_USD,'
      '  PR_CNT,'
      '  PR_SUM_USD,'
      '  PR_NET_USD,'
      '  PR_TAX_USD,'
      '  PF_CNT,'
      '  PF_SUM_USD,'
      '  PF_NET_USD,'
      '  PF_TAX_USD'
      'FROM     V_NR_LINK_DIV_REMAIN'
      ' '
      ' '
      ' ')
    ReadBuffer = 50
    QBEDefinition.QBEFieldDefs = {
      040000000E000000090000004F5045525F434F4445010000000000090000004F
      5045525F4445534301000000000007000000414C4C5F434E540100000000000B
      000000414C4C5F53554D5F5553440100000000000B000000414C4C5F4E45545F
      5553440100000000000B000000414C4C5F5441585F5553440100000000000600
      000050525F434E540100000000000A00000050525F53554D5F55534401000000
      00000A00000050525F4E45545F5553440100000000000A00000050525F544158
      5F5553440100000000000600000050465F434E540100000000000A0000005046
      5F53554D5F5553440100000000000A00000050465F4E45545F55534401000000
      00000A00000050465F5441585F555344010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 104
    Top = 227
    object odsDisplayDataOPER_CODE: TFloatField
      FieldName = 'OPER_CODE'
    end
    object odsDisplayDataOPER_DESC: TStringField
      FieldName = 'OPER_DESC'
      Size = 39
    end
    object odsDisplayDataALL_CNT: TFloatField
      FieldName = 'ALL_CNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPR_CNT: TFloatField
      FieldName = 'PR_CNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPF_CNT: TFloatField
      FieldName = 'PF_CNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataALL_SUM_USD: TFloatField
      FieldName = 'ALL_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPR_SUM_USD: TFloatField
      FieldName = 'PR_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPF_SUM_USD: TFloatField
      FieldName = 'PF_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataALL_NET_USD: TFloatField
      FieldName = 'ALL_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPR_NET_USD: TFloatField
      FieldName = 'PR_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPF_NET_USD: TFloatField
      FieldName = 'PF_NET_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataALL_TAX_USD: TFloatField
      FieldName = 'ALL_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPR_TAX_USD: TFloatField
      FieldName = 'PR_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsDisplayDataPF_TAX_USD: TFloatField
      FieldName = 'PF_TAX_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = odsList
    Left = 384
    Top = 89
  end
end
