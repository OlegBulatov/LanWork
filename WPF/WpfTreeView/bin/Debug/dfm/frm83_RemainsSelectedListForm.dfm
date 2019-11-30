inherited frm83_RemainsSelectedList: Tfrm83_RemainsSelectedList
  Left = 304
  Top = 342
  Width = 1292
  Height = 551
  Caption = 'Остатки на счетах'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1281
    Height = 465
  end
  inherited paRight: TPanel
    Left = 1284
    Height = 465
  end
  inherited paMain: TPanel
    Width = 1281
    Height = 465
    inherited ToolBar2: TToolBar
      Width = 1281
      ButtonWidth = 109
      inherited ToolButton18: TToolButton
        Hint = 'Перейти к 405'
        Caption = 'Перейти к 405'
      end
      inherited ToolButton19: TToolButton
        Left = 185
      end
      inherited ToolButton4: TToolButton
        Left = 259
      end
      inherited ToolBar1: TToolBar
        Left = 267
      end
      inherited sp02: TToolButton
        Left = 336
      end
      inherited tbSimFilter: TToolButton
        Left = 344
      end
      inherited tbSep01: TToolButton
        Left = 428
      end
      inherited tlbSearch: TToolBar
        Left = 436
      end
      inherited ToolButton13: TToolButton
        Left = 496
      end
      inherited tbExcel: TToolButton
        Left = 504
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 615
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 623
        Top = 0
        Action = actShowMarket
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 715
        Top = 0
        Action = actShowNom
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1281
      Height = 400
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 8
              Caption = 'Остатки на начало'
            end
            item
              FirstCol = 9
              LastCol = 22
              Caption = 'Изменения'
            end
            item
              FirstCol = 23
              LastCol = 26
              Caption = 'Остатки на конец'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 6
              LastCol = 8
              Caption = 'Выбранные'
            end
            item
              FirstCol = 9
              LastCol = 9
              Caption = 'Ср-кв цена'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Выбранные'
            end
            item
              FirstCol = 13
              LastCol = 15
              Caption = 'Выплаты (-)'
            end
            item
              FirstCol = 16
              LastCol = 16
              Caption = 'Начисленные проценты (+)'
            end
            item
              FirstCol = 17
              LastCol = 18
              Caption = 'Переоц.'
            end
            item
              FirstCol = 19
              LastCol = 20
              Caption = 'Ценовая'
            end
            item
              FirstCol = 21
              LastCol = 22
              Caption = 'Курсовая'
            end
            item
              FirstCol = 23
              LastCol = 25
              Caption = 'Выбранные'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 0
              Caption = 'Эмитент'
            end
            item
              FirstCol = 1
              LastCol = 1
              Caption = 'ИНН'
            end
            item
              FirstCol = 2
              LastCol = 2
              Caption = 'Тип ц.б.'
            end
            item
              FirstCol = 3
              LastCol = 3
              Caption = 'Номер ц.б.'
            end
            item
              FirstCol = 4
              LastCol = 4
              Caption = 'Номинал'
            end
            item
              FirstCol = 5
              LastCol = 5
              Caption = 'Исп. операции 405 формы'
            end
            item
              FirstCol = 6
              LastCol = 6
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 7
              LastCol = 7
              Caption = 'Рын.ст. (млн. $)'
            end
            item
              FirstCol = 8
              LastCol = 8
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 9
              LastCol = 9
              Caption = 'млн. $'
            end
            item
              FirstCol = 10
              LastCol = 10
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 11
              LastCol = 11
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 12
              LastCol = 12
              Caption = 'Ном.ст. (млн.$) '
            end
            item
              FirstCol = 13
              LastCol = 13
              Caption = 'Купоны (по номиналу)'
            end
            item
              FirstCol = 14
              LastCol = 14
              Caption = 'Корпуса (по номиналу)'
            end
            item
              FirstCol = 15
              LastCol = 15
              Caption = 'Корпуса (тыс.шт.)'
            end
            item
              FirstCol = 16
              LastCol = 16
              Caption = '$'
            end
            item
              FirstCol = 17
              LastCol = 17
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 18
              LastCol = 18
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 19
              LastCol = 19
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 20
              LastCol = 20
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 21
              LastCol = 21
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 22
              LastCol = 22
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 23
              LastCol = 23
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 24
              LastCol = 24
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 25
              LastCol = 25
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 26
              LastCol = 26
              Caption = 'Исп. операции 405 формы'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '1'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = '1.0'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '3'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '4'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREV_T095_FLAG'
          PickList.Strings = ()
          Title.Caption = '5'
          Width = 53
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'PREV_COUNT_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'PREV_MARKET_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'PREV_NOMINAL_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.2'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUARTAL_PRICE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '6'
          Visible = False
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'A'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'B'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'C'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUPON_NOM_PAYMENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KORPUS_NOM_PAYMENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '8.0'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KORPUS_COUNT_PAYMENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '8.1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CALC_PROC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '9'
          Width = 90
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_ALL_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.0'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_ALL_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.1'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_BUM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.2'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_BUM_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.3'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_SUM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.4'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_SUM_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.5'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.2'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T095_FLAG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '12'
          Width = 53
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1281
      inherited Panel1: TPanel
        Left = 1254
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1281
      inherited Panel1: TPanel
        Left = 1254
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 498
    Width = 1284
  end
  inherited pnlButtons: TPanel
    Top = 465
    Width = 1284
    inherited OKBtn: TButton
      Left = 1473
    end
    inherited CancelBtn: TButton
      Left = 1553
    end
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
    object actShowMarket: TAction
      Caption = 'Рын. стоимость'
      Hint = 'Показать/скрыть рыночную стоимость'
      OnExecute = actShowMarketExecute
    end
    object actShowNom: TAction
      Caption = 'Ном. стоимость'
      Hint = 'Показать/скрыть рыночную стоимость'
      OnExecute = actShowNomExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'T030_ID, T026_ID, T026_SEC_REGN, '
      '   T027_ID, T028_ID, T028_SHOT_NAME,  T028_INN,'
      '   T031_NOMINAL, PREV_COUNT_REMAIN, PREV_MARKET_REMAIN, '
      '   PREV_NOMINAL_REMAIN, QUARTAL_PRICE, COUNT_SALDO, '
      '   MARKET_SALDO, NOMINAL_SALDO, USD_ALL_PEREOC, '
      '   USD_BUM_PEREOC, USD_SUM_PEREOC, USD_ALL_NOM_PEREOC, '
      '   USD_BUM_NOM_PEREOC, USD_SUM_NOM_PEREOC, COUNT_REMAIN, '
      '   MARKET_REMAIN, NOMINAL_REMAIN, COUPON_NOM_PAYMENT,'
      '   KORPUS_NOM_PAYMENT, KORPUS_COUNT_PAYMENT, CALC_PROC,'
      '   PREV_T095_FLAG, T095_FLAG'
      'FROM V_405_CALC_REMAINS_PAYMENTS'
      'WHERE T027_ID= :T027_ID'
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001E00000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F494401000000000007000000543032385F4944010000
      0000000E000000543032385F53484F545F4E414D450100000000000C00000054
      3033315F4E4F4D494E414C01000000000011000000505245565F434F554E545F
      52454D41494E01000000000012000000505245565F4D41524B45545F52454D41
      494E01000000000013000000505245565F4E4F4D494E414C5F52454D41494E01
      00000000000D0000005155415254414C5F50524943450100000000000B000000
      434F554E545F53414C444F0100000000000C0000004D41524B45545F53414C44
      4F0100000000000D0000004E4F4D494E414C5F53414C444F0100000000000C00
      0000434F554E545F52454D41494E0100000000000D0000004D41524B45545F52
      454D41494E0100000000000E0000004E4F4D494E414C5F52454D41494E010000
      00000009000000543039355F464C41470100000000000E0000005553445F414C
      4C5F504552454F430100000000000E0000005553445F42554D5F504552454F43
      0100000000000E0000005553445F53554D5F504552454F430100000000001200
      00005553445F414C4C5F4E4F4D5F504552454F43010000000000120000005553
      445F42554D5F4E4F4D5F504552454F43010000000000120000005553445F5355
      4D5F4E4F4D5F504552454F4301000000000012000000434F55504F4E5F4E4F4D
      5F5041594D454E54010000000000120000004B4F525055535F4E4F4D5F504159
      4D454E54010000000000140000004B4F525055535F434F554E545F5041594D45
      4E540100000000000900000043414C435F50524F430100000000000800000054
      3032385F494E4E0100000000000E000000505245565F543039355F464C414701
      0000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListPREV_COUNT_REMAIN: TFloatField
      FieldName = 'PREV_COUNT_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListPREV_MARKET_REMAIN: TFloatField
      FieldName = 'PREV_MARKET_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListPREV_NOMINAL_REMAIN: TFloatField
      FieldName = 'PREV_NOMINAL_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListQUARTAL_PRICE: TFloatField
      FieldName = 'QUARTAL_PRICE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListCOUNT_SALDO: TFloatField
      FieldName = 'COUNT_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMARKET_SALDO: TFloatField
      FieldName = 'MARKET_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOMINAL_SALDO: TFloatField
      FieldName = 'NOMINAL_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListCOUNT_REMAIN: TFloatField
      FieldName = 'COUNT_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMARKET_REMAIN: TFloatField
      FieldName = 'MARKET_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOMINAL_REMAIN: TFloatField
      FieldName = 'NOMINAL_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT095_FLAG: TStringField
      FieldName = 'T095_FLAG'
      ReadOnly = True
      Size = 1
    end
    object odsListUSD_ALL_PEREOC: TFloatField
      FieldName = 'USD_ALL_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_BUM_PEREOC: TFloatField
      FieldName = 'USD_BUM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_SUM_PEREOC: TFloatField
      FieldName = 'USD_SUM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_ALL_NOM_PEREOC: TFloatField
      FieldName = 'USD_ALL_NOM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_BUM_NOM_PEREOC: TFloatField
      FieldName = 'USD_BUM_NOM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListUSD_SUM_NOM_PEREOC: TFloatField
      FieldName = 'USD_SUM_NOM_PEREOC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListCOUPON_NOM_PAYMENT: TFloatField
      FieldName = 'COUPON_NOM_PAYMENT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListKORPUS_NOM_PAYMENT: TFloatField
      FieldName = 'KORPUS_NOM_PAYMENT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListKORPUS_COUNT_PAYMENT: TFloatField
      FieldName = 'KORPUS_COUNT_PAYMENT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListCALC_PROC: TFloatField
      FieldName = 'CALC_PROC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListPREV_T095_FLAG: TStringField
      FieldName = 'PREV_T095_FLAG'
      Size = 1
    end
  end
end
