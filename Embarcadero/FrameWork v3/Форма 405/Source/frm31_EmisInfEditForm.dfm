inherited frm31_EmisInfEdit: Tfrm31_EmisInfEdit
  Left = 399
  Top = 259
  Action = actCheckFormState
  ClientHeight = 547
  ClientWidth = 517
  OnClick = actCheckFormStateExecute
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 514
    Width = 517
    inherited Panel3: TPanel
      Left = 352
    end
  end
  object gb1: TGroupBox [1]
    Left = 8
    Top = 261
    Width = 501
    Height = 71
    Caption = ' Купоны '
    TabOrder = 1
    object Label6: TLabel
      Left = 12
      Top = 20
      Width = 36
      Height = 13
      Hint = 'Способ начисления'#13#10'процентов'
      Caption = 'Ставка'
      ParentShowHint = False
      ShowHint = True
    end
    object Label7: TLabel
      Left = 12
      Top = 45
      Width = 75
      Height = 13
      Caption = 'Метод расчета'
    end
    object Label1: TLabel
      Left = 253
      Top = 45
      Width = 67
      Height = 13
      Hint = 'Периодичность '#13#10'выплат купона'
      Caption = 'Выплат в год'
      ParentShowHint = False
      ShowHint = True
    end
    object Label14: TLabel
      Tag = 1
      Left = 253
      Top = 20
      Width = 67
      Height = 13
      Caption = 'Плав. ставка'
      Enabled = False
    end
    object lcb07: TDBLookupComboBox
      Left = 102
      Top = 16
      Width = 137
      Height = 21
      DataField = 'T031_RATES_TYPE'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'TYPE_ID'
      ListField = 'TYPE_NAME'
      ListSource = ds07
      TabOrder = 0
    end
    object lcb08: TDBLookupComboBox
      Left = 102
      Top = 42
      Width = 137
      Height = 21
      DataField = 'T031_CALC_METHOD'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'TYPE_ID'
      ListField = 'TYPE_NAME'
      ListSource = ds08
      TabOrder = 1
    end
    object ed02: TDBEdit
      Left = 348
      Top = 42
      Width = 137
      Height = 21
      Hint = 'Периодичность '#13#10'выплат купона'
      DataField = 'T031_COUPON_PER'
      DataSource = frm31_EmisInfList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cb01: TComboBox
      Tag = 1
      Left = 348
      Top = 16
      Width = 137
      Height = 21
      Style = csDropDownList
      Color = clBtnFace
      Enabled = False
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object gb2: TGroupBox [2]
    Left = 8
    Top = 6
    Width = 501
    Height = 252
    Caption = ' Общая информация '
    TabOrder = 2
    object Label2: TLabel
      Left = 14
      Top = 124
      Width = 65
      Height = 13
      Caption = 'Регистрация'
    end
    object Label8: TLabel
      Left = 253
      Top = 124
      Width = 85
      Height = 13
      Caption = 'Дата аннулиров.'
    end
    object Label3: TLabel
      Left = 14
      Top = 150
      Width = 70
      Height = 13
      Caption = 'Код ц.б. (ISIN)'
    end
    object Label9: TLabel
      Left = 253
      Top = 150
      Width = 38
      Height = 13
      Caption = 'Валюта'
    end
    object Label4: TLabel
      Left = 14
      Top = 200
      Width = 66
      Height = 13
      Hint = 'Способ'#13#10'размещения'
      Caption = 'Размещение'
      ParentShowHint = False
      ShowHint = True
    end
    object Label5: TLabel
      Left = 14
      Top = 226
      Width = 67
      Height = 13
      Hint = 'Состояние'#13#10'выплат'
      Caption = 'Сост. выплат'
    end
    object Label10: TLabel
      Left = 14
      Top = 175
      Width = 46
      Height = 13
      Caption = 'Номинал'
    end
    object Label11: TLabel
      Left = 253
      Top = 49
      Width = 40
      Height = 13
      Caption = 'Вид ц.б.'
    end
    inline fm06_Regn: Tfm06_Regn
      Left = 5
      Top = 21
      Width = 484
      inherited lcbSelect: TDBLookupComboBox
        Width = 385
        DataField = 'T026_ID'
      end
    end
    inline fm08_SecType: Tfm08_SecType
      Left = 5
      Top = 46
      Width = 236
      TabOrder = 1
      inherited lcbSelect: TDBLookupComboBox
        Width = 137
        DataField = 'T027_ID'
        OnCloseUp = fm08_SecTypelcbSelectCloseUp
      end
    end
    inline fm09_Issuer: Tfm09_Issuer
      Left = 5
      Top = 72
      Width = 484
      TabOrder = 2
      inherited Label2: TLabel
        Left = 250
      end
      inherited Label1: TLabel
        Left = 8
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 385
        DataField = 'T028_ID'
      end
      inherited ed02: TDBEdit
        Left = 306
        Width = 175
      end
      inherited ed01: TDBEdit
        Width = 137
      end
    end
    object dt01: TDBDateTimePicker
      Left = 103
      Top = 121
      Width = 137
      Height = 21
      CalAlignment = dtaLeft
      Date = 40578.6550699074
      Time = 40578.6550699074
      ShowCheckbox = True
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
      DataField = 'T031_REG_DATE'
      DataSource = frm31_EmisInfList.dsList
    end
    object dt03: TDBDateTimePicker
      Left = 348
      Top = 121
      Width = 138
      Height = 21
      CalAlignment = dtaLeft
      Date = 40578.6550699074
      Time = 40578.6550699074
      ShowCheckbox = True
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 4
      DataField = 'T031_DATE_ANNUL'
      DataSource = frm31_EmisInfList.dsList
    end
    object ed01: TDBEdit
      Left = 102
      Top = 147
      Width = 137
      Height = 21
      DataField = 'T010_ISIN_TRANSL'
      DataSource = frm31_EmisInfList.dsList
      TabOrder = 5
    end
    object lcb06: TDBLookupComboBox
      Left = 348
      Top = 147
      Width = 138
      Height = 21
      DataField = 'T031_CURRENCY'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'ISO_ID'
      ListField = 'CURR_DESC'
      ListSource = ds06
      TabOrder = 6
    end
    object lcb04: TDBLookupComboBox
      Left = 102
      Top = 197
      Width = 383
      Height = 21
      Hint = 'Способ'#13#10'размещения'
      DataField = 'T024_ID'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'T024_ID'
      ListField = 'T024_NAME'
      ListSource = ds04
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object lcb05: TDBLookupComboBox
      Left = 102
      Top = 223
      Width = 383
      Height = 21
      DataField = 'T023_ID'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'T023_ID'
      ListField = 'T023_NAME'
      ListSource = ds05
      TabOrder = 8
    end
    object ed03: TDBEdit
      Left = 102
      Top = 172
      Width = 137
      Height = 21
      DataField = 'T031_NOMINAL'
      DataSource = frm31_EmisInfList.dsList
      TabOrder = 9
    end
    object lcb09: TDBLookupComboBox
      Left = 312
      Top = 46
      Width = 175
      Height = 21
      DataField = 'T030_TYPE'
      DataSource = frm31_EmisInfList.dsList
      KeyField = 'EMISSION_TYPE'
      ListField = 'EMISSION_TYPE_DESC'
      ListSource = ds09
      TabOrder = 10
    end
  end
  object gb3: TGroupBox [3]
    Left = 8
    Top = 443
    Width = 501
    Height = 65
    Caption = ' Bloomberg '
    TabOrder = 3
    object Label12: TLabel
      Left = 12
      Top = 20
      Width = 31
      Height = 13
      Caption = 'Тикер'
    end
    object Label13: TLabel
      Left = 253
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Биржа'
    end
    object ed04: TDBEdit
      Left = 102
      Top = 16
      Width = 137
      Height = 21
      DataField = 'T167_NAME'
      TabOrder = 0
    end
    object ed05: TDBEdit
      Left = 348
      Top = 16
      Width = 137
      Height = 21
      DataField = 'T167_EXCHANGE'
      TabOrder = 1
    end
    object cbAutoload: TDBCheckBox
      Left = 12
      Top = 40
      Width = 229
      Height = 17
      Caption = 'Автоматическая загрузка котировок'
      DataField = 'T031_AUTOLOAD'
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 8
    Top = 336
    Width = 501
    Height = 73
    Caption = ' Депозитарные расписки '
    TabOrder = 4
    object Label15: TLabel
      Left = 12
      Top = 45
      Width = 70
      Height = 13
      Caption = 'Коэффициент'
    end
    object SpeedButton1: TSpeedButton
      Left = 12
      Top = 16
      Width = 90
      Height = 21
      Caption = 'Акция...'
      Flat = True
      Margin = 0
    end
    object Label16: TLabel
      Left = 253
      Top = 45
      Width = 59
      Height = 13
      Caption = 'Количество'
    end
    object ed06: TDBEdit
      Left = 102
      Top = 42
      Width = 137
      Height = 21
      TabOrder = 0
    end
    object lcbDrSource: TxxxDBLookupCheckCombo
      Left = 103
      Top = 16
      Width = 385
      Height = 21
      DropDownCount = 8
      TabOrder = 1
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object ed07: TDBEdit
      Left = 348
      Top = 42
      Width = 137
      Height = 21
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 512
  end
  object ActionList2: TActionList
    Left = 56
    Top = 512
    object Action1: TAction
      Caption = 'OK'
      OnUpdate = actSaveUpdate
    end
    object Action2: TAction
      Caption = 'Отмена'
      OnUpdate = actCancelUpdate
    end
    object actCheckFormState: TAction
      Caption = 'Редактирование'
      Visible = False
      OnExecute = actCheckFormStateExecute
    end
  end
  object ods08: TOracleDataSet
    SQL.Strings = (
      'select TYPE_ID, TYPE_NAME'
      'from V_405_COUPON_CALC_TYPES')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000545950455F494401000000000009000000545950
      455F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 148
    Top = 314
    object ods08TYPE_ID: TFloatField
      FieldName = 'TYPE_ID'
    end
    object ods08TYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Size = 18
    end
  end
  object ds08: TDataSource
    DataSet = ods08
    Left = 180
    Top = 314
  end
  object ds07: TDataSource
    DataSet = ods07
    Left = 176
    Top = 282
  end
  object ods07: TOracleDataSet
    SQL.Strings = (
      'select TYPE_ID,  TYPE_NAME'
      'from V_405_RATES_TYPES')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000545950455F494401000000000009000000545950
      455F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 144
    Top = 282
    object ods07TYPE_ID: TFloatField
      FieldName = 'TYPE_ID'
    end
    object ods07TYPE_NAME: TStringField
      DisplayWidth = 16
      FieldName = 'TYPE_NAME'
      Size = 16
    end
  end
  object ds06: TDataSource
    DataSet = ods06
    Left = 410
    Top = 164
  end
  object ods06: TOracleDataSet
    SQL.Strings = (
      'select   ISO_ID, CURR_DESC'
      'from     V_405_CURRENCY'
      'order by ISO_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 378
    Top = 164
    object ods06ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods06CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'select T024_ID, T024_NAME'
      'from     V_405_SPOSOB_RAZM'
      'order by T024_NAME'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032345F494401000000000009000000543032
      345F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 264
    Top = 194
    object ods04T024_ID: TFloatField
      FieldName = 'T024_ID'
      Required = True
    end
    object ods04T024_NAME: TStringField
      FieldName = 'T024_NAME'
      Required = True
      Size = 255
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 296
    Top = 194
  end
  object ods05: TOracleDataSet
    SQL.Strings = (
      'select T023_ID, T023_NAME'
      'from     V_405_SOST_VYP'
      'order by T023_NAME'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032335F494401000000000009000000543032
      335F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 222
    object ods05T023_ID: TFloatField
      FieldName = 'T023_ID'
      Required = True
    end
    object ods05T023_NAME: TStringField
      FieldName = 'T023_NAME'
      Required = True
      Size = 255
    end
  end
  object ds05: TDataSource
    DataSet = ods05
    Left = 192
    Top = 222
  end
  object ods09: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  EMISSION_TYPE,'
      '  EMISSION_TYPE_DESC'
      'FROM V_405_EMISSION_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000454D495353494F4E5F5459504501000000000012
      000000454D495353494F4E5F545950455F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 60
  end
  object ds09: TDataSource
    DataSet = ods09
    Left = 392
    Top = 60
  end
  object odsDrSource: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from     V_405_SEC_TYPE'
      'where  T027_ID IN (3,4)'
      'order by T027_SEC_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 144
    Top = 344
  end
  object dsDrSource: TDataSource
    DataSet = odsDrSource
    Left = 184
    Top = 344
  end
end
