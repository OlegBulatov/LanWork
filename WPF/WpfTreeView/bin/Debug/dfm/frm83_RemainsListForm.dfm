inherited frm83_RemainsList: Tfrm83_RemainsList
  Left = 181
  Top = 215
  Width = 1292
  Height = 785
  ActiveControl = nil
  Caption = 'Остатки на счетах'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 322
    Width = 1284
  end
  inherited spRight: TSplitter
    Left = 1281
    Height = 322
  end
  inherited paRight: TPanel
    Left = 1284
    Height = 322
  end
  inherited paMain: TPanel
    Width = 1281
    Height = 322
    inherited ToolBar2: TToolBar
      Width = 1281
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
        Left = 430
      end
      inherited tlbSearch: TToolBar
        Left = 438
      end
      inherited ToolButton13: TToolButton
        Left = 498
      end
      inherited tbExcel: TToolButton
        Left = 506
        AutoSize = True
      end
      inherited ToolButton5: TToolButton
        Left = 617
      end
      inherited ToolButton7: TToolButton
        Left = 625
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 724
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 732
        Top = 0
        Action = actForm405
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 798
        Top = 0
        Action = actForm711
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 1281
      Height = 234
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
          Headers = <
            item
              FirstCol = 4
              LastCol = 14
              Caption = 'Остатки на начало'
            end
            item
              FirstCol = 15
              LastCol = 37
              Caption = 'Изменения'
            end
            item
              FirstCol = 38
              LastCol = 48
              Caption = 'Остатки на конец'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 17
              LastCol = 22
              Caption = '711'
            end
            item
              FirstCol = 23
              LastCol = 28
              Caption = '405'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 7
              LastCol = 9
              Caption = '711'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Выбранные'
            end
            item
              FirstCol = 13
              LastCol = 14
              Caption = 'Отклонения выбранных'
            end
            item
              FirstCol = 16
              LastCol = 16
              Caption = 'Котировка на 15-е'
            end
            item
              FirstCol = 17
              LastCol = 19
              Caption = 'Операции'
            end
            item
              FirstCol = 20
              LastCol = 22
              Caption = 'Не ПБ'
            end
            item
              FirstCol = 23
              LastCol = 25
              Caption = 'Операции'
            end
            item
              FirstCol = 26
              LastCol = 28
              Caption = 'Корректировка'
            end
            item
              FirstCol = 29
              LastCol = 31
              Caption = 'Выбранные'
            end
            item
              FirstCol = 32
              LastCol = 33
              Caption = 'Переоц.'
            end
            item
              FirstCol = 34
              LastCol = 35
              Caption = 'Ценовая'
            end
            item
              FirstCol = 36
              LastCol = 37
              Caption = 'Курсовая'
            end
            item
              FirstCol = 41
              LastCol = 43
              Caption = '711'
            end
            item
              FirstCol = 44
              LastCol = 46
              Caption = 'Выбранные'
            end
            item
              FirstCol = 47
              LastCol = 48
              Caption = 'Отклонения выбранных'
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
              Caption = 'Исп. операции 405 формы'
            end
            item
              FirstCol = 5
              LastCol = 5
              Caption = 'Номинал'
            end
            item
              FirstCol = 6
              LastCol = 6
              Caption = 'Размер эмиссии (тыс.шт.)'
            end
            item
              FirstCol = 7
              LastCol = 7
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 8
              LastCol = 8
              Caption = 'Рын.ст. (млн. $)'
            end
            item
              FirstCol = 9
              LastCol = 9
              Caption = 'Ном.ст. (млн.$)'
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
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 13
              LastCol = 13
              Caption = 'от р. э. (тыс.шт.)'
            end
            item
              FirstCol = 14
              LastCol = 14
              Caption = 'от 711 (тыс.шт.)'
            end
            item
              FirstCol = 15
              LastCol = 15
              Caption = 'Номинал'
            end
            item
              FirstCol = 16
              LastCol = 16
              Caption = 'Цена  (вал.ном.)'
            end
            item
              FirstCol = 17
              LastCol = 17
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 18
              LastCol = 18
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 19
              LastCol = 19
              Caption = 'Ном.ст. (млн.$) '
            end
            item
              FirstCol = 20
              LastCol = 20
              Caption = 'Кол.ц.б. (шт.)'
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
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 27
              LastCol = 27
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 28
              LastCol = 28
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 29
              LastCol = 29
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 30
              LastCol = 30
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 31
              LastCol = 31
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 32
              LastCol = 32
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 33
              LastCol = 33
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 34
              LastCol = 34
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 35
              LastCol = 35
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 36
              LastCol = 36
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 37
              LastCol = 37
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 38
              LastCol = 38
              Caption = 'Исп. операции 405 формы'
            end
            item
              FirstCol = 39
              LastCol = 39
              Caption = 'Номинал'
            end
            item
              FirstCol = 40
              LastCol = 40
              Caption = 'Размер эмиссии (тыс.шт.)'
            end
            item
              FirstCol = 41
              LastCol = 41
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 42
              LastCol = 42
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 43
              LastCol = 43
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 44
              LastCol = 44
              Caption = 'Кол.ц.б. (тыс.шт.)'
            end
            item
              FirstCol = 45
              LastCol = 45
              Caption = 'Рын.ст. (млн.$)'
            end
            item
              FirstCol = 46
              LastCol = 46
              Caption = 'Ном.ст. (млн.$)'
            end
            item
              FirstCol = 47
              LastCol = 47
              Caption = 'от р. э. (тыс.шт.)'
            end
            item
              FirstCol = 48
              LastCol = 48
              Caption = 'от 711 (тыс.шт.)'
            end
            item
              FirstCol = 49
              LastCol = 49
              Caption = 'Фин. посредник'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '1'
          Width = 67
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
          FieldName = 'T095_FLAG_PREV'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '4.0'
          Width = 53
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'T031_NOMINAL_PREV'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '4.1'
          Width = 55
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'T098_EMISSION_SIZE_PREV'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '4.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'PREV_COUNT_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.0'
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'PREV_MARKET_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.1'
          Visible = False
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'PREV_NOMINAL_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '5.2'
          Visible = False
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'PREV_COUNT_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '6.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'PREV_MARKET_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '6.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'PREV_NOMINAL_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '6.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'DELTA_CNT_PREV'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '7.0'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'DELTA_CNT_711_PREV'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '7.1'
          Width = 48
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'T031_NOMINAL_MID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '8.0'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUARTAL_PRICE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '8'
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '9.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '9.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '9.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'OTH_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'OTH_MARKET_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'OTH_NOMINAL_SALDO_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '10.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_SALDO_405'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_SALDO_405'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_SALDO_405'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'T105_COUNT_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'T105_USD_SUM_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.4'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'T105_USD_NOM_SALDO'
          PickList.Strings = ()
          Title.Caption = '11.5'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '12.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '12.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_SALDO'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '12.2'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_ALL_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_ALL_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.2'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_BUM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.3'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_BUM_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.4'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'USD_SUM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.5'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'USD_SUM_NOM_PEREOC'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '11.3.6'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T095_FLAG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '13.0'
          Width = 53
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '13.1'
          Width = 55
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'T098_EMISSION_SIZE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '13.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '14.0'
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '14.1'
          Visible = False
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_REMAIN_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '14.2'
          Visible = False
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'COUNT_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '15.0'
          Width = 48
          Visible = True
        end
        item
          Color = 10092543
          Expanded = False
          FieldName = 'MARKET_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '15.1'
          Visible = True
        end
        item
          Color = 16777164
          Expanded = False
          FieldName = 'NOMINAL_REMAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '15.2'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'DELTA_CNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '16.0'
          Width = 48
          Visible = True
        end
        item
          Color = 13434828
          Expanded = False
          FieldName = 'DELTA_CNT_711'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '16.1'
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FI_PB_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '17.0'
          Width = 62
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 1281
      TabOrder = 3
      inherited Panel1: TPanel
        Left = 1254
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 1281
      TabOrder = 4
      inherited Panel1: TPanel
        Left = 1254
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 23
      Width = 1281
      Height = 23
      ButtonWidth = 152
      Caption = 'ToolBar3'
      EdgeBorders = []
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 2
      Wrapable = False
      object ToolButton15: TToolButton
        Left = 0
        Top = 0
        Action = actShowHistory
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 86
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton16: TToolButton
        Left = 94
        Top = 0
        Action = actRecalc
        AutoSize = True
      end
      object ToolButton14: TToolButton
        Left = 190
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 198
        Top = 0
        Action = actShowMarket
        AutoSize = True
        Visible = False
      end
      object ToolButton12: TToolButton
        Left = 290
        Top = 0
        Action = actShowNom
        AutoSize = True
        Visible = False
      end
      object ToolButton20: TToolButton
        Left = 383
        Top = 0
        Action = actCheckColumn
        AutoSize = True
        PopupMenu = pmCheckColumn
      end
    end
  end
  inherited Panel1: TPanel
    Top = 325
    Width = 1284
    Height = 377
    inherited pc01: TPageControl
      Width = 1282
      Height = 375
      ActivePage = TabSheet1
      inherited ts01: TTabSheet
        Caption = 'Изменения по счетам 711 формы'
      end
      object TabSheet1: TTabSheet
        Caption = 'Операции по форме 405'
        ImageIndex = 1
      end
      object TabSheet2: TTabSheet
        Caption = 'Прочие операции'
        ImageIndex = 2
      end
      object TabSheet3: TTabSheet
        Caption = 'Прочие изменения'
        ImageIndex = 3
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 735
    Width = 1284
  end
  inherited pnlButtons: TPanel
    Top = 702
    Width = 1284
    inherited OKBtn: TButton
      Left = 1936
    end
    inherited CancelBtn: TButton
      Left = 2016
    end
  end
  inherited dsList: TDataSource
    OnDataChange = dsListDataChange
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
    inherited actShowDetail: TAction
      Caption = 'Детализация'
      Checked = False
      Hint = 'Показать/скрыть подробную информацию '
    end
    object actForm405: TAction
      Caption = '405 форма'
      Hint = 'Взять данные из 405 формы'
      OnExecute = actForm405Execute
      OnUpdate = actForm405Update
    end
    object actForm711: TAction
      Caption = '711 форма'
      Hint = 'Взять данные из 711 формы'
      OnExecute = actForm711Execute
      OnUpdate = actForm711Update
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
    object actShowHistory: TAction
      Caption = 'История ...'
      ImageIndex = 40
      OnExecute = actShowHistoryExecute
      OnUpdate = actShowHistoryUpdate
    end
    object actRecalc: TAction
      Caption = 'Пересчитать'
      ImageIndex = 28
      OnExecute = actRecalcExecute
      OnUpdate = actRecalcUpdate
    end
    object actCheckColumn: TAction
      Caption = 'Настройки отображения'
      Hint = 'Выбрать настройки отображения колонок'
      OnExecute = actCheckColumnExecute
      OnUpdate = actCheckColumnUpdate
    end
    object actShowEmissionSize: TAction
      Caption = 'actShowEmissionSize'
      OnExecute = actShowEmissionSizeExecute
    end
    object actShowDelta: TAction
      Caption = 'actShowDelta'
      OnExecute = actShowDeltaExecute
    end
    object actShowFinP: TAction
      Caption = 'actShowFinP'
      OnExecute = actShowFinPExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT t030_id,'
      '       t026_id,'
      '       t026_sec_regn,'
      '       t027_id,'
      '       t028_id,'
      '       t028_shot_name,'
      '       t028_inn,'
      '       FI_PB_TYPE,'
      '       t031_nominal,'
      '       prev_count_remain_711, prev_market_remain_711,'
      
        '       prev_nominal_remain_711, prev_count_remain, prev_market_r' +
        'emain,'
      
        '       prev_nominal_remain, quartal_price, count_saldo_711, mark' +
        'et_saldo_711,'
      '       nominal_saldo_711, oth_saldo_711, oth_market_saldo_711,'
      '       oth_nominal_saldo_711, count_saldo_405, market_saldo_405,'
      
        '       nominal_saldo_405, count_saldo, market_saldo, nominal_sal' +
        'do,'
      '       t105_count_saldo, t105_usd_sum_saldo, t105_usd_nom_saldo,'
      
        '       usd_all_pereoc, usd_bum_pereoc, usd_sum_pereoc, usd_all_n' +
        'om_pereoc,'
      '       usd_bum_nom_pereoc, usd_sum_nom_pereoc, count_remain_711,'
      
        '       market_remain_711, nominal_remain_711, count_remain, mark' +
        'et_remain,'
      
        '       nominal_remain, T095_FLAG_PREV,t095_flag, t098_emission_s' +
        'ize, delta_cnt,'
      
        '       t031_nominal_prev, t031_nominal_mid,t098_emission_size_pr' +
        'ev,delta_cnt_prev,'
      '       delta_cnt_711_prev, DELTA_CNT_711'
      '  FROM v_405_calc_remains_tab_101'
      ' WHERE t027_id = :t027_id'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000003500000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F494401000000000007000000543032385F4944010000
      0000000E000000543032385F53484F545F4E414D450100000000000C00000054
      3033315F4E4F4D494E414C01000000000015000000505245565F434F554E545F
      52454D41494E5F37313101000000000016000000505245565F4D41524B45545F
      52454D41494E5F37313101000000000017000000505245565F4E4F4D494E414C
      5F52454D41494E5F37313101000000000011000000505245565F434F554E545F
      52454D41494E01000000000012000000505245565F4D41524B45545F52454D41
      494E01000000000013000000505245565F4E4F4D494E414C5F52454D41494E01
      00000000000D0000005155415254414C5F50524943450100000000000F000000
      434F554E545F53414C444F5F373131010000000000100000004D41524B45545F
      53414C444F5F373131010000000000110000004E4F4D494E414C5F53414C444F
      5F3731310100000000000D0000004F54485F53414C444F5F3731310100000000
      00140000004F54485F4D41524B45545F53414C444F5F37313101000000000015
      0000004F54485F4E4F4D494E414C5F53414C444F5F3731310100000000000F00
      0000434F554E545F53414C444F5F343035010000000000100000004D41524B45
      545F53414C444F5F343035010000000000110000004E4F4D494E414C5F53414C
      444F5F3430350100000000000B000000434F554E545F53414C444F0100000000
      000C0000004D41524B45545F53414C444F0100000000000D0000004E4F4D494E
      414C5F53414C444F01000000000010000000434F554E545F52454D41494E5F37
      3131010000000000110000004D41524B45545F52454D41494E5F373131010000
      000000120000004E4F4D494E414C5F52454D41494E5F3731310100000000000C
      000000434F554E545F52454D41494E0100000000000D0000004D41524B45545F
      52454D41494E0100000000000E0000004E4F4D494E414C5F52454D41494E0100
      0000000009000000543039355F464C414701000000000010000000543130355F
      434F554E545F53414C444F01000000000012000000543130355F5553445F5355
      4D5F53414C444F01000000000012000000543130355F5553445F4E4F4D5F5341
      4C444F0100000000000E0000005553445F414C4C5F504552454F430100000000
      000E0000005553445F42554D5F504552454F430100000000000E000000555344
      5F53554D5F504552454F43010000000000120000005553445F414C4C5F4E4F4D
      5F504552454F43010000000000120000005553445F42554D5F4E4F4D5F504552
      454F43010000000000120000005553445F53554D5F4E4F4D5F504552454F4301
      000000000012000000543039385F454D495353494F4E5F53495A450100000000
      000900000044454C54415F434E5401000000000008000000543032385F494E4E
      0100000000000E000000543039355F464C41475F505245560100000000001100
      0000543033315F4E4F4D494E414C5F5052455601000000000010000000543033
      315F4E4F4D494E414C5F4D494401000000000017000000543039385F454D4953
      53494F4E5F53495A455F505245560100000000000E00000044454C54415F434E
      545F505245560100000000001200000044454C54415F434E545F3731315F5052
      45560100000000000D00000044454C54415F434E545F3731310100000000000A
      00000046495F50425F54595045010000000000}
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
    object odsListT095_FLAG_PREV: TStringField
      FieldName = 'T095_FLAG_PREV'
      Size = 1
    end
    object odsListPREV_COUNT_REMAIN_711: TFloatField
      FieldName = 'PREV_COUNT_REMAIN_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListPREV_MARKET_REMAIN_711: TFloatField
      FieldName = 'PREV_MARKET_REMAIN_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListPREV_NOMINAL_REMAIN_711: TFloatField
      FieldName = 'PREV_NOMINAL_REMAIN_711'
      DisplayFormat = '### ### ### ##0.0'
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
    object odsListCOUNT_SALDO_711: TFloatField
      FieldName = 'COUNT_SALDO_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMARKET_SALDO_711: TFloatField
      FieldName = 'MARKET_SALDO_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOMINAL_SALDO_711: TFloatField
      FieldName = 'NOMINAL_SALDO_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListOTH_SALDO_711: TFloatField
      FieldName = 'OTH_SALDO_711'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOTH_MARKET_SALDO_711: TFloatField
      FieldName = 'OTH_MARKET_SALDO_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListOTH_NOMINAL_SALDO_711: TFloatField
      FieldName = 'OTH_NOMINAL_SALDO_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListCOUNT_SALDO_405: TFloatField
      FieldName = 'COUNT_SALDO_405'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMARKET_SALDO_405: TFloatField
      FieldName = 'MARKET_SALDO_405'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOMINAL_SALDO_405: TFloatField
      FieldName = 'NOMINAL_SALDO_405'
      DisplayFormat = '### ### ### ##0.0'
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
    object odsListCOUNT_REMAIN_711: TFloatField
      FieldName = 'COUNT_REMAIN_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListMARKET_REMAIN_711: TFloatField
      FieldName = 'MARKET_REMAIN_711'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOMINAL_REMAIN_711: TFloatField
      FieldName = 'NOMINAL_REMAIN_711'
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
    object odsListT105_COUNT_SALDO: TFloatField
      FieldName = 'T105_COUNT_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT105_USD_SUM_SALDO: TFloatField
      FieldName = 'T105_USD_SUM_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT105_USD_NOM_SALDO: TFloatField
      FieldName = 'T105_USD_NOM_SALDO'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT098_EMISSION_SIZE: TFloatField
      FieldName = 'T098_EMISSION_SIZE'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListDELTA_CNT: TFloatField
      FieldName = 'DELTA_CNT'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT031_NOMINAL_PREV: TFloatField
      FieldName = 'T031_NOMINAL_PREV'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT031_NOMINAL_MID: TFloatField
      FieldName = 'T031_NOMINAL_MID'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT098_EMISSION_SIZE_PREV: TFloatField
      FieldName = 'T098_EMISSION_SIZE_PREV'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListDELTA_CNT_PREV: TFloatField
      FieldName = 'DELTA_CNT_PREV'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListDELTA_CNT_711_PREV: TFloatField
      FieldName = 'DELTA_CNT_711_PREV'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListDELTA_CNT_711: TFloatField
      FieldName = 'DELTA_CNT_711'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListFI_PB_TYPE: TStringField
      FieldName = 'FI_PB_TYPE'
      Size = 5
    end
  end
  inherited oqAdd: TOracleQuery
    Top = 240
  end
  inherited oqUpdate: TOracleQuery
    Top = 240
  end
  inherited oqDelete: TOracleQuery
    Top = 240
  end
  inherited oqDupl: TOracleQuery
    Top = 240
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
  object oqFlag: TOracleQuery
    SQL.Strings = (
      'begin'
      
        #9'Pk_405_Calc_Remains.p_set_flag(:T055_ID, :T027_ID, :T030_ID, :T' +
        '095_FLAG);'
      'end; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543035355F4944040000000000000000000000
      080000003A543033305F49440400000000000000000000000A0000003A543039
      355F464C4147050000000000000000000000080000003A543032375F49440400
      00000000000000000000}
    Left = 328
    Top = 240
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
  object oqRecalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Calc_Remains.p_recalc_remains (:I_T055_ID, :I_T030_ID);'
      'END;  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543035355F494404000000000000000000
      00000A0000003A495F543033305F4944040000000000000000000000}
    Left = 328
    Top = 296
  end
  object oq1st2ndRecalc: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_CALC_REMAINS.P_1ST_2ND_RECALC;'
      'end;')
    Session = dmMain.OracleSession
    Left = 760
    Top = 360
  end
  object pmCheckColumn: TPopupMenu
    AutoPopup = False
    Images = dm02_Picters.ilCommonPictures
    TrackButton = tbLeftButton
    Left = 536
    Top = 24
    object H1: TMenuItem
      Caption = 'Размер эмиссий'
      ImageIndex = 22
      OnClick = H1Click
    end
    object N16: TMenuItem
      Caption = 'Отклонения'
      ImageIndex = 22
      OnClick = N16Click
    end
    object N17: TMenuItem
      Caption = 'Рын. стоимость'
      ImageIndex = 23
      OnClick = N17Click
    end
    object N18: TMenuItem
      Caption = 'Ном. стоимость'
      ImageIndex = 23
      OnClick = N18Click
    end
    object N19: TMenuItem
      Caption = 'Фин. посредник ПБ'
      ImageIndex = 23
      OnClick = N19Click
    end
  end
end
