inherited frm90_WizStep3: Tfrm90_WizStep3
  Caption = 'Мастер прогнозирования'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 179
      Height = 13
      Caption = 'Список прогнозируемых периодов:'
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
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 344
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Фильтр'
    end
    object xxxDBGrid: TxxxDBGrid
      Left = 36
      Top = 72
      Width = 457
      Height = 297
      DataSource = dsPeriod
      DefaultDrawing = False
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = xxxDBGridCellClick
      OnDrawColumnCell = xxxDBGridDrawColumnCell
      AdvSettings.Guid = '{4B8588BD-5046-45B5-AF7C-E87FD87FEDC8}'
      AdvSettings.AutoFilter = False
      AdvSettings.Enabled = True
      AdvSettings.DesignMode = False
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_LONG_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <>
      AdvSettings.ColumnsAutoSize = False
      AdvSettings.LookUpField.Strings = (
        'Введите имена полей в формате KeyFieldName=ListFieldName')
      DragRows = False
      Columns = <
        item
          Expanded = False
          FieldName = 'M026_CHECK'
          Title.Caption = '  +'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          Title.Caption = 'Наименование'
          Width = 250
          Visible = True
        end>
    end
    object cbFilter: TComboBox
      Left = 392
      Top = 44
      Width = 102
      Height = 21
      Style = csDropDownList
      DropDownCount = 3
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbFilterChange
      Items.Strings = (
        'Год'
        'Квартал'
        'Месяц')
    end
    object Button2: TButton
      Left = 288
      Top = 376
      Width = 100
      Height = 25
      Caption = 'Снять выделение'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 398
      Top = 376
      Width = 100
      Height = 25
      Caption = 'Выделить все'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 3'
    end
    inherited lblCaption: TLabel
      Width = 170
      Caption = 'Выбор прогнозируемого периода'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 295
      Caption = 'Выберите период, для которого нужно составить прогноз'
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
      'WHERE V1.T055_TYPE = :T055_TYPE'
      'AND   V1.T055_ID = V2.T055_ID (+)'
      'AND   3 = V2.M026_TYPE (+)'
      'AND   :M025_ID = V2.M025_ID (+)'
      'AND   V1.T055_ID >= :T055_ID'
      '')
    Variables.Data = {
      0300000003000000080000003A4D3032355F4944040000000000000000000000
      080000003A543035355F49440400000000000000000000000A0000003A543035
      355F54595045050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000070000004D3032365F494401000000
      0000070000004D3032355F49440100000000000A0000004D3032365F43484543
      4B010000000000}
    OnApplyRecord = odsPeriodApplyRecord
    CommitOnPost = False
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
      '  v_rec Pk_Nr_Reinvest_Profits.t_M026_rec;'
      'BEGIN'
      '  v_rec.M026_ID := :M026_ID;'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := :M026_TYPE;'
      '  v_rec.M026_VALUE := :M026_VALUE;'
      ''
      
        '  Pk_Nr_Reinvest_Profits.p_update_forecast_data(v_rec, :M026_CHE' +
        'CK);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A4D3032355F4944040000000000000000000000
      0B0000003A4D3032365F434845434B050000000000000000000000080000003A
      4D3032365F49440400000000000000000000000B0000003A4D3032365F56414C
      55450400000000000000000000000A0000003A4D3032365F5459504504000000
      0000000000000000}
    Left = 328
    Top = 249
  end
  object odsFilter: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' M026_ID,'
      ' M025_ID,'
      ' M026_VALUE'
      'FROM M026_REINVEST_FORECAST_DATA'
      'WHERE M026_TYPE = 4'
      'AND  M025_ID = :M025_ID'
      '')
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000070000004D3032365F494401000000
      0000070000004D3032355F49440100000000000A0000004D3032365F43484543
      4B010000000000}
    OnApplyRecord = odsPeriodApplyRecord
    Session = dmMain.OracleSession
    Left = 448
    Top = 105
    object odsFilterM026_ID: TFloatField
      FieldName = 'M026_ID'
    end
    object odsFilterM025_ID: TFloatField
      FieldName = 'M025_ID'
    end
    object odsFilterM026_VALUE: TFloatField
      FieldName = 'M026_VALUE'
    end
  end
  object oqSet: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Nr_Reinvest_Profits.t_M026_rec;'
      'BEGIN'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := 4;'
      '  v_rec.M026_VALUE := :M026_VALUE;'
      ''
      '  Pk_Nr_Reinvest_Profits.p_set_forecast_data(v_rec);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3032355F4944040000000000000000000000
      0B0000003A4D3032365F56414C5545040000000000000000000000}
    Left = 272
    Top = 249
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DELETE FROM M026_REINVEST_FORECAST_DATA'
      '  WHERE M025_ID = :M025_ID'
      '  AND M026_TYPE = 3'
      '  AND M026_VALUE < :T055_ID;'
      ''
      '  --COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3032355F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    Left = 264
    Top = 113
  end
end
