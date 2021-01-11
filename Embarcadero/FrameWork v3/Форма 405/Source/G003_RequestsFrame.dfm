inherited G003_Requests: TG003_Requests
  Width = 700
  inherited xxxDBGrid: TxxxDBGrid
    Top = 82
    Width = 700
    Height = 302
    AdvSettings.Indexes = <
      item
        FieldName = 'R030_REQUEST_DATE'
        SortType = stDesc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'R030_REQUEST_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата запроса'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R040_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип запроса'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_SECURITY'
        PickList.Strings = ()
        Title.Caption = 'Заголовок'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_DATE_START'
        PickList.Strings = ()
        Title.Caption = 'Дата с'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_DATE_END'
        PickList.Strings = ()
        Title.Caption = 'Дата по'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_STATUS'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_DONE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата обработки'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_ERROR_INFO'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R030_AUTHOR'
        PickList.Strings = ()
        Title.Caption = 'Пользователь'
        Width = 180
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 57
    Width = 700
  end
  object paBottom: TPanel [2]
    Left = 0
    Top = 384
    Width = 700
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Всего запросов - '
    end
  end
  object paTop: TPanel [3]
    Left = 0
    Top = 0
    Width = 700
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 212
      Top = 9
      Width = 12
      Height = 13
      Caption = 'по'
    end
    object cbRefresh: TCheckBox
      Left = 504
      Top = 8
      Width = 136
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Автообновление (сек.)'
      TabOrder = 0
      OnClick = cbRefreshClick
    end
    object cbDate: TCheckBox
      Left = 8
      Top = 8
      Width = 106
      Height = 17
      Caption = 'Дата запроса   c '
      TabOrder = 1
    end
    object lcbDate1: TxxxDBLookupCheckCombo
      Left = 118
      Top = 6
      Width = 88
      Height = 21
      DropDownCount = 8
      ListStyle = [lsSizeable]
      LookupField = 'R030_REQUEST_DATE'
      LookupDisplay = 'R030_REQUEST_DATE'
      LookupSource = dsDate1
      TabOrder = 2
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object spnRefresh: TRxSpinEdit
      Left = 642
      Top = 7
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ButtonKind = bkStandard
      Decimal = 0
      MaxValue = 3600
      MinValue = 5
      Value = 5
      Anchors = [akTop, akRight]
      TabOrder = 3
      OnChange = spnRefreshChange
    end
    object cbStatus: TCheckBox
      Left = 8
      Top = 33
      Width = 97
      Height = 17
      Caption = 'Статус запроса'
      TabOrder = 4
    end
    object lcbStatus: TxxxDBLookupCheckCombo
      Left = 118
      Top = 30
      Width = 200
      Height = 21
      DropDownCount = 8
      DisplayEmpty = 'Не выбрано'
      DisplaySelectAll = 'Все'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked, lsSizeable]
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_DESC'
      LookupSource = dsStatus
      TabOrder = 5
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbDate2: TxxxDBLookupCheckCombo
      Left = 229
      Top = 6
      Width = 88
      Height = 21
      DropDownCount = 8
      ListStyle = [lsSizeable]
      LookupField = 'R030_REQUEST_DATE'
      LookupDisplay = 'R030_REQUEST_DATE'
      LookupSource = dsDate1
      TabOrder = 6
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  R030_ID,'
      '  R040_ID,'
      '  R040_NAME,'
      '  R030_ISIN,'
      '  R030_SECURITY,'
      '  R030_DATE_START,'
      '  R030_DATE_END,'
      '  R030_REQUEST_DATE,'
      '  R030_AUTHOR,'
      '  R030_DONE,'
      '  R030_DONE_DATE,'
      '  R030_STATUS,'
      '  R030_ERROR_INFO'
      'from DPB_BL_PIPE.V_BL_REQUESTS'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000523033305F494401000000000007000000523034
      305F494401000000000009000000523034305F4E414D450100000000000D0000
      00523033305F53454355524954590100000000000F000000523033305F444154
      455F53544152540100000000000D000000523033305F444154455F454E440100
      0000000011000000523033305F524551554553545F4441544501000000000009
      000000523033305F444F4E450100000000000E000000523033305F444F4E455F
      444154450100000000000B000000523033305F5354415455530100000000000F
      000000523033305F4552524F525F494E464F0100000000000B00000052303330
      5F415554484F5201000000000009000000523033305F4953494E010000000000}
    object odsListR030_ID: TFloatField
      FieldName = 'R030_ID'
    end
    object odsListR040_ID: TFloatField
      FieldName = 'R040_ID'
    end
    object odsListR040_NAME: TStringField
      FieldName = 'R040_NAME'
      Size = 255
    end
    object odsListR030_ISIN: TStringField
      FieldName = 'R030_ISIN'
      Size = 18
    end
    object odsListR030_SECURITY: TStringField
      FieldName = 'R030_SECURITY'
      Size = 255
    end
    object odsListR030_DATE_START: TDateTimeField
      FieldName = 'R030_DATE_START'
    end
    object odsListR030_DATE_END: TDateTimeField
      FieldName = 'R030_DATE_END'
    end
    object odsListR030_REQUEST_DATE: TDateTimeField
      FieldName = 'R030_REQUEST_DATE'
    end
    object odsListR030_DONE: TStringField
      FieldName = 'R030_DONE'
      Size = 1
    end
    object odsListR030_DONE_DATE: TDateTimeField
      FieldName = 'R030_DONE_DATE'
    end
    object odsListR030_STATUS: TStringField
      FieldName = 'R030_STATUS'
      Size = 27
    end
    object odsListR030_ERROR_INFO: TStringField
      FieldName = 'R030_ERROR_INFO'
      Size = 255
    end
    object odsListR030_AUTHOR: TStringField
      FieldName = 'R030_AUTHOR'
      Size = 255
    end
  end
  object TimerRefresh: TTimer
    Interval = 5000
    OnTimer = TimerRefreshTimer
    Left = 656
    Top = 400
  end
  object odsDate1: TOracleDataSet
    SQL.Strings = (
      'select DISTINCT TRUNC(R030_REQUEST_DATE) AS R030_REQUEST_DATE'
      'from   V_BL_REQUEST_DATES'
      'order by'
      '       TRUNC(R030_REQUEST_DATE)')
    QBEDefinition.QBEFieldDefs = {
      040000000100000011000000523033305F524551554553545F44415445010000
      000000}
    Session = dmMain.OracleSession
    Left = 363
    object odsDate1R030_REQUEST_DATE: TDateTimeField
      FieldName = 'R030_REQUEST_DATE'
    end
  end
  object dsDate1: TDataSource
    DataSet = odsDate1
    Left = 395
  end
  object odsStatus: TOracleDataSet
    SQL.Strings = (
      'select STATUS_CODE,'
      '       STATUS_DESC'
      'from V_BL_REQUEST_STATUS')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B0000005354415455535F434F44450100000000000B0000
      005354415455535F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 363
    Top = 32
  end
  object dsStatus: TDataSource
    DataSet = odsStatus
    Left = 395
    Top = 32
  end
  object odsDate2: TOracleDataSet
    SQL.Strings = (
      'select DISTINCT TRUNC(R030_REQUEST_DATE) AS R030_REQUEST_DATE'
      'from   V_BL_REQUEST_DATES'
      'order by'
      '       TRUNC(R030_REQUEST_DATE)')
    Session = dmMain.OracleSession
    Left = 432
  end
  object dsDate2: TDataSource
    DataSet = odsDate2
    Left = 464
  end
end
