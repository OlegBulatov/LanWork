inherited frm99_DividentsEdit: Tfrm99_DividentsEdit
  Left = 319
  Top = 176
  ClientHeight = 321
  ClientWidth = 421
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 90
    Height = 13
    Caption = 'Дата объявления'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 31
    Width = 123
    Height = 13
    Caption = 'Дата фиксации реестра'
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 56
    Width = 71
    Height = 13
    Caption = 'Валюта ввода'
  end
  inherited Panel2: TPanel
    Top = 286
    Width = 421
    Height = 35
    inherited Panel3: TPanel
      Left = 256
      Height = 35
    end
    inherited PrevBtn: TBitBtn
      Width = 9
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 16
      Width = 9
      Enabled = False
      Visible = False
    end
  end
  object dtp01: TDBDateTimePicker [4]
    Left = 144
    Top = 4
    Width = 137
    Height = 21
    CalAlignment = dtaLeft
    Date = 39485.4529492014
    Time = 39485.4529492014
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'M050_DATE'
    DataSource = frm99_DividentsList.dsList
  end
  object dtp02: TDBDateTimePicker [5]
    Left = 144
    Top = 27
    Width = 137
    Height = 21
    CalAlignment = dtaLeft
    Date = 39485.4529492014
    Time = 39485.4529492014
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 2
    DataField = 'M050_FIKS_DATE'
    DataSource = frm99_DividentsList.dsList
  end
  object gp01: TGroupBox [6]
    Left = 0
    Top = 142
    Width = 421
    Height = 72
    Align = alBottom
    Caption = ' Налоги на прямые '
    TabOrder = 7
    object ed02: TDBEdit
      Left = 144
      Top = 15
      Width = 137
      Height = 21
      DataField = 'M050_TAX_VALUE_HAND'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 2
    end
    object ed03: TDBEdit
      Left = 144
      Top = 39
      Width = 137
      Height = 21
      DataField = 'M050_TAX_VALUE_AUTO'
      DataSource = frm99_DividentsList.dsList
      Enabled = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 288
      Top = 37
      Width = 121
      Height = 25
      Caption = 'Рассчитать'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000000000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000FF000000000000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000FF00FFFFFF000000000000008000000080000000000000FFFF00FF00
        FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF008080800000FF
        FF0000FFFF0080808000FFFFFF000000FF00808080000000FF00FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF008080
        8000FFFFFF008080800000FFFF008080800000FFFF00FFFFFF00FFFFFF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00808080008080
        800080808000FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000FF
        FF008080800000FFFF00FFFFFF00808080008080800080808000808080000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
        800000FFFF008080800000FFFF008080800000FFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080800000FF
        FF00FF00FF0080808000FFFFFF00FF00FF008080800000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cb01: TDBCheckBox
      Left = 8
      Top = 17
      Width = 97
      Height = 17
      Caption = 'Вручную'
      DataField = 'M050_CALC_AUTO'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 0
      ValueChecked = 'N'
      ValueUnchecked = 'Y'
      OnClick = cb01Click
    end
    object cb02: TDBCheckBox
      Left = 8
      Top = 41
      Width = 97
      Height = 17
      Caption = 'Рассчитать'
      DataField = 'M050_CALC_AUTO'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 1
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
      OnClick = cb02Click
    end
  end
  object gp02: TGroupBox [7]
    Left = 0
    Top = 214
    Width = 421
    Height = 72
    Align = alBottom
    Caption = ' Налоги на портфельные '
    TabOrder = 8
    object ed04: TDBEdit
      Left = 144
      Top = 15
      Width = 137
      Height = 21
      DataField = 'M050_TAX_VALUE_HAND_PORTF'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 2
    end
    object ed05: TDBEdit
      Left = 144
      Top = 39
      Width = 137
      Height = 21
      DataField = 'M050_TAX_VALUE_AUTO_PORTF'
      DataSource = frm99_DividentsList.dsList
      Enabled = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 288
      Top = 37
      Width = 121
      Height = 25
      Caption = 'Рассчитать'
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000000000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000FF000000000000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
        FF000000FF00FFFFFF000000000000008000000080000000000000FFFF00FF00
        FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF008080800000FF
        FF0000FFFF0080808000FFFFFF000000FF00808080000000FF00FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF008080
        8000FFFFFF008080800000FFFF008080800000FFFF00FFFFFF00FFFFFF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00808080008080
        800080808000FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000FF
        FF008080800000FFFF00FFFFFF00808080008080800080808000808080000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
        800000FFFF008080800000FFFF008080800000FFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080800000FF
        FF00FF00FF0080808000FFFFFF00FF00FF008080800000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cb03: TDBCheckBox
      Left = 8
      Top = 17
      Width = 97
      Height = 17
      Caption = 'Вручную'
      DataField = 'M050_CALC_AUTO_PORTF'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 0
      ValueChecked = 'N'
      ValueUnchecked = 'Y'
      OnClick = cb03Click
    end
    object cb04: TDBCheckBox
      Left = 8
      Top = 41
      Width = 97
      Height = 17
      Caption = 'Рассчитать'
      DataField = 'M050_CALC_AUTO_PORTF'
      DataSource = frm99_DividentsList.dsList
      TabOrder = 1
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
      OnClick = cb04Click
    end
  end
  object RadioGroup1: TRadioGroup [8]
    Left = 0
    Top = 77
    Width = 421
    Height = 65
    Align = alBottom
    Caption = ' Сумма выплат '
    ItemIndex = 0
    Items.Strings = (
      'Цена за акцию'
      'Всего')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object ed01: TDBEdit [9]
    Left = 144
    Top = 90
    Width = 137
    Height = 21
    Anchors = [akRight, akBottom]
    DataField = 'M050_SUM'
    DataSource = frm99_DividentsList.dsList
    TabOrder = 5
  end
  object ed06: TDBEdit [10]
    Left = 144
    Top = 114
    Width = 137
    Height = 21
    Anchors = [akRight, akBottom]
    DataField = 'M050_ALL_SUM'
    DataSource = frm99_DividentsList.dsList
    TabOrder = 6
  end
  object lcb01: TDBLookupComboBox [11]
    Left = 144
    Top = 52
    Width = 137
    Height = 21
    DataField = 'M050_CURR'
    DataSource = frm99_DividentsList.dsList
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds01
    TabOrder = 3
  end
  inherited ActionList: TActionList
    Top = 288
    object actPrcCalc: TAction
      Caption = 'Рассчитать'
      ImageIndex = 27
      OnExecute = actPrcCalcExecute
    end
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  M050_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  M050_DATE,'
      '  M050_SUM,'
      '  M050_711_COUNT,'
      '  M050_OTH_COUNT,'
      '  M050_TYPE,'
      '  M050_TYPE_DESC,'
      '  T028_CODE,'
      '  T028_SHOT_NAME,'
      '  T025_SHOT_NAME,'
      '  T027_SEC_TYPE,'
      '  M050_USD_SUM,'
      '  M050_TAX_SUM,'
      '  M050_TAX_VALUE,'
      ' M050_TOTAL_SUM'
      'FROM V_NR_DIVIDENDS_LIST'
      'WHERE T028_ID = :T028_ID'
      #9'AND T027_ID = :T027_ID'
      #9'AND M050_DATE = :M050_DATE'
      '  AND M050_TYPE = 2'
      ''
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000A0000003A4D3035
      305F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543032385F494401000000000007000000543032
      375F494401000000000009000000543032385F434F44450100000000000E0000
      00543032385F53484F545F4E414D450100000000000E000000543032355F5348
      4F545F4E414D450100000000000D000000543032375F5345435F545950450100
      00000000070000004D3035305F4944010000000000090000004D3035305F4441
      5445010000000000080000004D3035305F53554D0100000000000E0000004D30
      35305F3731315F434F554E540100000000000E0000004D3035305F4F54485F43
      4F554E54010000000000090000004D3035305F545950450100000000000E0000
      004D3035305F545950455F444553430100000000000C0000004D3035305F5553
      445F53554D0100000000000C0000004D3035305F5441585F53554D0100000000
      000E0000004D3035305F5441585F56414C55450100000000000E0000004D3035
      305F544F54414C5F53554D010000000000}
    Session = dmMain.OracleSession
    Left = 296
    Top = 9
    object ods04M050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
    end
    object ods04T028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object ods04T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods04M050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
      Required = True
    end
    object ods04M050_SUM: TFloatField
      FieldName = 'M050_SUM'
      Required = True
    end
    object ods04M050_711_COUNT: TFloatField
      FieldName = 'M050_711_COUNT'
      Required = True
    end
    object ods04M050_OTH_COUNT: TFloatField
      FieldName = 'M050_OTH_COUNT'
      Required = True
    end
    object ods04M050_TYPE: TIntegerField
      FieldName = 'M050_TYPE'
      Required = True
    end
    object ods04M050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object ods04T028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object ods04T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object ods04T025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object ods04T027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object ods04M050_USD_SUM: TFloatField
      FieldName = 'M050_USD_SUM'
      Required = True
    end
    object ods04M050_TAX_SUM: TFloatField
      FieldName = 'M050_TAX_SUM'
      Required = True
    end
    object ods04M050_TAX_VALUE: TFloatField
      FieldName = 'M050_TAX_VALUE'
      Required = True
    end
    object ods04M050_TOTAL_SUM: TFloatField
      FieldName = 'M050_TOTAL_SUM'
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 336
    Top = 9
  end
  object oqCalcTax: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :v_result := PK_NResident.f_div_proc_calc(:M050_ID, :M050_TYPE' +
        ');'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3035305F4944040000000000000000000000
      090000003A565F524553554C540400000000000000000000000A0000003A4D30
      35305F54595045040000000000000000000000}
    Left = 240
    Top = 152
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 336
    Top = 48
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT ISO_ID, CURR_DESC FROM V_NR_CURRENCY')
    Session = dmMain.OracleSession
    Left = 296
    Top = 48
    object ods01ISO_ID: TStringField
      FieldName = 'ISO_ID'
    end
    object ods01CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
    end
  end
end
