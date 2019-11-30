inherited frm31_EmisInfList: Tfrm31_EmisInfList
  Left = 10
  Top = 241
  Width = 993
  Height = 694
  Caption = 'Реестр эмиссий'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 385
    Width = 985
  end
  inherited spRight: TSplitter
    Left = 982
    Height = 385
  end
  inherited paRight: TPanel
    Left = 985
    Height = 385
  end
  inherited paMain: TPanel
    Width = 982
    Height = 385
    inherited ToolBar2: TToolBar
      Top = 126
      Width = 982
      Height = 22
      AutoSize = True
      inherited ToolButton7: TToolButton
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 675
        Top = 0
        Hint = 'Пересчитать суммы купонов'
        AutoSize = True
        ImageIndex = 44
        OnClick = ToolButton10Click
      end
      object ToolButton6: TToolButton
        Left = 709
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 717
        Top = 0
        Action = actClearSelect
        AutoSize = True
        Enabled = False
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 804
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 20
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 812
        Top = 0
        AutoSize = True
        Caption = 'Котировки...'
        DropdownMenu = MenuLoadRates
        ImageIndex = 19
        PopupMenu = MenuLoadRates
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 169
      Width = 982
      Height = 216
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН эмитента'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_COUNTRY_ID'
          PickList.Strings = ()
          Title.Caption = 'Страна эмитента'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T031_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата окончания'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'Код ISIN'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Вид ц.б.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Caption = 'Номинал'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_REG_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата регистрации'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T024_NAME'
          PickList.Strings = ()
          Title.Caption = 'Способ размещения'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T023_NAME'
          PickList.Strings = ()
          Title.Caption = 'Состояние выплат'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_COUPON_PER'
          PickList.Strings = ()
          Title.Caption = 'Периодичность выплаты купона'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_DATE_ANNUL'
          PickList.Strings = ()
          Title.Caption = 'Дата аннулирования'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RATES_TYPE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Ставка'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CALC_METHOD_NAME'
          PickList.Strings = ()
          Title.Caption = 'Метод расчета'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_EXCHANGE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_AUTOLOAD'
          PickList.Strings = ()
          Title.Caption = 'Автозагрузка котировок'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа ценной бумаги'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_RECORD_TYPE'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 148
      Width = 982
      inherited Panel1: TPanel
        Left = 955
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 105
      Width = 982
      TabOrder = 4
      inherited Panel1: TPanel
        Left = 955
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 982
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object cbSecType: TCheckBox
        Left = 8
        Top = 6
        Width = 75
        Height = 17
        Caption = 'Тип ц.б.'
        TabOrder = 0
        OnClick = cbSecTypeClick
      end
      object btnRefresh: TButton
        Left = 608
        Top = 6
        Width = 75
        Height = 25
        Action = actApplayFilter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbCode: TCheckBox
        Left = 408
        Top = 55
        Width = 57
        Height = 17
        Caption = 'Рег. №'
        TabOrder = 2
        OnClick = cbCodeClick
      end
      object edCode: TEdit
        Left = 464
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object cbIsin: TCheckBox
        Left = 224
        Top = 55
        Width = 53
        Height = 17
        Caption = 'ISIN'
        TabOrder = 4
        OnClick = cbIsinClick
      end
      object edISIN: TEdit
        Left = 272
        Top = 52
        Width = 120
        Height = 21
        TabOrder = 5
      end
      object cbIssuer: TCheckBox
        Left = 8
        Top = 31
        Width = 72
        Height = 17
        Caption = 'Эмитент'
        TabOrder = 6
        OnClick = chbIssuer1Click
      end
      object cbInn: TCheckBox
        Left = 8
        Top = 55
        Width = 57
        Height = 17
        Caption = 'ИНН'
        TabOrder = 7
        OnClick = cbInnClick
      end
      object lcbSecType: TxxxDBLookupCheckCombo
        Left = 88
        Top = 3
        Width = 500
        Height = 21
        DropDownCount = 16
        DisplayAllFields = True
        LookupField = 'T027_ID'
        LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
        LookupSource = dsSecType
        TabOrder = 8
        OnCloseUp = lcbSecTypeCloseUp
        OnKeyDown = lcSecTypeKeyDown
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object edINN: TEdit
        Left = 88
        Top = 52
        Width = 120
        Height = 21
        TabOrder = 9
      end
      object lcbIssuers: TRxDBLookupCombo
        Left = 88
        Top = 28
        Width = 500
        Height = 21
        DropDownCount = 24
        LookupField = 'T028_ID'
        LookupDisplay = 'T028_SHOT_NAME_DESC'
        LookupSource = dsIssuers
        TabOrder = 10
      end
      object cbEditions: TCheckBox
        Left = 8
        Top = 80
        Width = 201
        Height = 17
        Caption = 'Показывать выпуски акций'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
    end
  end
  inherited Panel1: TPanel
    Top = 388
    Width = 985
    Height = 220
    inherited pc01: TPageControl
      Width = 983
      Height = 218
      inherited ts01: TTabSheet
        Caption = 'График выплаты купонов по ценной бумаге'
      end
      object TabSheet1: TTabSheet
        Caption = 'Матрица погашения'
        ImageIndex = 1
      end
      object TabSheet2: TTabSheet
        Caption = 'Размер эмиссии'
        ImageIndex = 2
      end
      object TabSheet3: TTabSheet
        Caption = 'НКД'
        ImageIndex = 3
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 641
    Width = 985
  end
  inherited pnlButtons: TPanel
    Top = 608
    Width = 985
    inherited OKBtn: TButton
      Left = 827
    end
    inherited CancelBtn: TButton
      Left = 907
    end
  end
  inherited dsList: TDataSource
    Left = 112
    Top = 243
  end
  inherited ActionList: TActionList
    Left = 296
    Top = 243
    inherited actShowDetail: TAction
      Caption = 'Купоны...'
      Hint = 'Показать/скрыть График выплаты купонов по ценной бумаге'
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
    end
    object actClearSelect: TAction
      Caption = 'Исключить'
      Hint = 'Исключить'
      ImageIndex = 19
      OnExecute = actClearSelectExecute
    end
    object actFilterByIssName: TAction
      Caption = 'Фильтр'
      OnExecute = actFilterByIssNameExecute
    end
    object actRatesLoadCurrent: TAction
      Caption = 'Загрузить текущую'
      ImageIndex = 19
      OnExecute = actRatesLoadCurrentExecute
      OnUpdate = actRatesLoadCurrentUpdate
    end
    object actRatesLoadSelected: TAction
      Caption = 'Загрузить выделенные'
      ImageIndex = 19
      OnExecute = actRatesLoadSelectedExecute
      OnUpdate = actRatesLoadSelectedUpdate
    end
    object actRatesLoadAll: TAction
      Caption = 'Загрузить все'
      ImageIndex = 19
      OnExecute = actRatesLoadAllExecute
      OnUpdate = actRatesLoadAllUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 296
    Top = 275
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST_ROWS */'
      '        T031_ID,'
      '        T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T030_TYPE,'
      '        T030_TYPE_DESC,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T025_SHOT_NAME,'
      '        T028_CODE,'
      '        T028_INN,'
      '        T028_COUNTRY_ID,'
      '        T031_REG_DATE,'
      '        T010_ISIN_TRANSL,'
      '        T024_ID,'
      '        T024_NAME,'
      '        T023_ID,'
      '        T023_NAME,'
      '        T031_START_DATE,'
      '        T031_END_DATE,'
      '        T031_CURRENCY,'
      '        T031_NOMINAL,'
      #9'T031_COUPON_PER,'
      #9'T031_DATE_ANNUL,'
      #9'T031_RATES_TYPE,'
      #9'T031_RATES_TYPE_NAME,'
      #9'T031_CALC_METHOD,'
      #9'T031_CALC_METHOD_NAME,'
      '       T031_CALC_DATE_TYPE,'
      '       T031_COUPON_PERIOD,'
      '       T167_NAME,'
      '       T167_EXCHANGE,'
      '       T031_AUTOLOAD,'
      '       T030_RECORD_TYPE,'
      '       T010_ID'
      'FROM   V_405_EMISSION_INF'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000002500000007000000543033315F494401000000000007000000543033
      305F49440100000000000D000000543033315F5245475F444154450100000000
      0007000000543032345F494401000000000007000000543032335F4944010000
      0000000F000000543033315F53544152545F444154450100000000000D000000
      543033315F454E445F444154450100000000000D000000543033315F43555252
      454E43590100000000000C000000543033315F4E4F4D494E414C010000000000
      09000000543032345F4E414D4501000000000009000000543032335F4E414D45
      0100000000000D000000543032365F5345435F5245474E0100000000000D0000
      00543032375F5345435F545950450100000000000E000000543032385F53484F
      545F4E414D450100000000000E000000543032355F53484F545F4E414D450100
      0000000007000000543032365F494401000000000007000000543032375F4944
      01000000000007000000543032385F49440100000000000F000000543033315F
      434F55504F4E5F5045520100000000000F000000543033315F444154455F414E
      4E554C0100000000000F000000543033315F52415445535F5459504501000000
      000014000000543033315F52415445535F545950455F4E414D45010000000000
      12000000543033315F434F55504F4E5F504552494F4401000000000013000000
      543033315F43414C435F444154455F5459504501000000000010000000543033
      315F43414C435F4D4554484F4401000000000015000000543033315F43414C43
      5F4D4554484F445F4E414D4501000000000009000000543033305F5459504501
      00000000000E000000543033305F545950455F44455343010000000000080000
      00543032385F494E4E0100000000000F000000543032385F434F554E5452595F
      494401000000000009000000543032385F434F44450100000000000900000054
      3136375F4E414D450100000000000D000000543136375F45584348414E474501
      00000000000D000000543033315F4155544F4C4F414401000000000010000000
      543033305F5245434F52445F5459504501000000000007000000543031305F49
      4401000000000010000000543031305F4953494E5F5452414E534C0100000000
      00}
    AfterInsert = odsListAfterInsert
    AfterScroll = odsListAfterScroll
    Left = 80
    Top = 243
    object odsListT031_ID: TFloatField
      FieldName = 'T031_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT031_REG_DATE: TDateTimeField
      FieldName = 'T031_REG_DATE'
    end
    object odsListT024_ID: TFloatField
      FieldName = 'T024_ID'
    end
    object odsListT024_NAME: TStringField
      FieldName = 'T024_NAME'
      Required = True
      Size = 255
    end
    object odsListT023_ID: TFloatField
      FieldName = 'T023_ID'
    end
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Required = True
      Size = 255
    end
    object odsListT031_START_DATE: TDateTimeField
      FieldName = 'T031_START_DATE'
    end
    object odsListT031_END_DATE: TDateTimeField
      FieldName = 'T031_END_DATE'
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.000'
      EditFormat = '0.000'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT030_TYPE_DESC: TStringField
      FieldName = 'T030_TYPE_DESC'
      Size = 13
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT030_TYPE: TStringField
      FieldName = 'T030_TYPE'
      Required = True
      Size = 1
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT031_COUPON_PER: TFloatField
      FieldName = 'T031_COUPON_PER'
    end
    object odsListT031_DATE_ANNUL: TDateTimeField
      FieldName = 'T031_DATE_ANNUL'
    end
    object odsListT031_RATES_TYPE: TIntegerField
      FieldName = 'T031_RATES_TYPE'
    end
    object odsListT031_RATES_TYPE_NAME: TStringField
      DisplayWidth = 16
      FieldName = 'T031_RATES_TYPE_NAME'
      Size = 16
    end
    object odsListT031_CALC_METHOD: TIntegerField
      FieldName = 'T031_CALC_METHOD'
    end
    object odsListT031_CALC_METHOD_NAME: TStringField
      FieldName = 'T031_CALC_METHOD_NAME'
      Size = 18
    end
    object odsListT031_CALC_DATE_TYPE: TIntegerField
      FieldName = 'T031_CALC_DATE_TYPE'
    end
    object odsListT031_COUPON_PERIOD: TFloatField
      FieldName = 'T031_COUPON_PERIOD'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Required = True
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT167_NAME: TStringField
      FieldName = 'T167_NAME'
      Size = 50
    end
    object odsListT167_EXCHANGE: TStringField
      FieldName = 'T167_EXCHANGE'
      Size = 50
    end
    object odsListT030_RECORD_TYPE: TIntegerField
      FieldName = 'T030_RECORD_TYPE'
      Required = True
    end
    object odsListT031_AUTOLOAD: TIntegerField
      FieldName = 'T031_AUTOLOAD'
    end
    object odsListT010_ID: TFloatField
      FieldName = 'T010_ID'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
  inherited pkList: TOraclePackage
    Left = 168
    Top = 275
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_inf_add('
      '    :T030_ID,'
      '    :T026_ID,'
      '    :T027_ID,'
      '    :T028_ID,'
      '    :T030_TYPE,'
      '    :T031_REG_DATE,'
      '    :T010_ISIN_SOURCE,'
      '    :T024_ID,'
      '    :T023_ID,'
      '    :T031_CURRENCY,'
      '    :T031_NOMINAL,'
      '    :T031_COUPON_PER,'
      '    :T031_DATE_ANNUL,'
      '    :T126_RATES_TYPE,'
      '    :T126_CALC_DATE_TYPE,'
      '    :T126_CALC_METHOD,'
      '    :T167_NAME,'
      '    :T167_EXCHANGE,'
      '    :T031_AUTOLOAD'
      '    );'
      'END;'
      ''
      ' '
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000013000000080000003A543033305F4944040000000000000000000000
      0E0000003A543033315F5245475F444154450C00000000000000000000000800
      00003A543032345F4944040000000000000000000000080000003A543032335F
      49440400000000000000000000000E0000003A543033315F43555252454E4359
      0400000000000000000000000D0000003A543033315F4E4F4D494E414C040000
      000000000000000000080000003A543032365F49440400000000000000000000
      00080000003A543032375F4944040000000000000000000000080000003A5430
      32385F4944040000000000000000000000100000003A543033315F434F55504F
      4E5F504552040000000000000000000000100000003A543033315F444154455F
      414E4E554C0C00000000000000000000000A0000003A543033305F5459504505
      0000000000000000000000100000003A543132365F52415445535F5459504504
      0000000000000000000000140000003A543132365F43414C435F444154455F54
      595045040000000000000000000000110000003A543132365F43414C435F4D45
      54484F440400000000000000000000000A0000003A543136375F4E414D450500
      000000000000000000000E0000003A543136375F45584348414E474505000000
      00000000000000000E0000003A543033315F4155544F4C4F4144040000000000
      000000000000110000003A543031305F4953494E5F534F555243450500000000
      00000000000000}
    Left = 96
    Top = 312
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_inf_update('
      '    :T030_ID,'
      '    :T026_ID,'
      '    :T027_ID,'
      '    :T028_ID,'
      '    :T030_TYPE,'
      '    :T031_REG_DATE,'
      '    :T010_ISIN_SOURCE,'
      '    :T024_ID,'
      '    :T023_ID,'
      '    :T031_CURRENCY,'
      '    :T031_NOMINAL,'
      '    :T031_COUPON_PER,'
      '    :T031_DATE_ANNUL,'
      '    :T126_RATES_TYPE,'
      '    :T126_CALC_DATE_TYPE,'
      '    :T126_CALC_METHOD,'
      '    :T167_NAME,'
      '    :T167_EXCHANGE,'
      '    :T031_AUTOLOAD'
      '    );'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000013000000080000003A543033305F4944040000000000000000000000
      0E0000003A543033315F5245475F444154450C00000000000000000000000800
      00003A543032345F4944040000000000000000000000080000003A543032335F
      49440400000000000000000000000E0000003A543033315F43555252454E4359
      0400000000000000000000000D0000003A543033315F4E4F4D494E414C040000
      000000000000000000080000003A543032365F49440400000000000000000000
      00080000003A543032375F4944040000000000000000000000080000003A5430
      32385F4944040000000000000000000000100000003A543033315F434F55504F
      4E5F504552040000000000000000000000100000003A543033315F444154455F
      414E4E554C0C00000000000000000000000A0000003A543033305F5459504505
      0000000000000000000000100000003A543132365F52415445535F5459504504
      0000000000000000000000140000003A543132365F43414C435F444154455F54
      595045040000000000000000000000110000003A543132365F43414C435F4D45
      54484F440400000000000000000000000A0000003A543136375F4E414D450500
      000000000000000000000E0000003A543136375F45584348414E474505000000
      00000000000000000E0000003A543033315F4155544F4C4F4144040000000000
      000000000000110000003A543031305F4953494E5F534F555243450500000000
      00000000000000}
    Left = 136
    Top = 312
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_delete(:T030_ID);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 176
    Top = 312
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T010_ID := :T010_ID;'
      '  :o_result := Pk_405_Emissions.f_emission_check(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000006000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      000000000000000000080000003A543033305F49440400000000000000000000
      00080000003A543031305F4944040000000000000000000000}
    Left = 216
    Top = 312
  end
  inherited pmFilter: TPopupMenu
    Left = 848
    Top = 136
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      'SELECT   T028_ID,'
      '         T028_SHOT_NAME_DESC'
      'FROM     V_405_ISSUER_MAIN_LOOKUP'
      '--WHERE  UPPER(T028_SHOT_NAME) LIKE UPPER(:T028_SHOT_NAME)'
      'ORDER BY UPPER (T028_SHOT_NAME)')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F494401000000000013000000543032
      385F53484F545F4E414D455F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 24
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME_DESC: TStringField
      FieldName = 'T028_SHOT_NAME_DESC'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 176
    Top = 24
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      #9'T027_SEC_TYPE,'
      '       T027_COMMENTS'
      'FROM V_405_SEC_TYPE_MAIN_1'
      'ORDER BY T027_SEC_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    Session = dmMain.OracleSession
    Left = 248
    Top = 8
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 280
    Top = 8
  end
  object oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_clear_emission_main(:i_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
    Left = 332
    Top = 208
  end
  object oqDeleteCoupons: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Coupons.p_delete_coupons(:T030_ID);'
      'END;'
      ''
      ' '
      ''
      '  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 384
    Top = 207
  end
  object oqRecalcCoupons: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  pk_405_coupons.p_calc_coupons_all(:T030_ID, :NoWarn);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      070000003A4E4F5741524E040000000000000000000000}
    Left = 436
    Top = 208
  end
  object oqMMCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := pk_405_coupons.f_maturity_matrix_exists(:T030_ID);'
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A524553554C5404000000000000000000000008
      0000003A543033305F4944040000000000000000000000}
    Left = 632
    Top = 208
  end
  object oqSetCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Emissions.p_set_autoload(:T030_ID, :T031_AUTOLOAD);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0E0000003A543033315F4155544F4C4F4144040000000000000000000000}
    Left = 632
    Top = 248
  end
  object MenuLoadRates: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 840
    Top = 240
    object MenuItem1: TMenuItem
      Action = actRatesLoadCurrent
    end
    object MenuItem2: TMenuItem
      Action = actRatesLoadSelected
    end
    object MenuItem3: TMenuItem
      Action = actRatesLoadAll
    end
  end
  object oqCheckBlPipe: TOracleQuery
    SQL.Strings = (
      'select ACTIVE'
      'from  DPB_BL_PIPE.V_BL_PIPE_ACTIVE')
    Session = dmMain.OracleSession
    Left = 632
    Top = 288
  end
  object oqRequestRates: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_FOR_BL_PIPE.p_request_rates('
      '    :isin,'
      '    :ticker,'
      '    :exch_code,'
      '    :date_from,'
      '    :date_to,'
      '    :user'
      '    );'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000006000000050000003A55534552050000000000000000000000050000
      003A4953494E050000000000000000000000070000003A5449434B4552050000
      0000000000000000000A0000003A455843485F434F4445050000000000000000
      0000000A0000003A444154455F46524F4D0C0000000000000000000000080000
      003A444154455F544F0C0000000000000000000000}
    Left = 632
    Top = 328
  end
end
