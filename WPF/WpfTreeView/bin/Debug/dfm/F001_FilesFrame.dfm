inherited F001_Files: TF001_Files
  Width = 1047
  Height = 516
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1047
    Height = 447
    AdvSettings.Indexes = <
      item
        FieldName = 'DELETE_FLAG'
        SortType = stDesc
      end
      item
        FieldName = 'LOAD_FLAG'
        SortType = stDesc
      end
      item
        FieldName = 'SUM_COUNT'
        SortType = stAsc
      end
      item
        FieldName = 'T202_FILE_NAME'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'LOAD_FLAG'
        PickList.Strings = ()
        Title.Caption = 'Загружать данные'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELETE_FLAG'
        PickList.Strings = ()
        Title.Caption = 'Удалить данные'
        Width = 60
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
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T028_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование файла'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата файла'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_INFO'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_STATE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_STATE_DESC'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_EXISTS'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_EXISTS_DESC'
        PickList.Strings = ()
        Title.Caption = 'Файл найден'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_DATE_NEW'
        PickList.Strings = ()
        Title.Caption = 'Изменилась дата файла'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Загружено строк'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_LOAD_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата загрузки'
        Width = 125
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1047
    inherited tlbList: TToolBar
      Width = 492
      ButtonWidth = 88
      inherited tbSeparator02: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 245
        Top = 0
        Action = actLoad
      end
      object ToolButton2: TToolButton
        Left = 333
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 47
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 341
        Top = 0
        Action = actOpenFile
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 416
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 47
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 424
        Top = 0
        Action = actShowData
      end
    end
    inherited tlbExcel: TToolBar
      Left = 569
    end
    inherited tlbSeach: TToolBar
      Left = 603
    end
    inherited tlbFilter: TToolBar
      Left = 670
    end
    inherited tlbSelect: TToolBar
      Left = 751
    end
  end
  object GroupBox1: TPanel [2]
    Left = 0
    Top = 493
    Width = 1047
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 74
      Height = 13
      Hint = 'Всего компаний'
      Caption = 'Всего файлов:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 155
      Top = 7
      Width = 57
      Height = 13
      Caption = 'Загружать:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 291
      Top = 7
      Width = 46
      Height = 13
      Caption = 'Удалять:'
      ParentShowHint = False
      ShowHint = True
    end
    object DBText1: TDBText
      Left = 87
      Top = 7
      Width = 46
      Height = 17
      DataField = 'ALL_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
    object DBText2: TDBText
      Left = 215
      Top = 7
      Width = 46
      Height = 17
      DataField = 'LOAD_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
    object DBText4: TDBText
      Left = 340
      Top = 7
      Width = 46
      Height = 17
      DataField = 'DEL_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
    object Label6: TLabel
      Left = 434
      Top = 7
      Width = 43
      Height = 13
      Caption = 'Ошибок:'
      ParentShowHint = False
      ShowHint = True
    end
    object DBText6: TDBText
      Left = 478
      Top = 7
      Width = 46
      Height = 17
      DataField = 'ERR_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1047
    inherited Panel1: TPanel
      Left = 1020
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actLoad: TAction
      Category = 'Adv'
      Caption = 'Загрузить...'
      Hint = 'Запустить процесс загрузки данных из файлов...'
      ImageIndex = 13
      OnExecute = actLoadExecute
    end
    object actOpenFile: TAction
      Category = 'Adv'
      Caption = 'Открыть'
      Hint = 'Открыть файл...'
      ImageIndex = 46
      OnExecute = actOpenFileExecute
    end
    object actShowData: TAction
      Category = 'Adv'
      Caption = 'Данные...'
      Hint = 'Просмотр данных файла'
      ImageIndex = 11
      OnExecute = actShowDataExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '   LOAD_FLAG,'
      '  DELETE_FLAG,T202_ID,'
      '  T055_ID,'
      '  T028_ID,'
      '  T202_LOAD_DATE,'
      '  T202_FILE_NAME,'
      '         T202_FILE_DATE,'
      '         T202_FILE_DATE_NEW,'
      '  T202_INFO,'
      '  T202_STATE,'
      '  T202_STATE_DESC,'
      '  T202_EXISTS,'
      '  T202_EXISTS_DESC,'
      '  T202_ERR_MSG,'
      '  SUM_COUNT'
      'FROM V_405_ND_LOAD_FILES'
      'WHERE T055_ID = :T055_ID'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000543230325F494401000000000007000000543035
      355F494401000000000007000000543032385F49440100000000000E00000054
      3230325F4C4F41445F444154450100000000000E000000543230325F46494C45
      5F4E414D4501000000000009000000543230325F494E464F0100000000000A00
      0000543230325F53544154450100000000000F000000543230325F5354415445
      5F444553430100000000000B000000543230325F455849535453010000000000
      10000000543230325F4558495354535F44455343010000000000090000004C4F
      41445F464C41470100000000000B00000044454C4554455F464C414701000000
      00000C000000543230325F4552525F4D53470100000000000900000053554D5F
      434F554E540100000000000E000000543230325F46494C455F44415445010000
      00000012000000543230325F46494C455F444154455F4E4557010000000000}
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT202_LOAD_DATE: TDateTimeField
      FieldName = 'T202_LOAD_DATE'
    end
    object odsListT202_FILE_NAME: TStringField
      DisplayWidth = 50
      FieldName = 'T202_FILE_NAME'
      Size = 500
    end
    object odsListT202_INFO: TStringField
      FieldName = 'T202_INFO'
      Size = 500
    end
    object odsListT202_STATE: TStringField
      FieldName = 'T202_STATE'
      Size = 1
    end
    object odsListT202_STATE_DESC: TStringField
      FieldName = 'T202_STATE_DESC'
      Size = 1000
    end
    object odsListT202_EXISTS: TStringField
      FieldName = 'T202_EXISTS'
      Size = 1
    end
    object odsListT202_EXISTS_DESC: TStringField
      FieldName = 'T202_EXISTS_DESC'
      Size = 14
    end
    object odsListLOAD_FLAG: TStringField
      FieldName = 'LOAD_FLAG'
      Size = 1
    end
    object odsListDELETE_FLAG: TStringField
      FieldName = 'DELETE_FLAG'
      Size = 1
    end
    object odsListT202_ERR_MSG: TStringField
      FieldName = 'T202_ERR_MSG'
      Size = 1000
    end
    object odsListSUM_COUNT: TFloatField
      FieldName = 'SUM_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT202_FILE_DATE: TDateTimeField
      FieldName = 'T202_FILE_DATE'
    end
    object odsListT202_FILE_DATE_NEW: TDateTimeField
      FieldName = 'T202_FILE_DATE_NEW'
    end
  end
  object oqRegFiles: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  PK_405_ND_DATA.P_REGISTER_FILES ( :I_T055_ID, :I_FILE_LIST, :i' +
        '_DATE_LIST );'
      '  COMMIT; '
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000030000000A0000003A495F543035355F494404000000000000000000
      00000C0000003A495F46494C455F4C495354050000000000000001000000FF00
      0000FF0000000C0000003A495F444154455F4C4953540C000000000000000100
      0000FF00000000000000}
    Left = 192
    Top = 304
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  ALL_COUNT,'
      '  LOAD_COUNT,'
      '  DEL_COUNT,'
      '  ERR_COUNT'
      'FROM V_405_ND_LOAD_TOTAL'
      'WHERE    T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000009000000414C4C5F434F554E540100000000000A0000004C
      4F41445F434F554E540100000000000900000044454C5F434F554E5401000000
      0000090000004552525F434F554E54010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 272
    object odsTotalALL_COUNT: TFloatField
      FieldName = 'ALL_COUNT'
    end
    object odsTotalLOAD_COUNT: TFloatField
      FieldName = 'LOAD_COUNT'
    end
    object odsTotalDEL_COUNT: TFloatField
      FieldName = 'DEL_COUNT'
    end
    object odsTotalERR_COUNT: TFloatField
      FieldName = 'ERR_COUNT'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 224
    Top = 272
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_do_before_load ( :i_T202_ID);'
      '  COMMIT;'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543230325F494404000000000000000000
      0000}
    Left = 224
    Top = 303
  end
  object oqLogSuccess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_log_success ( :I_T202_ID);'
      '  COMMIT;'
      'END; '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543230325F494404000000000000000000
      0000}
    Left = 288
    Top = 303
  end
  object oqLogError: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_log_error ( :i_T202_ID, :i_T202_ERR_MSG );'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543230325F494404000000000000000000
      00000F0000003A495F543230325F4552525F4D53470500000000000000000000
      00}
    Left = 256
    Top = 303
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_do_delete ( :i_T202_ID);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543230325F494404000000000000000000
      0000}
    Left = 192
    Top = 336
  end
end
