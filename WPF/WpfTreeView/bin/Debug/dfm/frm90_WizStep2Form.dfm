inherited frm90_WizStep2: Tfrm90_WizStep2
  Caption = 'Мастер прогнозирования'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 32
      Top = 40
      Width = 41
      Height = 13
      Caption = 'Период:'
    end
    object Label2: TLabel
      Left = 32
      Top = 8
      Width = 127
      Height = 13
      Caption = 'Схема прогнозирования:'
    end
    object lblForecast: TLabel
      Left = 184
      Top = 8
      Width = 63
      Height = 13
      Caption = 'lblForecast'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lcbPeriod: TDBLookupComboBox
      Left = 112
      Top = 36
      Width = 145
      Height = 21
      KeyField = 'T055_ID'
      ListField = 'T055_LONG_NAME'
      ListSource = dsPeriod
      TabOrder = 0
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 2'
    end
    inherited lblCaption: TLabel
      Width = 139
      Caption = 'Выбор начального периода'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 221
      Caption = 'Выберите последний рассчитанный период'
    end
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' V2.M026_ID,'
      ' V2.M025_ID,'
      ' DECODE(V2.M026_ID, NULL, '#39'N'#39', '#39'Y'#39') M026_CHECK,'
      ' V1.T055_ID,'
      ' V1.T055_LONG_NAME'
      'FROM V_NR_TIME V1,'
      '     V_NR_REINVEST_FORECAST_PERIODS V2'
      'WHERE V1.T055_TYPE = '#39'Y'#39
      'AND   V1.T055_ID = V2.T055_ID (+)'
      'AND   2 = V2.M026_TYPE (+)'
      'AND   :M025_ID = V2.M025_ID (+)'
      'ORDER BY V1.T055_ID')
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000070000004D3032365F494401000000
      0000070000004D3032355F49440100000000000A0000004D3032365F43484543
      4B010000000000}
    Session = dmMain.OracleSession
    Left = 184
    Top = 169
    object odsPeriodM026_ID: TFloatField
      FieldName = 'M026_ID'
    end
    object odsPeriodM025_ID: TFloatField
      FieldName = 'M025_ID'
    end
    object odsPeriodM026_CHECK: TStringField
      FieldName = 'M026_CHECK'
      Size = 1
    end
    object odsPeriodT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsPeriodT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 256
    Top = 169
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NR_REINVEST_PROFITS.t_M026_rec;'
      'BEGIN'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := 2;'
      '  v_rec.M026_VALUE := :T055_ID;'
      ''
      '  Pk_Nr_Reinvest_Profits.p_set_forecast_data(v_rec);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3032355F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    Left = 256
    Top = 249
  end
end
