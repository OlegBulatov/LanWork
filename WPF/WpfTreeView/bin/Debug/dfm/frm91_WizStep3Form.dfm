inherited frm91_WizStep3: Tfrm91_WizStep3
  Caption = 'Мастер импорта первичных данных'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 32
      Top = 12
      Width = 106
      Height = 13
      Caption = 'Уточняемый период:'
    end
    object lblPeriod: TLabel
      Left = 168
      Top = 12
      Width = 50
      Height = 13
      Caption = 'lblPeriod'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 37
      Width = 132
      Height = 13
      Caption = 'Финансовый показатель:'
    end
    object Label2: TLabel
      Left = 160
      Top = 89
      Width = 123
      Height = 13
      Caption = 'Данные для отчетов'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 360
      Top = 89
      Width = 115
      Height = 13
      Caption = 'Первичные данные'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 320
      Top = 88
      Width = 2
      Height = 329
    end
    object Bevel3: TBevel
      Left = 120
      Top = 80
      Width = 2
      Height = 329
    end
    object lblYear: TLabel
      Left = 32
      Top = 89
      Width = 40
      Height = 13
      Caption = 'lblYear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 62
      Width = 127
      Height = 13
      Caption = 'Валюта импорта данных:'
    end
    object lblCurr: TLabel
      Left = 168
      Top = 62
      Width = 37
      Height = 13
      Caption = 'lblCurr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 113
      Width = 97
      Height = 17
      Caption = 'Январь'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 137
      Width = 97
      Height = 17
      Caption = 'Февраль'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 161
      Width = 97
      Height = 17
      Caption = 'Март'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 185
      Width = 97
      Height = 17
      Caption = 'Апрель'
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 209
      Width = 97
      Height = 17
      Caption = 'Май'
      TabOrder = 4
    end
    object CheckBox6: TCheckBox
      Left = 16
      Top = 233
      Width = 97
      Height = 17
      Caption = 'Июнь'
      TabOrder = 5
    end
    object CheckBox7: TCheckBox
      Left = 16
      Top = 257
      Width = 97
      Height = 17
      Caption = 'Июль'
      TabOrder = 6
    end
    object CheckBox8: TCheckBox
      Left = 16
      Top = 281
      Width = 97
      Height = 17
      Caption = 'Август'
      TabOrder = 7
    end
    object CheckBox9: TCheckBox
      Left = 16
      Top = 305
      Width = 97
      Height = 17
      Caption = 'Сентябрь'
      TabOrder = 8
    end
    object CheckBox10: TCheckBox
      Left = 16
      Top = 329
      Width = 97
      Height = 17
      Caption = 'Октябрь'
      TabOrder = 9
    end
    object CheckBox11: TCheckBox
      Left = 16
      Top = 353
      Width = 97
      Height = 17
      Caption = 'Ноябрь'
      TabOrder = 10
    end
    object CheckBox12: TCheckBox
      Left = 16
      Top = 377
      Width = 97
      Height = 17
      Caption = 'Декабрь'
      TabOrder = 11
    end
    object btnCopy: TButton
      Left = 384
      Top = 400
      Width = 97
      Height = 25
      Caption = 'Пересчитать'
      TabOrder = 12
      OnClick = btnCopyClick
    end
    object ed1: TDBEdit
      Left = 160
      Top = 111
      Width = 121
      Height = 21
      DataField = 'M034_MONTH1_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 13
    end
    object ed2: TDBEdit
      Left = 160
      Top = 135
      Width = 121
      Height = 21
      DataField = 'M034_MONTH2_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 14
    end
    object ed3: TDBEdit
      Left = 160
      Top = 159
      Width = 121
      Height = 21
      DataField = 'M034_MONTH3_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 15
    end
    object ed4: TDBEdit
      Left = 160
      Top = 183
      Width = 121
      Height = 21
      DataField = 'M034_MONTH4_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 16
    end
    object ed5: TDBEdit
      Left = 160
      Top = 207
      Width = 121
      Height = 21
      DataField = 'M034_MONTH5_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 17
    end
    object ed6: TDBEdit
      Left = 160
      Top = 231
      Width = 121
      Height = 21
      DataField = 'M034_MONTH6_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 18
    end
    object ed7: TDBEdit
      Left = 160
      Top = 255
      Width = 121
      Height = 21
      DataField = 'M034_MONTH7_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 19
    end
    object ed8: TDBEdit
      Left = 160
      Top = 279
      Width = 121
      Height = 21
      DataField = 'M034_MONTH8_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 20
    end
    object ed9: TDBEdit
      Left = 160
      Top = 303
      Width = 121
      Height = 21
      DataField = 'M034_MONTH9_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 21
    end
    object ed10: TDBEdit
      Left = 160
      Top = 327
      Width = 121
      Height = 21
      DataField = 'M034_MONTH10_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 22
    end
    object ed11: TDBEdit
      Left = 160
      Top = 351
      Width = 121
      Height = 21
      DataField = 'M034_MONTH11_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 23
    end
    object ed12: TDBEdit
      Left = 160
      Top = 375
      Width = 121
      Height = 21
      DataField = 'M034_MONTH12_VALUE'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 24
    end
    object ded1: TDBEdit
      Left = 360
      Top = 111
      Width = 121
      Height = 21
      DataField = 'M034_MONTH1_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 25
    end
    object ded2: TDBEdit
      Left = 360
      Top = 135
      Width = 121
      Height = 21
      DataField = 'M034_MONTH2_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 26
    end
    object ded3: TDBEdit
      Left = 360
      Top = 159
      Width = 121
      Height = 21
      DataField = 'M034_MONTH3_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 27
    end
    object ded4: TDBEdit
      Left = 360
      Top = 183
      Width = 121
      Height = 21
      DataField = 'M034_MONTH4_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 28
    end
    object ded5: TDBEdit
      Left = 360
      Top = 207
      Width = 121
      Height = 21
      DataField = 'M034_MONTH5_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 29
    end
    object ded6: TDBEdit
      Left = 360
      Top = 231
      Width = 121
      Height = 21
      DataField = 'M034_MONTH6_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 30
    end
    object ded7: TDBEdit
      Left = 360
      Top = 255
      Width = 121
      Height = 21
      DataField = 'M034_MONTH7_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 31
    end
    object ded8: TDBEdit
      Left = 360
      Top = 279
      Width = 121
      Height = 21
      DataField = 'M034_MONTH8_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 32
    end
    object ded9: TDBEdit
      Left = 360
      Top = 303
      Width = 121
      Height = 21
      DataField = 'M034_MONTH9_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 33
    end
    object ded10: TDBEdit
      Left = 360
      Top = 327
      Width = 121
      Height = 21
      DataField = 'M034_MONTH10_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 34
    end
    object ded11: TDBEdit
      Left = 360
      Top = 351
      Width = 121
      Height = 21
      DataField = 'M034_MONTH11_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 35
    end
    object ded12: TDBEdit
      Left = 360
      Top = 375
      Width = 121
      Height = 21
      DataField = 'M034_MONTH12_DRAFT'
      DataSource = dsProfit
      ReadOnly = True
      TabOrder = 36
    end
    object lcb01: TDBLookupComboBox
      Left = 168
      Top = 33
      Width = 313
      Height = 21
      KeyField = 'M033_NUMB'
      ListField = 'M033_NAME'
      ListSource = ds01
      TabOrder = 37
    end
  end
  inherited pnlButtons: TPanel
    inherited btnNext: TButton
      Caption = 'Готово'
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 3'
    end
    inherited lblCaption: TLabel
      Width = 107
      Caption = 'Копирование данных'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 172
      Caption = 'Скопируйте необходимые данные'
    end
  end
  object odsYear: TOracleDataSet
    SQL.Strings = (
      'select T055_LONG_NAME'
      'from V_NR_TIME'
      'where T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000010000000E000000543035355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 64
    Top = 145
    object odsYearT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object odsProfit: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      #9' M028_ID, M034_DRAFT_VALUE, M034_MONTH1_VALUE,'
      '   M034_MONTH1_DRAFT, M034_MONTH2_VALUE, M034_MONTH2_DRAFT,'
      '   M034_MONTH3_VALUE, M034_MONTH3_DRAFT, M034_MONTH4_VALUE,'
      '   M034_MONTH4_DRAFT, M034_MONTH5_VALUE, M034_MONTH5_DRAFT,'
      '   M034_MONTH6_VALUE, M034_MONTH6_DRAFT, M034_MONTH7_VALUE,'
      '   M034_MONTH7_DRAFT, M034_MONTH8_VALUE, M034_MONTH8_DRAFT,'
      '   M034_MONTH9_VALUE, M034_MONTH9_DRAFT, M034_MONTH10_VALUE,'
      '   M034_MONTH10_DRAFT, M034_MONTH11_VALUE, M034_MONTH11_DRAFT,'
      '   M034_MONTH12_VALUE, M034_MONTH12_DRAFT'
      'from M034_EDIT_VALUES'
      'where M028_ID = :M028_ID'
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001A000000070000004D3032385F4944010000000000100000004D3033
      345F44524146545F56414C5545010000000000110000004D3033345F4D4F4E54
      48315F56414C5545010000000000110000004D3033345F4D4F4E5448315F4452
      414654010000000000110000004D3033345F4D4F4E5448325F56414C55450100
      00000000110000004D3033345F4D4F4E5448325F445241465401000000000011
      0000004D3033345F4D4F4E5448335F56414C5545010000000000110000004D30
      33345F4D4F4E5448335F4452414654010000000000110000004D3033345F4D4F
      4E5448345F56414C5545010000000000110000004D3033345F4D4F4E5448345F
      4452414654010000000000110000004D3033345F4D4F4E5448355F56414C5545
      010000000000110000004D3033345F4D4F4E5448355F44524146540100000000
      00110000004D3033345F4D4F4E5448365F56414C554501000000000011000000
      4D3033345F4D4F4E5448365F4452414654010000000000110000004D3033345F
      4D4F4E5448375F56414C5545010000000000110000004D3033345F4D4F4E5448
      375F4452414654010000000000110000004D3033345F4D4F4E5448385F56414C
      5545010000000000110000004D3033345F4D4F4E5448385F4452414654010000
      000000110000004D3033345F4D4F4E5448395F56414C55450100000000001100
      00004D3033345F4D4F4E5448395F4452414654010000000000120000004D3033
      345F4D4F4E544831305F56414C5545010000000000120000004D3033345F4D4F
      4E544831305F4452414654010000000000120000004D3033345F4D4F4E544831
      315F56414C5545010000000000120000004D3033345F4D4F4E544831315F4452
      414654010000000000120000004D3033345F4D4F4E544831325F56414C554501
      0000000000120000004D3033345F4D4F4E544831325F44524146540100000000
      00}
    OnApplyRecord = odsProfitApplyRecord
    Session = dmMain.OracleSession
    Left = 232
    Top = 137
    object odsProfitM028_ID: TFloatField
      FieldName = 'M028_ID'
    end
    object odsProfitM034_DRAFT_VALUE: TFloatField
      FieldName = 'M034_DRAFT_VALUE'
    end
    object odsProfitM034_MONTH1_VALUE: TFloatField
      FieldName = 'M034_MONTH1_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH1_DRAFT: TFloatField
      FieldName = 'M034_MONTH1_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH2_VALUE: TFloatField
      FieldName = 'M034_MONTH2_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH2_DRAFT: TFloatField
      FieldName = 'M034_MONTH2_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH3_VALUE: TFloatField
      FieldName = 'M034_MONTH3_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH3_DRAFT: TFloatField
      FieldName = 'M034_MONTH3_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH4_VALUE: TFloatField
      FieldName = 'M034_MONTH4_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH4_DRAFT: TFloatField
      FieldName = 'M034_MONTH4_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH5_VALUE: TFloatField
      FieldName = 'M034_MONTH5_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH5_DRAFT: TFloatField
      FieldName = 'M034_MONTH5_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH6_VALUE: TFloatField
      FieldName = 'M034_MONTH6_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH6_DRAFT: TFloatField
      FieldName = 'M034_MONTH6_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH7_VALUE: TFloatField
      FieldName = 'M034_MONTH7_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH7_DRAFT: TFloatField
      FieldName = 'M034_MONTH7_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH8_VALUE: TFloatField
      FieldName = 'M034_MONTH8_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH8_DRAFT: TFloatField
      FieldName = 'M034_MONTH8_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH9_VALUE: TFloatField
      FieldName = 'M034_MONTH9_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH9_DRAFT: TFloatField
      FieldName = 'M034_MONTH9_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH10_VALUE: TFloatField
      FieldName = 'M034_MONTH10_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH10_DRAFT: TFloatField
      FieldName = 'M034_MONTH10_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH11_VALUE: TFloatField
      FieldName = 'M034_MONTH11_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH11_DRAFT: TFloatField
      FieldName = 'M034_MONTH11_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH12_VALUE: TFloatField
      FieldName = 'M034_MONTH12_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsProfitM034_MONTH12_DRAFT: TFloatField
      FieldName = 'M034_MONTH12_DRAFT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object odsDraft: TOracleDataSet
    SQL.Strings = (
      'select'
      '  0 as F01,'
      '  0 as F02,'
      '  0 as F03,'
      '  0 as F04,'
      '  0 as F05,'
      '  0 as F06,'
      '  0 as F07,'
      '  0 as F08,'
      '  0 as F09,'
      '  0 as F10,'
      '  0 as F11,'
      '  0 as F12'
      'from dual')
    QBEDefinition.QBEFieldDefs = {
      040000000C000000030000004630310100000000000300000046303201000000
      0000030000004630330100000000000300000046303401000000000003000000
      4630350100000000000300000046303601000000000003000000463037010000
      0000000300000046303801000000000003000000463039010000000000030000
      0046313001000000000003000000463131010000000000030000004631320100
      00000000}
    OnApplyRecord = odsDraftApplyRecord
    Session = dmMain.OracleSession
    Left = 408
    Top = 137
    object odsDraftF01: TFloatField
      FieldName = 'F01'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF02: TFloatField
      FieldName = 'F02'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF03: TFloatField
      FieldName = 'F03'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF04: TFloatField
      FieldName = 'F04'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF05: TFloatField
      FieldName = 'F05'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF06: TFloatField
      FieldName = 'F06'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF07: TFloatField
      FieldName = 'F07'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF08: TFloatField
      FieldName = 'F08'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF09: TFloatField
      FieldName = 'F09'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF10: TFloatField
      FieldName = 'F10'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF11: TFloatField
      FieldName = 'F11'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsDraftF12: TFloatField
      FieldName = 'F12'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object dsProfit: TDataSource
    DataSet = odsProfit
    Left = 272
    Top = 137
  end
  object dsDraft: TDataSource
    DataSet = odsDraft
    Left = 456
    Top = 137
  end
  object odsDraftRep: TOracleDataSet
    SQL.Strings = (
      'select'
      '  V1.M022_VALUE,'
      '  V2.M032_NAME,'
      '  V2.M032_START_ID,'
      '  V2.M032_END_ID,'
      '  V2.M032_YEAR_ID,'
      '  V2.M032_TYPE,'
      '  V2.M032_COUNT'
      'from'
      '  V_NR_REINVEST_REPORT_DATA V1,'
      '  V_NR_REINVEST_REPORTS V2'
      'where V1.M021_ID = V2.M021_ID'
      'and V1.M028_ID = :M028_ID'
      'and V2.M032_ID = :M032_ID'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A4D3032385F4944040000000000000000000000
      080000003A4D3033325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000070000000A0000004D3032325F56414C554501000000000009000000
      4D3033325F4E414D450100000000000D0000004D3033325F53544152545F4944
      0100000000000B0000004D3033325F454E445F49440100000000000C0000004D
      3033325F594541525F4944010000000000090000004D3033325F545950450100
      000000000A0000004D3033325F434F554E54010000000000}
    OnApplyRecord = odsProfitApplyRecord
    Session = dmMain.OracleSession
    Left = 448
    Top = 49
    object odsDraftRepM022_VALUE: TFloatField
      FieldName = 'M022_VALUE'
    end
    object odsDraftRepM032_NAME: TStringField
      FieldName = 'M032_NAME'
      Required = True
      Size = 255
    end
    object odsDraftRepM032_START_ID: TFloatField
      FieldName = 'M032_START_ID'
      Required = True
    end
    object odsDraftRepM032_END_ID: TFloatField
      FieldName = 'M032_END_ID'
      Required = True
    end
    object odsDraftRepM032_YEAR_ID: TFloatField
      FieldName = 'M032_YEAR_ID'
      Required = True
    end
    object odsDraftRepM032_TYPE: TStringField
      FieldName = 'M032_TYPE'
      Required = True
      Size = 1
    end
    object odsDraftRepM032_COUNT: TFloatField
      FieldName = 'M032_COUNT'
      Required = True
    end
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select * from M033_SELECTED_VALUES'
      'where M033_TYPE = 1')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000090000004D3033335F54595045010000000000090000004D
      3033335F4E414D45010000000000090000004D3033335F4E554D420100000000
      00}
    ReadOnly = True
    Session = dmMain.OracleSession
    AfterScroll = ods01AfterScroll
    Left = 400
    Top = 97
    object ods01M033_TYPE: TFloatField
      FieldName = 'M033_TYPE'
    end
    object ods01M033_NAME: TStringField
      FieldName = 'M033_NAME'
      Size = 250
    end
    object ods01M033_NUMB: TFloatField
      FieldName = 'M033_NUMB'
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 440
    Top = 97
  end
  object oqInsertData: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Nr_Reinvest_Profits.p_insert_draft_data(:M029_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3032395F4944040000000000000000000000}
    Left = 136
    Top = 473
  end
  object oqUpdateData: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Nr_Reinvest_Profits.t_M034_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M028_ID := :M028_ID;'
      '  v_rec.M034_MONTH1_VALUE := :M034_MONTH1_VALUE;'
      '  v_rec.M034_MONTH2_VALUE := :M034_MONTH2_VALUE;'
      '  v_rec.M034_MONTH3_VALUE := :M034_MONTH3_VALUE;'
      '  v_rec.M034_MONTH4_VALUE := :M034_MONTH4_VALUE;'
      '  v_rec.M034_MONTH5_VALUE := :M034_MONTH5_VALUE;'
      '  v_rec.M034_MONTH6_VALUE := :M034_MONTH6_VALUE;'
      '  v_rec.M034_MONTH7_VALUE := :M034_MONTH7_VALUE;'
      '  v_rec.M034_MONTH8_VALUE := :M034_MONTH8_VALUE;'
      '  v_rec.M034_MONTH9_VALUE := :M034_MONTH9_VALUE;'
      '  v_rec.M034_MONTH10_VALUE := :M034_MONTH10_VALUE;'
      '  v_rec.M034_MONTH11_VALUE := :M034_MONTH11_VALUE;'
      '  v_rec.M034_MONTH12_VALUE := :M034_MONTH12_VALUE;'
      '  v_rec.M034_MONTH1_DRAFT := :M034_MONTH1_DRAFT;'
      '  v_rec.M034_MONTH2_DRAFT := :M034_MONTH2_DRAFT;'
      '  v_rec.M034_MONTH3_DRAFT := :M034_MONTH3_DRAFT;'
      '  v_rec.M034_MONTH4_DRAFT := :M034_MONTH4_DRAFT;'
      '  v_rec.M034_MONTH5_DRAFT := :M034_MONTH5_DRAFT;'
      '  v_rec.M034_MONTH6_DRAFT := :M034_MONTH6_DRAFT;'
      '  v_rec.M034_MONTH7_DRAFT := :M034_MONTH7_DRAFT;'
      '  v_rec.M034_MONTH8_DRAFT := :M034_MONTH8_DRAFT;'
      '  v_rec.M034_MONTH9_DRAFT := :M034_MONTH9_DRAFT;'
      '  v_rec.M034_MONTH10_DRAFT := :M034_MONTH10_DRAFT;'
      '  v_rec.M034_MONTH11_DRAFT := :M034_MONTH11_DRAFT;'
      '  v_rec.M034_MONTH12_DRAFT := :M034_MONTH12_DRAFT;'
      '  Pk_Nr_Reinvest_Profits.p_update_draft_data(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000019000000080000003A4D3032385F4944040000000000000000000000
      120000003A4D3033345F4D4F4E5448315F56414C554504000000000000000000
      0000120000003A4D3033345F4D4F4E5448325F56414C55450400000000000000
      00000000120000003A4D3033345F4D4F4E5448335F56414C5545040000000000
      000000000000120000003A4D3033345F4D4F4E5448345F56414C554504000000
      0000000000000000120000003A4D3033345F4D4F4E5448355F56414C55450400
      00000000000000000000120000003A4D3033345F4D4F4E5448365F56414C5545
      040000000000000000000000120000003A4D3033345F4D4F4E5448375F56414C
      5545040000000000000000000000120000003A4D3033345F4D4F4E5448385F56
      414C5545040000000000000000000000120000003A4D3033345F4D4F4E544839
      5F56414C5545040000000000000000000000130000003A4D3033345F4D4F4E54
      4831305F56414C5545040000000000000000000000130000003A4D3033345F4D
      4F4E544831315F56414C5545040000000000000000000000130000003A4D3033
      345F4D4F4E544831325F56414C5545040000000000000000000000120000003A
      4D3033345F4D4F4E5448315F4452414654040000000000000000000000120000
      003A4D3033345F4D4F4E5448325F445241465404000000000000000000000012
      0000003A4D3033345F4D4F4E5448335F44524146540400000000000000000000
      00120000003A4D3033345F4D4F4E5448345F4452414654040000000000000000
      000000120000003A4D3033345F4D4F4E5448355F445241465404000000000000
      0000000000120000003A4D3033345F4D4F4E5448365F44524146540400000000
      00000000000000120000003A4D3033345F4D4F4E5448375F4452414654040000
      000000000000000000120000003A4D3033345F4D4F4E5448385F445241465404
      0000000000000000000000120000003A4D3033345F4D4F4E5448395F44524146
      54040000000000000000000000130000003A4D3033345F4D4F4E544831305F44
      52414654040000000000000000000000130000003A4D3033345F4D4F4E544831
      315F4452414654040000000000000000000000130000003A4D3033345F4D4F4E
      544831325F4452414654040000000000000000000000}
    Left = 64
    Top = 473
  end
  object oqRecalc: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_checks  Pk_Nr_Reinvest_Profits.t_checks;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_checks := Pk_Nr_Reinvest_Profits.t_checks();'
      '  v_checks.EXTEND(12);'
      '  v_checks(1) := :M034_MONTH1_CHECK;'
      '  v_checks(2) := :M034_MONTH2_CHECK;'
      '  v_checks(3) := :M034_MONTH3_CHECK;'
      '  v_checks(4) := :M034_MONTH4_CHECK;'
      '  v_checks(5) := :M034_MONTH5_CHECK;'
      '  v_checks(6) := :M034_MONTH6_CHECK;'
      '  v_checks(7) := :M034_MONTH7_CHECK;'
      '  v_checks(8) := :M034_MONTH8_CHECK;'
      '  v_checks(9) := :M034_MONTH9_CHECK;'
      '  v_checks(10) := :M034_MONTH10_CHECK;'
      '  v_checks(11) := :M034_MONTH11_CHECK;'
      '  v_checks(12) := :M034_MONTH12_CHECK;'
      '  Pk_Nr_Reinvest_Profits.p_recalc_data(:M028_ID, v_checks);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      030000000D000000120000003A4D3033345F4D4F4E5448315F434845434B0500
      00000000000000000000120000003A4D3033345F4D4F4E5448325F434845434B
      050000000000000000000000120000003A4D3033345F4D4F4E5448335F434845
      434B050000000000000000000000120000003A4D3033345F4D4F4E5448345F43
      4845434B050000000000000000000000120000003A4D3033345F4D4F4E544835
      5F434845434B050000000000000000000000120000003A4D3033345F4D4F4E54
      48365F434845434B050000000000000000000000120000003A4D3033345F4D4F
      4E5448375F434845434B050000000000000000000000120000003A4D3033345F
      4D4F4E5448385F434845434B050000000000000000000000120000003A4D3033
      345F4D4F4E5448395F434845434B050000000000000000000000130000003A4D
      3033345F4D4F4E544831305F434845434B050000000000000000000000130000
      003A4D3033345F4D4F4E544831315F434845434B050000000000000000000000
      130000003A4D3033345F4D4F4E544831325F434845434B050000000000000000
      000000080000003A4D3032385F4944040000000000000000000000}
    Left = 344
    Top = 473
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_checks  Pk_Nr_Reinvest_Profits.t_checks;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_checks := Pk_Nr_Reinvest_Profits.t_checks();'
      '  v_checks.EXTEND(12);'
      '  v_checks(1) := :M034_MONTH1_CHECK;'
      '  v_checks(2) := :M034_MONTH2_CHECK;'
      '  v_checks(3) := :M034_MONTH3_CHECK;'
      '  v_checks(4) := :M034_MONTH4_CHECK;'
      '  v_checks(5) := :M034_MONTH5_CHECK;'
      '  v_checks(6) := :M034_MONTH6_CHECK;'
      '  v_checks(7) := :M034_MONTH7_CHECK;'
      '  v_checks(8) := :M034_MONTH8_CHECK;'
      '  v_checks(9) := :M034_MONTH9_CHECK;'
      '  v_checks(10) := :M034_MONTH10_CHECK;'
      '  v_checks(11) := :M034_MONTH11_CHECK;'
      '  v_checks(12) := :M034_MONTH12_CHECK;'
      '  Pk_Nr_Reinvest_Profits.p_check_click(:M028_ID, v_checks);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      030000000D000000120000003A4D3033345F4D4F4E5448315F434845434B0500
      00000000000000000000120000003A4D3033345F4D4F4E5448325F434845434B
      050000000000000000000000120000003A4D3033345F4D4F4E5448335F434845
      434B050000000000000000000000120000003A4D3033345F4D4F4E5448345F43
      4845434B050000000000000000000000120000003A4D3033345F4D4F4E544835
      5F434845434B050000000000000000000000120000003A4D3033345F4D4F4E54
      48365F434845434B050000000000000000000000120000003A4D3033345F4D4F
      4E5448375F434845434B050000000000000000000000120000003A4D3033345F
      4D4F4E5448385F434845434B050000000000000000000000120000003A4D3033
      345F4D4F4E5448395F434845434B050000000000000000000000130000003A4D
      3033345F4D4F4E544831305F434845434B050000000000000000000000130000
      003A4D3033345F4D4F4E544831315F434845434B050000000000000000000000
      130000003A4D3033345F4D4F4E544831325F434845434B050000000000000000
      000000080000003A4D3032385F4944040000000000000000000000}
    Left = 48
    Top = 217
  end
  object odsCurr: TOracleDataSet
    SQL.Strings = (
      'select NAME_RUSH'
      'from V_NR_CURRENCY'
      'where ISO_ID = :ISO_ID')
    Variables.Data = {0300000001000000070000003A49534F5F4944050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000090000004E414D455F52555348010000000000}
    Session = dmMain.OracleSession
    Left = 256
    Top = 65
    object odsCurrNAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
  end
end
