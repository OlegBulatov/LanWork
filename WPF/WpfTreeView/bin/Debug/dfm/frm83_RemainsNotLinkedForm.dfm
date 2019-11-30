inherited frm83_RemainsNotLinked: Tfrm83_RemainsNotLinked
  Left = 115
  Top = 56
  Width = 1052
  Height = 714
  Caption = 'Несвязанные остатки по данным формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1041
    Height = 631
  end
  inherited paRight: TPanel
    Left = 1044
    Height = 631
  end
  inherited paMain: TPanel
    Width = 1041
    Height = 631
    inherited ToolBar2: TToolBar
      Width = 1041
      inherited ToolButton4: TToolButton
        Left = 267
      end
      inherited ToolBar1: TToolBar
        Left = 275
      end
      inherited sp02: TToolButton
        Left = 344
      end
      inherited tbSimFilter: TToolButton
        Left = 352
      end
      inherited tbSep01: TToolButton
        Left = 438
      end
      inherited tlbSearch: TToolBar
        Left = 446
      end
      inherited ToolButton13: TToolButton
        Left = 506
      end
      inherited tbExcel: TToolButton
        Left = 514
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1041
      Height = 566
      AdvSettings.Indexes = <
        item
          FieldName = 'USD_SUM_REMAIN'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 6
              Caption = 'Остаток на начало периода '
            end
            item
              FirstCol = 7
              LastCol = 9
              Caption = 'Операции втор. рынка (Всего)'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Операции втор. рынка (кроме прочих)'
            end
            item
              FirstCol = 13
              LastCol = 15
              Caption = 'Прочие операции втор. рынка'
            end
            item
              FirstCol = 16
              LastCol = 18
              Caption = 'Погашение'
            end
            item
              FirstCol = 19
              LastCol = 21
              Caption = 'Прочие изменения'
            end
            item
              FirstCol = 22
              LastCol = 24
              Caption = 'Переоценка (млн. $)'
            end
            item
              FirstCol = 25
              LastCol = 27
              Caption = 'Остаток на конец периода'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'КО'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREV_COUNT_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREV_RUB_SUM_REMAIN'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREV_USD_SUM_REMAIN'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_ALL_CNT'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_ALL_RUB'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_ALL_USD'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNT_SALDO'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RUB_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_SALDO_CNT'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_SALDO_RUB'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_SALDO_USD'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MATUR_COUNT'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MATUR_RUB_SUM'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MATUR_USD_SUM'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_COUNT'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_RUB_SUM'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTHER_USD_SUM'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_ALL_PEREOC'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_BUM_PEREOC'
          PickList.Strings = ()
          Title.Caption = 'По ц.б.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_SUM_PEREOC'
          PickList.Strings = ()
          Title.Caption = 'Курсовая'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNT_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'шт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RUB_SUM_REMAIN'
          PickList.Strings = ()
          Title.Caption = '(млн. руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_SUM_REMAIN'
          PickList.Strings = ()
          Title.Caption = '(млн. $)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Title.Caption = 'Эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T096_MATURITY_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1041
      inherited Panel1: TPanel
        Left = 1014
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1041
      inherited Panel1: TPanel
        Left = 1014
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 664
    Width = 1044
  end
  inherited pnlButtons: TPanel
    Top = 631
    Width = 1044
    inherited OKBtn: TButton
      Left = 886
    end
    inherited CancelBtn: TButton
      Left = 966
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Caption = 'Перейти к 405'
      Hint = 'Перейти к 405'
      ImageIndex = 1
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T030_ID,'
      '  T026_SEC_REGN,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T096_BANK_CODE,'
      '  BANK_NAME,'
      '  PREV_COUNT_REMAIN,'
      '  PREV_RUB_SUM_REMAIN,'
      '  PREV_USD_SUM_EDIT_REMAIN,'
      '  PREV_USD_SUM_REMAIN,'
      '  COUNT_SALDO,'
      '  RUB_SUM_SALDO,'
      '  USD_SUM_SALDO,'
      '  MATUR_COUNT,'
      '  MATUR_RUB_SUM,'
      '  MATUR_USD_SUM,'
      '  OTHER_COUNT,'
      '  OTHER_RUB_SUM,'
      '  OTHER_USD_SUM,'
      '  OTHER_SALDO_CNT,'
      '  OTHER_SALDO_RUB,'
      '  OTHER_SALDO_USD,'
      '  SALDO_ALL_CNT,'
      '  SALDO_ALL_RUB,'
      '  SALDO_ALL_USD,'
      '  USD_ALL_PEREOC,'
      '  USD_BUM_PEREOC,'
      '  USD_SUM_PEREOC,'
      '  COUNT_REMAIN,'
      '  RUB_SUM_REMAIN,'
      '  USD_SUM_REMAIN,'
      '  T096_MATURITY_DATE'
      'FROM V_405_CALC_REMAINS_TAB_104'
      'where  T027_ID = :T027_ID ')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000210000000E000000543032385F53484F545F4E414D45010000000000
      0900000042414E4B5F4E414D450100000000000E0000005553445F53554D5F52
      454D41494E0100000000000D0000005553445F53554D5F53414C444F01000000
      000013000000505245565F5553445F53554D5F52454D41494E0100000000000E
      0000005553445F53554D5F504552454F4301000000000011000000505245565F
      434F554E545F52454D41494E0100000000000B000000434F554E545F53414C44
      4F0100000000000C000000434F554E545F52454D41494E010000000000070000
      00543033305F49440100000000000D000000543032365F5345435F5245474E01
      000000000007000000543032385F49440100000000000E000000543039365F42
      414E4B5F434F444501000000000018000000505245565F5553445F53554D5F45
      4449545F52454D41494E0100000000000E0000005553445F42554D5F50455245
      4F430100000000000E0000005553445F414C4C5F504552454F43010000000000
      13000000505245565F5255425F53554D5F52454D41494E0100000000000D0000
      005255425F53554D5F53414C444F0100000000000E0000005255425F53554D5F
      52454D41494E0100000000000B0000004D415455525F434F554E540100000000
      000D0000004D415455525F5255425F53554D0100000000000D0000004D415455
      525F5553445F53554D0100000000000B0000004F544845525F434F554E540100
      000000000D0000004F544845525F5255425F53554D0100000000000D0000004F
      544845525F5553445F53554D01000000000012000000543039365F4D41545552
      4954595F444154450100000000000F0000004F544845525F53414C444F5F434E
      540100000000000F0000004F544845525F53414C444F5F525542010000000000
      0F0000004F544845525F53414C444F5F5553440100000000000D00000053414C
      444F5F414C4C5F434E540100000000000D00000053414C444F5F414C4C5F5255
      420100000000000D00000053414C444F5F414C4C5F5553440100000000000800
      0000543032385F494E4E010000000000}
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
    object odsListPREV_USD_SUM_REMAIN: TFloatField
      FieldName = 'PREV_USD_SUM_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_SUM_SALDO: TFloatField
      FieldName = 'USD_SUM_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_SUM_REMAIN: TFloatField
      FieldName = 'USD_SUM_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_SUM_PEREOC: TFloatField
      FieldName = 'USD_SUM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPREV_COUNT_REMAIN: TFloatField
      FieldName = 'PREV_COUNT_REMAIN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListCOUNT_SALDO: TFloatField
      FieldName = 'COUNT_SALDO'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListCOUNT_REMAIN: TFloatField
      FieldName = 'COUNT_REMAIN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '###########0'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT096_BANK_CODE: TStringField
      FieldName = 'T096_BANK_CODE'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListPREV_USD_SUM_EDIT_REMAIN: TFloatField
      FieldName = 'PREV_USD_SUM_EDIT_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '###########0.0000'
    end
    object odsListUSD_BUM_PEREOC: TFloatField
      FieldName = 'USD_BUM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListUSD_ALL_PEREOC: TFloatField
      FieldName = 'USD_ALL_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPREV_RUB_SUM_REMAIN: TFloatField
      FieldName = 'PREV_RUB_SUM_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListRUB_SUM_SALDO: TFloatField
      FieldName = 'RUB_SUM_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListRUB_SUM_REMAIN: TFloatField
      FieldName = 'RUB_SUM_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMATUR_COUNT: TFloatField
      FieldName = 'MATUR_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListMATUR_RUB_SUM: TFloatField
      FieldName = 'MATUR_RUB_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMATUR_USD_SUM: TFloatField
      FieldName = 'MATUR_USD_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListOTHER_COUNT: TFloatField
      FieldName = 'OTHER_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTHER_RUB_SUM: TFloatField
      FieldName = 'OTHER_RUB_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListOTHER_USD_SUM: TFloatField
      FieldName = 'OTHER_USD_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT096_MATURITY_DATE: TDateTimeField
      FieldName = 'T096_MATURITY_DATE'
    end
    object odsListOTHER_SALDO_CNT: TFloatField
      FieldName = 'OTHER_SALDO_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTHER_SALDO_RUB: TFloatField
      FieldName = 'OTHER_SALDO_RUB'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListOTHER_SALDO_USD: TFloatField
      FieldName = 'OTHER_SALDO_USD'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSALDO_ALL_CNT: TFloatField
      FieldName = 'SALDO_ALL_CNT'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSALDO_ALL_RUB: TFloatField
      FieldName = 'SALDO_ALL_RUB'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSALDO_ALL_USD: TFloatField
      FieldName = 'SALDO_ALL_USD'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        #9'Pk_405_Calc_Remains.p_update_remain(:T055_ID, :T027_ID, :T030_I' +
        'D, :T096_BANK_CODE, :COUNT_REMAIN, :USD_SUM_REMAIN);'
      'END; '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000006000000080000003A543035355F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000D0000003A434F55
      4E545F52454D41494E0400000000000000000000000F0000003A5553445F5355
      4D5F52454D41494E040000000000000000000000080000003A543033305F4944
      0400000000000000000000000F0000003A543039365F42414E4B5F434F444505
      0000000000000000000000}
  end
  object oqSetPeriod: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      #9'Pk_405_Calc_Remains.p_set_period_id(:T055_ID);'
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Left = 504
    Top = 192
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      #9'Pk_405_Calc_Remains.p_do_calculation(:T027_ID, :T055_ID);'
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    Left = 424
    Top = 152
  end
end
