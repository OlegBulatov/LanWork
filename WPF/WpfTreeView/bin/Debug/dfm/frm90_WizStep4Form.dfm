inherited frm90_WizStep4: Tfrm90_WizStep4
  Caption = 'Мастер прогнозирования'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 99
      Height = 13
      Caption = 'Начальный период:'
    end
    object lblPeriod: TLabel
      Left = 184
      Top = 24
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
    object Label2: TLabel
      Left = 32
      Top = 48
      Width = 81
      Height = 13
      Caption = 'Выбор индекса:'
    end
    object Label3: TLabel
      Left = 32
      Top = 72
      Width = 79
      Height = 13
      Caption = 'Версия версии:'
    end
    object Label4: TLabel
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
    object Label5: TLabel
      Left = 32
      Top = 96
      Width = 96
      Height = 13
      Caption = 'Значение индекса:'
    end
    object lblIndex01: TLabel
      Left = 136
      Top = 96
      Width = 59
      Height = 13
      Caption = 'lblIndex01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 32
      Top = 260
      Width = 96
      Height = 13
      Caption = 'Значение индекса:'
    end
    object lblIndex02: TLabel
      Left = 136
      Top = 260
      Width = 59
      Height = 13
      Caption = 'lblIndex02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gr01: TxxxDBGrid
      Left = 32
      Top = 112
      Width = 465
      Height = 129
      DataSource = dsIndex01
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      AdvSettings.Guid = '{4B8588BD-5046-45B5-AF7C-E87FD87FEDC8}'
      AdvSettings.AutoFilter = False
      AdvSettings.Enabled = True
      AdvSettings.DesignMode = False
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Период'
            end>
        end>
      AdvSettings.ColumnsAutoSize = False
      AdvSettings.LookUpField.Strings = (
        'Введите имена полей в формате KeyFieldName=ListFieldName')
      DragRows = False
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M024_VALUE'
          Title.Caption = 'Значение'
          Width = 110
          Visible = True
        end>
    end
    object lcb01: TDBLookupComboBox
      Left = 152
      Top = 44
      Width = 345
      Height = 21
      KeyField = 'M023_ID'
      ListField = 'M023_NAME'
      ListSource = ds01
      TabOrder = 0
    end
    object lcb02: TDBLookupComboBox
      Left = 152
      Top = 68
      Width = 345
      Height = 21
      KeyField = 'M027_ID'
      ListField = 'M027_NAME'
      ListSource = ds02
      TabOrder = 1
    end
    object gr02: TxxxDBGrid
      Left = 32
      Top = 276
      Width = 465
      Height = 129
      DataSource = dsIndex02
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      AdvSettings.Guid = '{4B8588BD-5046-45B5-AF7C-E87FD87FEDC8}'
      AdvSettings.AutoFilter = False
      AdvSettings.Enabled = True
      AdvSettings.DesignMode = False
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Период'
            end>
        end>
      AdvSettings.ColumnsAutoSize = False
      AdvSettings.LookUpField.Strings = (
        'Введите имена полей в формате KeyFieldName=ListFieldName')
      DragRows = False
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M024_VALUE'
          Title.Caption = 'Значение'
          Width = 110
          Visible = True
        end>
    end
  end
  inherited pnlButtons: TPanel
    inherited btnNext: TButton
      Caption = 'Готово'
    end
    inherited btnBack: TButton
      Left = 200
    end
    object btnSave: TButton
      Left = 280
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Сохранить'
      ModalResult = 1
      TabOrder = 3
      OnClick = btnSaveClick
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 4'
    end
    inherited lblCaption: TLabel
      Width = 78
      Caption = 'Выбор индекса'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 351
      Caption = 'Выберите индекс, на основании которого будет произведен прогноз'
    end
  end
  object odsIndex01: TOracleDataSet
    SQL.Strings = (
      
        'select V1.T055_ID, V1.M023_ID, V1.M023_NAME, V1.M023_DESCR, V1.M' +
        '027_ID, V1.M024_ID,'
      ' V1.M024_VALUE, V2.T055_LONG_NAME, V2.T055_START_DATE'
      'from V_NR_REINVEST_INDEX_DATA V1,'
      '     V_NR_TIME V2'
      'where V1.T055_ID >= :T055_ID'
      'and V1.M023_ID = :M023_ID'
      'and V1.M027_ID = :M027_ID'
      'and V1.T055_ID = V2.T055_ID')
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      080000003A4D3032335F4944040000000000000000000000080000003A4D3032
      375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543035355F4944010000000000070000004D3032
      335F4944010000000000090000004D3032335F4E414D450100000000000A0000
      004D3032335F4445534352010000000000070000004D3032375F494401000000
      0000070000004D3032345F49440100000000000A0000004D3032345F56414C55
      450100000000000E000000543035355F4C4F4E475F4E414D450100000000000F
      000000543035355F53544152545F44415445010000000000}
    Session = dmMain.OracleSession
    Left = 288
    Top = 192
    object odsIndex01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsIndex01M023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object odsIndex01M023_NAME: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
    object odsIndex01M023_DESCR: TStringField
      FieldName = 'M023_DESCR'
      Size = 4000
    end
    object odsIndex01M027_ID: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object odsIndex01M024_ID: TFloatField
      FieldName = 'M024_ID'
      Required = True
    end
    object odsIndex01M024_VALUE: TFloatField
      FieldName = 'M024_VALUE'
      Required = True
    end
    object odsIndex01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsIndex01T055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
  end
  object dsIndex01: TDataSource
    DataSet = odsIndex01
    Left = 336
    Top = 193
  end
  object oqMakeForecast: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_NR_Reinvest_Profits.p_make_forecast(:M025_ID);'
      'end; '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    Left = 384
    Top = 313
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' V2.M026_ID,'
      ' V2.M025_ID,'
      ' DECODE(V2.M026_ID, NULL, '#39'N'#39', '#39'Y'#39') M026_CHECK,'
      ' V1.ALG_TYPE,'
      ' V1.M023_ID,'
      ' V1.M023_NAME,'
      ' V1.M023_ID1,'
      ' V1.M023_NAME1,'
      ' V1.M023_ID2,'
      ' V1.M023_NAME2'
      'FROM V_NR_REINVEST_INDEX_ALGORITHMS V1,'
      '     V_NR_REINVEST_FORECAST_INDEX V2'
      'WHERE V1.M023_ID = V2.M023_ID (+)'
      'AND   :M025_ID = V2.M025_ID (+)'
      'ORDER BY V1.M023_ID'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A000000070000004D3032365F4944010000000000070000004D3032
      355F49440100000000000A0000004D3032365F434845434B0100000000000700
      00004D3032335F4944010000000000090000004D3032335F4E414D4501000000
      000008000000414C475F54595045010000000000080000004D3032335F494431
      0100000000000A0000004D3032335F4E414D4531010000000000080000004D30
      32335F4944320100000000000A0000004D3032335F4E414D4532010000000000}
    Session = dmMain.OracleSession
    Left = 344
    Top = 121
    object ods01M026_ID: TFloatField
      FieldName = 'M026_ID'
    end
    object ods01M025_ID: TFloatField
      FieldName = 'M025_ID'
    end
    object ods01M026_CHECK: TStringField
      FieldName = 'M026_CHECK'
      Size = 1
    end
    object ods01ALG_TYPE: TFloatField
      FieldName = 'ALG_TYPE'
    end
    object ods01M023_ID: TFloatField
      FieldName = 'M023_ID'
    end
    object ods01M023_NAME: TStringField
      FieldName = 'M023_NAME'
      Size = 255
    end
    object ods01M023_ID1: TFloatField
      FieldName = 'M023_ID1'
    end
    object ods01M023_NAME1: TStringField
      FieldName = 'M023_NAME1'
      Size = 255
    end
    object ods01M023_ID2: TFloatField
      FieldName = 'M023_ID2'
    end
    object ods01M023_NAME2: TStringField
      FieldName = 'M023_NAME2'
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    OnDataChange = ds01DataChange
    Left = 392
    Top = 121
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' V1.M026_ID,'
      ' V1.M025_ID,'
      ' V1.M026_CHECK,'
      ' V1.M027_ID,'
      ' V1.M027_NAME'
      'FROM V_NR_REINVEST_FORECAST_IND_VER V1'
      'WHERE V1.M025_ID = :M025_ID'
      'ORDER BY V1.M027_ID'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000070000004D3032365F4944010000000000070000004D3032
      355F49440100000000000A0000004D3032365F434845434B0100000000000700
      00004D3032375F4944010000000000090000004D3032375F4E414D4501000000
      0000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 153
    object ods02M026_ID: TFloatField
      FieldName = 'M026_ID'
    end
    object ods02M025_ID: TFloatField
      FieldName = 'M025_ID'
    end
    object ods02M026_CHECK: TStringField
      FieldName = 'M026_CHECK'
      Size = 1
    end
    object ods02M027_ID: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object ods02M027_NAME: TStringField
      FieldName = 'M027_NAME'
      Required = True
      Size = 255
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    OnDataChange = ds02DataChange
    Left = 400
    Top = 153
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NR_REINVEST_PROFITS.t_M026_rec;'
      'BEGIN'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := :M026_TYPE;'
      '  v_rec.M026_VALUE := :M026_VALUE;'
      ''
      '  Pk_Nr_Reinvest_Profits.p_set_forecast_data(v_rec);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3032355F4944040000000000000000000000
      0B0000003A4D3032365F56414C55450400000000000000000000000A0000003A
      4D3032365F54595045040000000000000000000000}
    Left = 384
    Top = 257
  end
  object odsIndex02: TOracleDataSet
    SQL.Strings = (
      
        'select V1.T055_ID, V1.M023_ID, V1.M023_NAME, V1.M023_DESCR, V1.M' +
        '027_ID, V1.M024_ID,'
      ' V1.M024_VALUE, V2.T055_LONG_NAME, V2.T055_START_DATE'
      'from V_NR_REINVEST_INDEX_DATA V1,'
      '     V_NR_TIME V2'
      'where V1.T055_ID >= :T055_ID'
      'and V1.M023_ID = :M023_ID'
      'and V1.M027_ID = :M027_ID'
      'and V1.T055_ID = V2.T055_ID')
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      080000003A4D3032335F4944040000000000000000000000080000003A4D3032
      375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543035355F4944010000000000070000004D3032
      335F4944010000000000090000004D3032335F4E414D450100000000000A0000
      004D3032335F4445534352010000000000070000004D3032375F494401000000
      0000070000004D3032345F49440100000000000A0000004D3032345F56414C55
      450100000000000E000000543035355F4C4F4E475F4E414D450100000000000F
      000000543035355F53544152545F44415445010000000000}
    Session = dmMain.OracleSession
    Left = 288
    Top = 385
    object FloatField1: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'M023_DESCR'
      Size = 4000
    end
    object FloatField3: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'M024_ID'
      Required = True
    end
    object FloatField5: TFloatField
      FieldName = 'M024_VALUE'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
  end
  object dsIndex02: TDataSource
    DataSet = odsIndex02
    Left = 336
    Top = 385
  end
end
