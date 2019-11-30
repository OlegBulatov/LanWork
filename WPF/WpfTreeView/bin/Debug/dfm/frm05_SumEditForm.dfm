inherited frm05_SumEdit: Tfrm05_SumEdit
  Left = 324
  Top = 233
  ClientHeight = 672
  ClientWidth = 586
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 639
    Width = 586
    inherited Panel3: TPanel
      Left = 421
      inherited OKBtn: TButton
        Caption = 'Сохранить'
      end
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 188
    Width = 586
    Height = 68
    Align = alTop
    Caption = 'Характеристика ценной бумаги'
    TabOrder = 1
    object Label17: TLabel
      Left = 16
      Top = 21
      Width = 72
      Height = 13
      Caption = 'Дата регистр.'
    end
    object Label18: TLabel
      Left = 303
      Top = 20
      Width = 84
      Height = 13
      Caption = 'Дата погашения'
    end
    object Label23: TLabel
      Left = 255
      Top = 19
      Width = 22
      Height = 13
      Caption = 'Тип:'
      Visible = False
    end
    object dt02: TDBDateTimePicker
      Left = 105
      Top = 18
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 38366.7863730324
      Time = 38366.7863730324
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      DataField = 'T001_DATE_ON'
      DataSource = frm05_SumList.dsList
    end
    object dt03: TDBDateTimePicker
      Left = 391
      Top = 17
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 38366.7863730324
      Time = 38366.7863730324
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
      DataField = 'T001_DATE_OFF'
      DataSource = frm05_SumList.dsList
    end
    inline fm12_MainCurrency: Tfm12_Currency
      Left = 7
      Top = 41
      Width = 283
      TabOrder = 2
      inherited btnSelect: TSpeedButton
        Caption = 'Код валюты...'
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 187
        DataField = 'T001_CR_ID'
        DataSource = frm05_SumList.dsList
      end
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 97
    Width = 586
    Height = 91
    Align = alTop
    Caption = 'Параметры расчетов по операциям с ценными бумагами'
    TabOrder = 2
    object Label5: TLabel
      Left = 303
      Top = 21
      Width = 55
      Height = 13
      Caption = 'Кол-во ц.б.'
    end
    object Label6: TLabel
      Left = 303
      Top = 44
      Width = 79
      Height = 13
      Caption = 'Код валюты пл.'
    end
    object Label8: TLabel
      Left = 303
      Top = 67
      Width = 51
      Height = 13
      Caption = 'Проценты'
    end
    object Label7: TLabel
      Left = 16
      Top = 67
      Width = 80
      Height = 13
      Caption = 'Сумма платежа'
    end
    object Label4: TLabel
      Left = 16
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Код н.пл.'
    end
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 70
      Height = 13
      Caption = 'Код операции'
    end
    object ed03: TDBEdit
      Left = 391
      Top = 66
      Width = 186
      Height = 21
      DataField = 'T001_OP_PROC'
      DataSource = frm05_SumList.dsList
      TabOrder = 0
    end
    object ed01: TDBEdit
      Left = 391
      Top = 16
      Width = 186
      Height = 21
      DataField = 'T001_OP_COUNT'
      DataSource = frm05_SumList.dsList
      TabOrder = 1
    end
    object ed02: TDBEdit
      Left = 104
      Top = 64
      Width = 186
      Height = 21
      DataField = 'T001_OP_SUM'
      DataSource = frm05_SumList.dsList
      TabOrder = 2
    end
    object lcb03: TDBLookupComboBox
      Left = 104
      Top = 18
      Width = 186
      Height = 21
      DataField = 'T001_OP_ID'
      DataSource = frm05_SumList.dsList
      KeyField = 'T011_ID'
      ListField = 'T011_TYPE_ID'
      ListSource = ds03
      TabOrder = 3
    end
    object lcb04: TDBLookupComboBox
      Left = 104
      Top = 41
      Width = 186
      Height = 21
      DataField = 'T001_OP_PAY_ID'
      DataSource = frm05_SumList.dsList
      KeyField = 'T006_ID'
      ListField = 'T006_NAME'
      ListSource = ds04
      TabOrder = 4
    end
    inline fm12_OpCurrency: Tfm12_Currency
      Left = 293
      Top = 40
      Width = 284
      TabOrder = 5
      inherited btnSelect: TSpeedButton
        Caption = 'Код валюты пл...'
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 188
        DataField = 'T001_OP_CR_ID'
        DataSource = frm05_SumList.dsList
      end
    end
  end
  object GroupBox4: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 586
    Height = 97
    Align = alTop
    Caption = 'Сведения о расчетах'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 77
      Height = 13
      Caption = 'Дата операции'
    end
    object Label19: TLabel
      Left = 312
      Top = 24
      Width = 60
      Height = 13
      Caption = 'Отч. период'
    end
    object Label27: TLabel
      Left = 312
      Top = 72
      Width = 52
      Height = 13
      Caption = '№ строки:'
    end
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 15
      Height = 13
      Caption = 'КО'
    end
    object Label10: TLabel
      Left = 312
      Top = 48
      Width = 59
      Height = 13
      Caption = '№ раздела:'
    end
    object med01: TMaskEdit
      Left = 384
      Top = 68
      Width = 185
      Height = 21
      EditMask = '!099999;0; '
      MaxLength = 6
      TabOrder = 2
    end
    object dt01: TDBDateTimePicker
      Left = 104
      Top = 44
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 38366.7863730324
      Time = 38366.7863730324
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      DataField = 'T001_DATE_OP'
      DataSource = frm05_SumList.dsList
    end
    object lcbPeriod: TDBLookupComboBox
      Left = 384
      Top = 20
      Width = 186
      Height = 21
      DataField = 'T002_ID'
      DataSource = frm05_SumList.dsList
      KeyField = 'T002_ID'
      ListField = 'SUM_HEADER_DESC'
      ListSource = dsPeriod
      TabOrder = 1
    end
    object cb01: TDBCheckBox
      Left = 16
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Выкуп эмитентом'
      DataField = 'T001_IS_RANSOM'
      DataSource = frm05_SumList.dsList
      TabOrder = 3
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
    object lcbKO: TDBLookupComboBox
      Left = 104
      Top = 20
      Width = 185
      Height = 21
      KeyField = 'T002_BANK_CODE'
      ListField = 'REGN_NAME'
      ListSource = dsKO
      TabOrder = 4
      OnCloseUp = lcbKOCloseUp
    end
    object lcbPart: TxxxDBLookupCheckCombo
      Left = 384
      Top = 44
      Width = 185
      Height = 21
      DropDownCount = 3
      LookupField = 'T005_ID'
      LookupDisplay = 'T005_SHORT_NAME'
      LookupSource = dsPart
      TabOrder = 5
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  object GroupBox5: TGroupBox [4]
    Left = 0
    Top = 350
    Width = 586
    Height = 65
    Align = alTop
    Caption = 'Резидент'
    TabOrder = 4
    inline fm10_Rezid: Tfm10_Rezid
      Left = 7
      Top = 15
      Width = 577
      inherited Label2: TLabel
        Left = 298
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 474
        DataField = 'T012_ID'
        DataSource = frm05_SumList.dsList
      end
      inherited ed01: TDBEdit
        Width = 187
      end
      inherited ed02: TDBEdit
        Left = 326
        Width = 246
      end
    end
  end
  object GroupBox6: TGroupBox [5]
    Left = 0
    Top = 415
    Width = 586
    Height = 65
    Align = alTop
    Caption = 'Нерезидент'
    TabOrder = 5
    inline fm11_NRezid: Tfm11_NRezid
      Left = 7
      Top = 15
      Width = 577
      inherited Label2: TLabel
        Left = 298
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 473
        DataField = 'T013_ID'
        DataSource = frm05_SumList.dsList
      end
      inherited ed01: TDBEdit
        Width = 187
      end
      inherited ed02: TDBEdit
        Left = 326
        Width = 245
      end
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = 0
    Top = 256
    Width = 586
    Height = 94
    Align = alTop
    Caption = 'Эмиссия'
    TabOrder = 6
    inline fm05_Emission: Tfm05_Emission
      Left = 7
      Top = 15
      Width = 577
      Height = 77
      inherited Label3: TLabel
        Left = 303
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 473
        DataField = 'T030_ID'
        DataSource = frm05_SumList.dsList
      end
      inherited ed03: TDBEdit
        Left = 368
        Width = 203
      end
      inherited ed02: TDBEdit
        Width = 187
      end
      inherited ed01: TDBEdit
        Width = 473
      end
    end
  end
  object GroupBox7: TGroupBox [7]
    Left = 0
    Top = 480
    Width = 586
    Height = 145
    Align = alTop
    Caption = 'Дополнительно'
    TabOrder = 7
    object Label9: TLabel
      Left = 16
      Top = 72
      Width = 70
      Height = 26
      Caption = 'Комментарий'#13#10'ДПБ'
      WordWrap = True
    end
    inline fm04_LookUp1: Tfm04_LookUp
      Left = 13
      Top = 12
      inherited Label1: TLabel
        Left = 3
        Width = 81
        Caption = 'Тип инвестиций'
      end
      inherited Lookup01: TxxxDBLookupCheckCombo
        Left = 92
        DataField = 'T001_INV_TYPE'
        DataSource = frm05_SumList.dsList
        LookupField = 'T001_INV_TYPE'
        LookupDisplay = 'T001_INV_TYPE_DESCR'
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'SELECT'
          '      T001_INV_TYPE,'
          '      T001_INV_TYPE_DESCR'
          'FROM'
          '      V_405_INV_TYPE')
        QBEDefinition.QBEFieldDefs = {
          04000000020000000D000000543030315F494E565F5459504501000000000013
          000000543030315F494E565F545950455F4445534352010000000000}
      end
    end
    object DBMemo1: TDBMemo
      Left = 104
      Top = 69
      Width = 473
      Height = 64
      DataField = 'T001_DPB_COMMENT'
      DataSource = frm05_SumList.dsList
      TabOrder = 1
    end
    object cbProcessed: TDBCheckBox
      Left = 16
      Top = 44
      Width = 337
      Height = 17
      Caption = 'К учёту (Проект "Участие нерезидентов")'
      DataField = 'T001_PROCESSED'
      DataSource = frm05_SumList.dsList
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '2'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 400
      Top = 18
      Width = 145
      Height = 17
      Caption = 'Первичный рынок'
      DataField = 'IS_FIRST'
      DataSource = frm05_SumList.dsList
      TabOrder = 3
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM T016_BOND_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031365F49440100000000000C000000543031
      365F424F4E445F49440100000000000E000000543031365F424F4E445F444553
      43010000000000}
    Session = dmMain.OracleSession
    Left = 384
    Top = 232
    object ods02T016_ID: TFloatField
      FieldName = 'T016_ID'
      Required = True
    end
    object ods02T016_BOND_ID: TStringField
      FieldName = 'T016_BOND_ID'
      Required = True
      Size = 4
    end
    object ods02T016_BOND_DESC: TStringField
      FieldName = 'T016_BOND_DESC'
      Size = 100
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 424
    Top = 232
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM T011_OPERATION_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031315F49440100000000000C000000543031
      315F545950455F494401000000000013000000543031315F4F5045524154494F
      4E5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 112
    object ods03T011_ID: TFloatField
      FieldName = 'T011_ID'
      Required = True
    end
    object ods03T011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object ods03T011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Size = 255
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 248
    Top = 112
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM T006_PAY')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543030365F494401000000000009000000543030
      365F4E414D4501000000000009000000543030365F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 152
    object ods04T006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object ods04T006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object ods04T006_DESC: TStringField
      FieldName = 'T006_DESC'
      Size = 1000
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 248
    Top = 152
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT     T002_ID,'
      '           T055_ID,'
      '           T002_BANK_CODE,'
      '           SUM_HEADER_DESC'
      'FROM       V_T002_SUM_HEADER'
      'WHERE     T002_BANK_CODE = :T002_BANK_CODE'
      'ORDER BY   T002_BANK_CODE,'
      '           T055_ID')
    Variables.Data = {
      03000000010000000F0000003A543030325F42414E4B5F434F44450500000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543030325F49440100000000000E000000543030
      325F42414E4B5F434F44450100000000000F00000053554D5F4845414445525F
      4445534301000000000007000000543035355F4944010000000000}
    Session = dmMain.OracleSession
    Left = 440
    Top = 16
    object odsPeriodT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsPeriodT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsPeriodSUM_HEADER_DESC: TStringField
      FieldName = 'SUM_HEADER_DESC'
      Size = 62
    end
    object odsPeriodT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 472
    Top = 16
  end
  object odsKO: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT REGN_NAME, T002_BANK_CODE'
      'FROM       V_T002_SUM_HEADER'
      'order by REGN_NAME')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000090000005245474E5F4E414D450100000000000E00000054
      3030325F42414E4B5F434F4445010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 16
    object odsKOREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 262
    end
    object odsKOT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
  end
  object dsKO: TDataSource
    DataSet = odsKO
    Left = 248
    Top = 16
  end
  object odsPart: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  Pk_Hand_Correct_405.p_get_parts(:p_cursor, :T055_ID, :part_no)' +
        ';'
      'end;')
    Variables.Data = {
      0300000003000000090000003A505F435552534F527400000000000000000000
      00080000003A543035355F4944040000000000000000000000080000003A5041
      52545F4E4F040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543030355F49440100000000000F000000543030
      355F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 40
  end
  object dsPart: TDataSource
    DataSet = odsPart
    Left = 512
    Top = 40
  end
end
