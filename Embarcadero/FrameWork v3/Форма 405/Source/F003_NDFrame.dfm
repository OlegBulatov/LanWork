inherited F003_ND: TF003_ND
  Width = 791
  Height = 605
  inherited xxxDBGrid: TxxxDBGrid
    Top = 126
    Width = 791
    Height = 457
    AdvSettings.Indexes = <
      item
        FieldName = 'T028_SHOT_NAME'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 1
            LastCol = 4
            Caption = 'Эмитент'
          end
          item
            FirstCol = 5
            LastCol = 8
            Caption = 'Ценная бумага'
          end
          item
            FirstCol = 9
            LastCol = 12
            Caption = 'Кол-во ц.б. на конец периода'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отчетный  период'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ стр.'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SN015_SHORT_RUS_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_01'
        PickList.Strings = ()
        Title.Caption = 'На счетах владельцев-нерезидентов'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_02'
        PickList.Strings = ()
        Title.Caption = 
          'Ценных бумаг, переданных нерезидентами в доверительное управлени' +
          'е отчитывающейся организации'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_03'
        PickList.Strings = ()
        Title.Caption = 'Ценных бумаг на иных счетах нерезидентов'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_04'
        PickList.Strings = ()
        Title.Caption = 'Всего на счетах клиентов (депонентов)'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Файл'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T203_ID'
        PickList.Strings = ()
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
        FieldName = 'T030_PARENT_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T026_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T027_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 791
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Enabled = False
        Visible = False
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 25
    Width = 791
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object SpeedButton1: TSpeedButton
      Left = 310
      Top = 3
      Width = 75
      Height = 22
      Action = actRefresh
      Flat = True
    end
    inline F003_SecType1: TF003_SecType
      Left = 4
      Top = 28
      Width = 285
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 104
        Width = 182
      end
    end
    inline F003_File1: TF003_File
      Left = 4
      Top = 53
      Width = 285
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 104
        Width = 182
      end
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
    inline F003_Time1: TF003_Time
      Left = 4
      Top = 4
      Width = 285
      TabOrder = 2
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 104
        Width = 182
        OnCloseUp = F003_Time1lcbCloseUp
      end
      inherited cb: TCheckBox
        Enabled = True
      end
    end
    object cbRes: TCheckBox
      Left = 322
      Top = 55
      Width = 107
      Height = 17
      Caption = 'Считать итоги'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cbResClick
    end
  end
  object xxxTotal: TxxxDBGrid [3]
    Left = 0
    Top = 583
    Width = 791
    Height = 22
    Align = alBottom
    DataSource = dsTotal
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    AdvSettings.Guid = '{853642A2-D46A-4395-A1F6-7AEC7C5AE754}'
    AdvSettings.AutoFilter = False
    AdvSettings.Enabled = False
    AdvSettings.DesignMode = False
    AdvSettings.Indexes = <>
    AdvSettings.HeadersLines = <>
    AdvSettings.ColumnsAutoSize = False
    AdvSettings.LookUpField.Strings = (
      'Введите имена полей в формате KeyFieldName=ListFieldName')
    DragRows = False
    ShowVscroll = False
    FlatStyle = False
    Columns = <
      item
        Expanded = False
        FieldName = 'COUNT_STR'
        Title.Caption = 'Количество строк'
        Width = 573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_01'
        Title.Caption = 'На счетах владельцев-нерезидентов'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_02'
        Title.Caption = 
          'Ценных бумаг, переданных нерезидентами в доверительное управлени' +
          'е отчитывающейся организации'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_03'
        Title.Caption = 'Ценных бумаг на иных счетах нерезидентов'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_04'
        Title.Caption = 'Всего на счетах клиентов (депонентов)'
        Width = 110
        Visible = True
      end>
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 105
    Width = 791
    inherited Panel1: TPanel
      Left = 764
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  T203_ID,'
      '  T202_ID,'
      '  T203_CURRENCY,'
      '  T203_NOMINAL,'
      '  T203_COUNT_01,'
      '  T203_COUNT_02,'
      '  T203_COUNT_03,'
      '  T203_COUNT_04,'
      '  T203_ROW_NUM,'
      '  T030_ID,'
      '  T030_PARENT_ID,'
      '  T026_ID,'
      '  T026_SEC_REGN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  SN015_SHORT_RUS_NAME,'
      '  T202_FILE_NAME'
      'FROM V_405_ND_DATA'
      
        'WHERE ((:T055_ID_S = -1) AND (:T055_ID_E = -1)) OR (T055_ID BETW' +
        'EEN :T055_ID_S AND :T055_ID_E)'
      ' '
      ' ')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001700000007000000543230325F494401000000000007000000543033
      305F49440100000000000C000000543230335F524F575F4E554D010000000000
      0C000000543230335F4E4F4D494E414C0100000000000D000000543230335F43
      4F554E545F30310100000000000D000000543230335F434F554E545F30320100
      000000000D000000543230335F434F554E545F30330100000000000D00000054
      3230335F434F554E545F303401000000000007000000543230335F4944010000
      0000000D000000543230335F43555252454E43590100000000000E0000005430
      33305F504152454E545F494401000000000007000000543032365F4944010000
      0000000D000000543032365F5345435F5245474E010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      00000E000000543032385F53484F545F4E414D45010000000000080000005430
      32385F494E4E0100000000000F000000543032385F434F554E5452595F494401
      000000000014000000534E3031355F53484F52545F5255535F4E414D45010000
      0000000E000000543230325F46494C455F4E414D450100000000000700000054
      3032385F494401000000000007000000543035355F49440100000000000E0000
      00543035355F4C4F4E475F4E414D45010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT203_CURRENCY: TStringField
      FieldName = 'T203_CURRENCY'
      Size = 3
    end
    object odsListT203_NOMINAL: TFloatField
      FieldName = 'T203_NOMINAL'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT203_COUNT_01: TFloatField
      FieldName = 'T203_COUNT_01'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT203_COUNT_02: TFloatField
      FieldName = 'T203_COUNT_02'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT203_COUNT_03: TFloatField
      FieldName = 'T203_COUNT_03'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT203_COUNT_04: TFloatField
      FieldName = 'T203_COUNT_04'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT203_ROW_NUM: TFloatField
      FieldName = 'T203_ROW_NUM'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListSN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
    object odsListT202_FILE_NAME: TStringField
      FieldName = 'T202_FILE_NAME'
      Size = 500
    end
    object odsListT028_ID: TFloatField
      DisplayLabel = 'Код эмитента'
      FieldName = 'T028_ID'
      Visible = False
    end
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      
        '    SELECT '#39'Количество строк: '#39' || TO_CHAR(count(*)) AS COUNT_ST' +
        'R,'
      '           SUM(T203_COUNT_01) AS T203_COUNT_01,'
      '           SUM(T203_COUNT_02) AS T203_COUNT_02,'
      '           SUM(T203_COUNT_03) AS T203_COUNT_03,'
      '           SUM(T203_COUNT_04) AS T203_COUNT_04'
      '     FROM  V_405_ND_DATA'
      '-- WHERE T055_ID = :T055_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000500000009000000434F554E545F5354520100000000000D00000054
      3230335F434F554E545F30310100000000000D000000543230335F434F554E54
      5F30320100000000000D000000543230335F434F554E545F3033010000000000
      0D000000543230335F434F554E545F3034010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 328
    object odsTotalCOUNT_STR: TStringField
      FieldName = 'COUNT_STR'
      Size = 100
    end
    object odsTotalT203_COUNT_01: TFloatField
      FieldName = 'T203_COUNT_01'
      DisplayFormat = '### ### ### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsTotalT203_COUNT_02: TFloatField
      FieldName = 'T203_COUNT_02'
      DisplayFormat = '### ### ### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsTotalT203_COUNT_03: TFloatField
      FieldName = 'T203_COUNT_03'
      DisplayFormat = '### ### ### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsTotalT203_COUNT_04: TFloatField
      FieldName = 'T203_COUNT_04'
      DisplayFormat = '### ### ### ### ### ##0.0'
      EditFormat = '0.0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 248
    Top = 328
  end
  object oqPeriods: TOracleQuery
    SQL.Strings = (
      'declare'
      '  vT055_ID_S NUMBER;'
      '  vT055_ID_E NUMBER;'
      'begin'
      '  SELECT v1.T055_Q_ID,'
      '         v2.T055_Q_ID'
      '  INTO   vT055_ID_S,'
      '         vT055_ID_E'
      '  FROM   V_405_TIME v1,'
      '         V_405_TIME v2'
      '  WHERE  v1.T055_ID = :T055_ID_S_M'
      '  AND    v2.T055_ID = :T055_ID_E_M;'
      ''
      '  :T055_ID_S_Q := vT055_ID_S;'
      '  :T055_ID_E_Q := vT055_ID_E;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000C0000003A543035355F49445F535F4D0400000000000000
      000000000C0000003A543035355F49445F455F4D040000000000000000000000
      0C0000003A543035355F49445F535F510400000000000000000000000C000000
      3A543035355F49445F455F51040000000000000000000000}
    Left = 432
    Top = 272
  end
end
