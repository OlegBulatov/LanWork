inherited frm90_WizStep1: Tfrm90_WizStep1
  Caption = 'Мастер прогнозирования'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 32
      Top = 26
      Width = 93
      Height = 13
      Caption = 'Список компаний:'
    end
    object Label2: TLabel
      Left = 32
      Top = 8
      Width = 127
      Height = 13
      Caption = 'Схема прогнозирования:'
    end
    object lblForecast: TLabel
      Left = 168
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
    object xxxDBGrid: TxxxDBGrid
      Left = 32
      Top = 48
      Width = 461
      Height = 357
      DataSource = dsList
      DefaultDrawing = False
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu
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
          FieldName = 'T028_SHOT_NAME'
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
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = 'Название'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          Title.Caption = 'Тип'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          Title.Caption = 'Страна'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 1'
    end
    inherited lblCaption: TLabel
      Width = 86
      Caption = 'Выбор компании'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 298
      Caption = 'Выберите компании, для которых надо составить прогноз'
    end
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  V1.M026_ID,'
      '  V1.M025_ID,'
      '  V1.M026_CHECK,'
      '  V1.T028_ID,'
      '  V1.T028_SHOT_NAME,'
      '  V1.T025_SHOT_NAME,'
      '  V1.T028_INN,'
      '  V1.COUNTRY_NAME'
      'FROM V_NR_REINVEST_FORECAST_ISSUERS V1'
      
        'WHERE V1.T025_ID = DECODE(:T025_ID, 0, V1.T025_ID, 9, DECODE(V1.' +
        'T025_ID, 29, 29, 9), 8)'
      'AND NVL(V1.M025_ID, :M025_ID) = :M025_ID')
    Variables.Data = {
      0300000002000000080000003A543032355F4944040000000000000000000000
      080000003A4D3032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000008000000070000004D3032365F4944010000000000070000004D3032
      355F49440100000000000A0000004D3032365F434845434B0100000000000700
      0000543032385F49440100000000000E000000543032385F53484F545F4E414D
      450100000000000E000000543032355F53484F545F4E414D4501000000000008
      000000543032385F494E4E0100000000000C000000434F554E5452595F4E414D
      45010000000000}
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 328
    Top = 201
    object odsListM026_ID: TFloatField
      FieldName = 'M026_ID'
    end
    object odsListM025_ID: TFloatField
      FieldName = 'M025_ID'
    end
    object odsListM026_CHECK: TStringField
      FieldName = 'M026_CHECK'
      Size = 1
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
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
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 368
    Top = 201
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 324
    Top = 115
    object actShowRez: TAction
      Caption = 'Только резидентов'
      Checked = True
      OnExecute = actShowRezExecute
    end
    object actShowNrez: TAction
      Caption = 'Только нерезидентов'
      OnExecute = actShowNrezExecute
    end
    object actShowAll: TAction
      Caption = 'Всех'
      OnExecute = actShowAllExecute
    end
  end
  object PopupMenu: TPopupMenu
    Images = dm02_Picters.ilCommonPictures
    Left = 192
    Top = 235
    object N1: TMenuItem
      Caption = 'Показывать...'
      object N2: TMenuItem
        Action = actShowRez
      end
      object N3: TMenuItem
        Action = actShowNrez
      end
      object N4: TMenuItem
        Action = actShowAll
      end
    end
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NR_REINVEST_PROFITS.t_M026_rec;'
      'BEGIN'
      '  v_rec.M026_ID := :M026_ID;'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := :M026_TYPE;'
      '  v_rec.M026_VALUE := :M026_VALUE;'
      ''
      
        '  Pk_Nr_Reinvest_Profits.p_update_forecast_data(v_rec, :M026_CHE' +
        'CK);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A4D3032355F4944040000000000000000000000
      0B0000003A4D3032365F56414C55450400000000000000000000000B0000003A
      4D3032365F434845434B050000000000000000000000080000003A4D3032365F
      49440400000000000000000000000A0000003A4D3032365F5459504504000000
      0000000000000000}
    Left = 328
    Top = 249
  end
end
