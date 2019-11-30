inherited F005_LoadPage2Grid: TF005_LoadPage2Grid
  Width = 941
  Height = 516
  inherited xxxDBGrid: TxxxDBGrid
    Top = 58
    Width = 941
    Height = 435
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.Indexes = <
      item
        FieldName = 'T232_FILE_NAME'
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
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELETE_FLAG'
        PickList.Strings = ()
        Title.Caption = 'Удалить данные'
        Width = 76
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
        FieldName = 'T232_REPORT_DATE'
        PickList.Strings = ()
        Title.Caption = 'Отчетный период'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_FILE_PART'
        PickList.Strings = ()
        Title.Caption = 'Раздел'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_FILE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование файла'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_FILE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата файла'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_INFO'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T232_STATE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T232_STATE_DESC'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_FILE_DATE_OLD'
        PickList.Strings = ()
        Title.Caption = 'Дата загруженного файла'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_LOAD_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата загрузки'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_LOAD_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Загружено строк'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T232_LOADER'
        PickList.Strings = ()
        Title.Caption = 'Загружал'
        Width = 200
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 33
    Width = 941
    inherited tlbList: TToolBar
      Width = 484
      ButtonWidth = 88
      inherited tbSeparator02: TToolButton
        Enabled = False
      end
      object ToolButton1: TToolButton
        Left = 245
        Top = 0
        Action = actLoadData
      end
      object ToolButton6: TToolButton
        Left = 333
        Top = 0
        Action = actDeleteData
      end
      object ToolButton2: TToolButton
        Left = 421
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 47
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 429
        Top = 0
        Action = actOpenFile
        AutoSize = True
      end
    end
    inherited tlbExcel: TToolBar
      Left = 561
    end
    inherited tlbSeach: TToolBar
      Left = 595
    end
    inherited tlbFilter: TToolBar
      Left = 662
    end
    inherited tlbSelect: TToolBar
      Left = 743
    end
  end
  object GroupBox1: TPanel [2]
    Left = 0
    Top = 493
    Width = 941
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
    object Label6: TLabel
      Left = 434
      Top = 7
      Width = 43
      Height = 13
      Caption = 'Ошибок:'
      ParentShowHint = False
      ShowHint = True
    end
  end
  object paFilters: TPanel [3]
    Left = 0
    Top = 0
    Width = 941
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline PeriodFilter: TF005_PeriodFilter
      Left = 8
      Top = 6
    end
    object Button1: TButton
      Left = 526
      Top = 4
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actLoadData: TAction
      Category = 'Adv'
      Caption = 'Загрузить...'
      Hint = 'Загрузить данные из файла'
      ImageIndex = 13
      OnExecute = actLoadDataExecute
      OnUpdate = actLoadDataUpdate
    end
    object actOpenFile: TAction
      Category = 'Adv'
      Caption = 'Открыть'
      Hint = 'Открыть файл...'
      ImageIndex = 46
      OnExecute = actOpenFileExecute
    end
    object actDeleteData: TAction
      Category = 'Adv'
      Caption = 'Удалить...'
      Hint = 'Удалить данные файла'
      ImageIndex = 4
      OnExecute = actDeleteDataExecute
      OnUpdate = actDeleteDataUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  LOAD_FLAG,'
      '  DELETE_FLAG,'
      '  T232_ID,'
      '  T055_ID,'
      '  T232_REPORT_DATE,'
      '  T232_LOAD_DATE,'
      '  T232_FILE_PART,'
      '  T232_FILE_NAME,'
      '  T232_FILE_DATE,'
      '  T232_FILE_DATE_OLD,'
      '  T232_INFO,'
      '  T232_STATE,'
      '  T232_STATE_DESC,'
      '  T232_ERR_MSG,'
      '  T232_LOAD_COUNT,'
      '  T232_LOADER'
      'FROM V_405_415_LOAD_FILES'
      ''
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543035355F494401000000000007000000543032
      385F4944010000000000090000004C4F41445F464C41470100000000000B0000
      0044454C4554455F464C414701000000000007000000543233325F4944010000
      0000000E000000543233325F4C4F41445F444154450100000000000E00000054
      3233325F46494C455F4E414D450100000000000E000000543233325F46494C45
      5F4441544501000000000009000000543233325F494E464F0100000000000A00
      0000543233325F53544154450100000000000F000000543233325F5354415445
      5F444553430100000000000C000000543233325F4552525F4D53470100000000
      0010000000543233325F5245504F52545F444154450100000000001200000054
      3233325F46494C455F444154455F4F4C440100000000000F000000543233325F
      4C4F41445F434F554E540100000000000B000000543233325F4C4F4144455201
      00000000000E000000543233325F46494C455F50415254010000000000}
    object odsListLOAD_FLAG: TStringField
      FieldName = 'LOAD_FLAG'
      Size = 1
    end
    object odsListDELETE_FLAG: TStringField
      FieldName = 'DELETE_FLAG'
      Size = 1
    end
    object odsListT232_ID: TFloatField
      FieldName = 'T232_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT232_LOAD_DATE: TDateTimeField
      FieldName = 'T232_LOAD_DATE'
    end
    object odsListT232_FILE_PART: TStringField
      DisplayWidth = 16
      FieldName = 'T232_FILE_PART'
      Size = 16
    end
    object odsListT232_FILE_NAME: TStringField
      FieldName = 'T232_FILE_NAME'
      Size = 500
    end
    object odsListT232_FILE_DATE: TDateTimeField
      FieldName = 'T232_FILE_DATE'
    end
    object odsListT232_INFO: TStringField
      FieldName = 'T232_INFO'
      Size = 500
    end
    object odsListT232_STATE: TStringField
      FieldName = 'T232_STATE'
      Size = 1
    end
    object odsListT232_STATE_DESC: TStringField
      FieldName = 'T232_STATE_DESC'
      Size = 1000
    end
    object odsListT232_ERR_MSG: TStringField
      FieldName = 'T232_ERR_MSG'
      Size = 1000
    end
    object odsListT232_REPORT_DATE: TStringField
      FieldName = 'T232_REPORT_DATE'
      Size = 255
    end
    object odsListT232_FILE_DATE_OLD: TDateTimeField
      FieldName = 'T232_FILE_DATE_OLD'
    end
    object odsListT232_LOAD_COUNT: TFloatField
      FieldName = 'T232_LOAD_COUNT'
    end
    object odsListT232_LOADER: TStringField
      FieldName = 'T232_LOADER'
      Size = 255
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_415_data.p_save_checks(:T232_ID, :LOAD_FLAG, :DELETE_FL' +
        'AG);'
      '  COMMIT;'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543233325F4944040000000000000000000000
      0A0000003A4C4F41445F464C41470500000000000000000000000C0000003A44
      454C4554455F464C4147050000000000000000000000}
  end
  object oqLogSuccess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_415_DATA.p_log_success (:T232_ID, :USER);'
      '  COMMIT;'
      'END; '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543233325F4944040000000000000000000000
      050000003A55534552050000000000000000000000}
    Left = 272
    Top = 271
  end
  object oqLogError: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_415_DATA.p_log_error(:T232_ID, :T232_ERR_MSG; :USER);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543233325F4944040000000000000000000000
      0D0000003A543233325F4552525F4D5347050000000000000000000000050000
      003A55534552050000000000000000000000}
    Left = 304
    Top = 271
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
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_Data.p_do_before_load(:T232_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543233325F4944040000000000000000000000}
    Left = 208
    Top = 272
  end
  object oqAfterLoad: TOracleQuery
    Session = dmMain.OracleSession
    Left = 240
    Top = 272
  end
end
