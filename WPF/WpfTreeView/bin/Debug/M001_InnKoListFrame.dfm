inherited M001_InnKoList: TM001_InnKoList
  Width = 975
  Height = 527
  inherited xxxDBGrid: TxxxDBGrid
    Top = 186
    Width = 975
    Height = 341
    AdvSettings.Indexes = <
      item
        FieldName = 'T183_REGN'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_START'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата начала действия'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_END'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата окончания действия'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (ИНН)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_SHORT_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (наименование)'
        Width = 400
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_REGN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (рег.№ в КГРКО)'
        Width = 111
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_ACTIVE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (индикатор действующей КО в КГРКО)'
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_IS_NKO'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Небанковская КО'
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_BIC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'БИК'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_CITY'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Город'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_ADDRESS'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Адрес'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ERR_DESC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Ошибки'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 161
    Width = 975
    inherited tlbSelect: TToolBar
      Width = 290
      ButtonHeight = 22
      ButtonWidth = 106
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton3: TToolButton
        Left = 83
        Top = 0
        Action = actChanges
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 172
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 72
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 180
        Top = 0
        Action = actCheck
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 975
    Height = 140
    inherited GroupBox1: TGroupBox
      Width = 527
      Height = 133
      object Label1: TLabel
        Left = 159
        Top = 16
        Width = 12
        Height = 13
        Caption = ' c '
      end
      object Label2: TLabel
        Left = 349
        Top = 16
        Width = 18
        Height = 13
        Caption = ' по '
      end
      object cbPeriod: TCheckBox
        Left = 8
        Top = 16
        Width = 120
        Height = 17
        Caption = 'Период действия'
        TabOrder = 0
      end
      object lcbDateFrom: TxxxDBLookupCheckCombo
        Left = 176
        Top = 13
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'DATE_FROM'
        LookupDisplay = 'DATE_FROM'
        LookupSource = dsDateFrom
        TabOrder = 1
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbDateTo: TxxxDBLookupCheckCombo
        Left = 371
        Top = 13
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'DATE_TO'
        LookupDisplay = 'DATE_TO'
        LookupSource = dsDateTo
        TabOrder = 2
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object cbRegn: TCheckBox
        Left = 8
        Top = 40
        Width = 120
        Height = 17
        Caption = 'Рег. номер'
        TabOrder = 3
      end
      object cbShowFils: TCheckBox
        Left = 8
        Top = 64
        Width = 153
        Height = 17
        Caption = 'Показывать филиалы'
        TabOrder = 4
        OnClick = cbShowFilsClick
      end
      object cbShowActive: TCheckBox
        Left = 8
        Top = 87
        Width = 153
        Height = 17
        Caption = 'Только действующие КО'
        TabOrder = 5
      end
      object cbShowDiffs: TCheckBox
        Left = 8
        Top = 111
        Width = 233
        Height = 17
        Caption = 'Только различающиеся с ДИТ записи'
        TabOrder = 6
      end
    end
    inherited Button1: TButton
      Left = 539
      Top = 9
    end
    object lceRegn: TRxLookupEdit
      Left = 179
      Top = 41
      Width = 146
      Height = 21
      LookupDisplay = 'T183_REGN'
      LookupField = 'T183_REGN'
      LookupSource = dsRegn
      TabOrder = 2
      Text = 'lceRegn'
      OnCloseUp = lceRegnCloseUp
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 140
    Width = 975
    inherited Panel1: TPanel
      Left = 948
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 347
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
    object actCheck: TAction
      Caption = 'Проверка ф405'
      Hint = 'Проверить данные 1 и 2 разделов ф405'
      ImageIndex = 71
      OnExecute = actCheckExecute
    end
    object actChanges: TAction
      Caption = 'Изменения'
      Enabled = False
      Hint = 'Показать историю изменений'
      ImageIndex = 12
      Visible = False
      OnExecute = actChangesExecute
      OnUpdate = actChangesUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 286
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T183_ID,'
      '       T183_DATE_START,'
      '       T183_DATE_END,'
      '       T183_INN,'
      '       T183_SHORT_NAME,'
      '       T183_REGN,'
      '       T183_ACTIVE,'
      '       T183_BIC,'
      '       T183_CITY,'
      '       T183_ADDRESS,'
      '       T183_IS_NKO,'
      '       T183_IS_FIL,'
      '       BIC,'
      '       NAME_P,'
      '       ADR,'
      '       ERR_CODES,'
      '       ERR_DESC,'
      '       HAS_DIFFS,'
      '       HAS_CHANGES'
      'from   V_405_INN_KO_DATA'
      'where  T183_DATA_TYPE = '#39'D'#39)
    QBEDefinition.QBEFieldDefs = {
      040000001300000007000000543138335F49440100000000000F000000543138
      335F444154455F53544152540100000000000D000000543138335F444154455F
      454E4401000000000008000000543138335F494E4E0100000000000F00000054
      3138335F53484F52545F4E414D4501000000000009000000543138335F524547
      4E0100000000000B000000543138335F41435449564501000000000008000000
      543138335F42494301000000000009000000543138335F434954590100000000
      000C000000543138335F41444452455353010000000000030000004249430100
      00000000060000004E414D455F50010000000000030000004144520100000000
      00090000004552525F434F444553010000000000080000004552525F44455343
      0100000000000B000000543138335F49535F4E4B4F0100000000000B00000054
      3138335F49535F46494C010000000000090000004841535F4449464653010000
      0000000B0000004841535F4348414E474553010000000000}
    Top = 284
    object odsListT183_ID: TFloatField
      FieldName = 'T183_ID'
    end
    object odsListT183_DATE_START: TDateTimeField
      FieldName = 'T183_DATE_START'
    end
    object odsListT183_DATE_END: TDateTimeField
      FieldName = 'T183_DATE_END'
    end
    object odsListT183_INN: TStringField
      FieldName = 'T183_INN'
      Size = 16
    end
    object odsListT183_SHORT_NAME: TStringField
      FieldName = 'T183_SHORT_NAME'
      Size = 255
    end
    object odsListT183_REGN: TStringField
      FieldName = 'T183_REGN'
      Size = 16
    end
    object odsListT183_ACTIVE: TStringField
      FieldName = 'T183_ACTIVE'
      Size = 1
    end
    object odsListT183_BIC: TStringField
      FieldName = 'T183_BIC'
      Size = 255
    end
    object odsListT183_CITY: TStringField
      FieldName = 'T183_CITY'
      Size = 255
    end
    object odsListT183_ADDRESS: TStringField
      FieldName = 'T183_ADDRESS'
      Size = 255
    end
    object odsListT183_IS_NKO: TStringField
      FieldName = 'T183_IS_NKO'
      Size = 3
    end
    object odsListT183_IS_FIL: TIntegerField
      FieldName = 'T183_IS_FIL'
    end
    object odsListBIC: TStringField
      FieldName = 'BIC'
      Size = 9
    end
    object odsListNAME_P: TStringField
      FieldName = 'NAME_P'
      Size = 250
    end
    object odsListADR: TStringField
      FieldName = 'ADR'
      Size = 30
    end
    object odsListERR_CODES: TStringField
      FieldName = 'ERR_CODES'
      Size = 255
    end
    object odsListERR_DESC: TStringField
      FieldName = 'ERR_DESC'
      Size = 4000
    end
    object odsListHAS_DIFFS: TFloatField
      FieldName = 'HAS_DIFFS'
    end
    object odsListHAS_CHANGES: TFloatField
      FieldName = 'HAS_CHANGES'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 16
    Top = 271
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :T183_ID := Pk_405_Inn_Ko_Isu.f_inn_ko_add ('
      '                :T183_DATE_START,'
      '                :T183_DATE_END,'
      '                :T183_REGN,'
      '                :T183_INN,'
      '                :T183_SHORT_NAME,'
      '                :T183_ACTIVE,'
      '                :T183_BIC,'
      '                :T183_CITY,'
      '                :T183_ADDRESS,'
      '                :T183_IS_NKO'
      '  );'
      ''
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      030000000B000000080000003A543138335F4944040000000000000000000000
      100000003A543138335F444154455F53544152540C0000000000000000000000
      0E0000003A543138335F444154455F454E440C00000000000000000000000A00
      00003A543138335F5245474E050000000000000000000000090000003A543138
      335F494E4E050000000000000000000000100000003A543138335F53484F5254
      5F4E414D450500000000000000000000000C0000003A543138335F4143544956
      45040000000000000000000000090000003A543138335F424943050000000000
      0000000000000A0000003A543138335F43495459050000000000000000000000
      0D0000003A543138335F414444524553530500000000000000000000000C0000
      003A543138335F49535F4E4B4F050000000000000000000000}
    Top = 287
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.f_inn_ko_update ('
      '    :T183_ID,'
      '    :T183_DATE_START,'
      '    :T183_DATE_END,'
      '    :T183_INN,'
      '    :T183_SHORT_NAME,'
      '    :T183_BIC,'
      '    :T183_CITY,'
      '    :T183_ADDRESS,'
      '    :T183_ACTIVE,'
      '    :T183_IS_NKO'
      '    );'
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      030000000A000000080000003A543138335F4944040000000000000000000000
      100000003A543138335F444154455F53544152540C0000000000000000000000
      0E0000003A543138335F444154455F454E440C00000000000000000000000900
      00003A543138335F494E4E050000000000000000000000100000003A54313833
      5F53484F52545F4E414D45050000000000000000000000090000003A54313833
      5F4249430500000000000000000000000A0000003A543138335F434954590500
      000000000000000000000D0000003A543138335F414444524553530500000000
      000000000000000C0000003A543138335F414354495645040000000000000000
      0000000C0000003A543138335F49535F4E4B4F050000000000000000000000}
    Top = 323
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_inn_ko_del(:T183_ID);'
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543138335F4944040000000000000000000000}
    Top = 363
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 345
  end
  inherited pmFilter: TPopupMenu
    Left = 320
    Top = 136
  end
  object odsDateFrom: TOracleDataSet
    SQL.Strings = (
      'select DATE_FROM'
      'from   V_405_INN_KO_PERIODS'
      'order  by DATE_FROM')
    QBEDefinition.QBEFieldDefs = {040000000100000009000000444154455F46524F4D010000000000}
    Session = dmMain.OracleSession
    Left = 188
    Top = 12
    object odsDateFromDATE_FROM: TDateTimeField
      FieldName = 'DATE_FROM'
      Required = True
    end
  end
  object dsDateFrom: TDataSource
    DataSet = odsDateFrom
    Left = 220
    Top = 12
  end
  object odsDateTo: TOracleDataSet
    SQL.Strings = (
      'select DATE_TO'
      'from   V_405_INN_KO_PERIODS'
      'order  by DATE_TO')
    QBEDefinition.QBEFieldDefs = {040000000100000007000000444154455F544F010000000000}
    Session = dmMain.OracleSession
    Left = 388
    Top = 12
    object odsDateToDATE_TO: TDateTimeField
      FieldName = 'DATE_TO'
      Required = True
    end
  end
  object dsDateTo: TDataSource
    DataSet = odsDateTo
    Left = 428
    Top = 12
  end
  object odsRegn: TOracleDataSet
    SQL.Strings = (
      'select   distinct T183_REGN'
      'from     V_405_INN_KO_DATA'
      'where    T183_IS_FIL IN (0, :SHOW_FILS)'
      'order by T183_REGN')
    Variables.Data = {
      03000000010000000A0000003A53484F575F46494C5304000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {040000000100000009000000543138335F5245474E010000000000}
    Session = dmMain.OracleSession
    Left = 328
    Top = 40
  end
  object dsRegn: TDataSource
    DataSet = odsRegn
    Left = 360
    Top = 40
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_correct_ko_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 416
    Top = 288
  end
end
