inherited A12_DataEdit: TA12_DataEdit
  Width = 777
  Height = 350
  VertScrollBar.Visible = False
  ParentShowHint = False
  object Label1: TLabel [0]
    Left = 7
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Рег. № КО:'
  end
  object Label3: TLabel [1]
    Left = 309
    Top = 27
    Width = 80
    Height = 13
    Caption = 'Дата операции:'
  end
  object Label5: TLabel [2]
    Left = 7
    Top = 49
    Width = 52
    Height = 13
    Alignment = taCenter
    Caption = '№ строки:'
  end
  object Label25: TLabel [3]
    Left = 8
    Top = 255
    Width = 199
    Height = 13
    Caption = ' Примечание Департамента Статстики'
  end
  object Label4: TLabel [4]
    Left = 153
    Top = 13
    Width = 12
    Height = 64
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 355
    Top = 51
    Width = 68
    Height = 13
    Caption = 'Код. система'
  end
  object Label7: TLabel [6]
    Left = 7
    Top = 70
    Width = 62
    Height = 13
    Caption = 'Количество '
  end
  object Label8: TLabel [7]
    Left = 168
    Top = 71
    Width = 93
    Height = 13
    Caption = 'Цена по номиналу'
  end
  object Label9: TLabel [8]
    Left = 352
    Top = 71
    Width = 78
    Height = 13
    Caption = 'Цена рыночная'
  end
  object Label10: TLabel [9]
    Left = 7
    Top = 28
    Width = 41
    Height = 13
    Caption = 'Период:'
  end
  object Label11: TLabel [10]
    Left = 6
    Top = 96
    Width = 73
    Height = 13
    Caption = 'Метод Оценки'
  end
  object Label2: TLabel [11]
    Left = 9
    Top = 173
    Width = 43
    Height = 13
    Caption = 'Эмитент'
  end
  object Label12: TLabel [12]
    Left = 6
    Top = 138
    Width = 181
    Height = 13
    Caption = 'Наличие прямого инвестироования'
  end
  object Label13: TLabel [13]
    Left = 12
    Top = 191
    Width = 56
    Height = 13
    Caption = 'Пояснения'
  end
  object CorrLabel: TLabel [14]
    Left = 17
    Top = 321
    Width = 143
    Height = 13
    Caption = 'Дата ручной корректировки'
  end
  object edOpDate: TDBDateEdit [15]
    Left = 392
    Top = 23
    Width = 115
    Height = 21
    Hint = 'Выбор даты'
    DataField = 't010_dt_create'
    DefaultToday = True
    Enabled = False
    GlyphKind = gkEllipsis
    ButtonWidth = 17
    NumGlyphs = 1
    ParentShowHint = False
    PopupAlign = epaLeft
    PopupColor = clWindow
    ShowHint = True
    TabOrder = 0
    YearDigits = dyFour
  end
  object ednsting: TDBEdit [16]
    Left = 163
    Top = 44
    Width = 54
    Height = 21
    DataField = 'T010_string'
    Enabled = False
    TabOrder = 1
  end
  object edComment: TDBMemo [17]
    Left = 8
    Top = 206
    Width = 497
    Height = 45
    MaxLength = 255
    TabOrder = 2
  end
  object ednsec: TDBEdit [18]
    Left = 96
    Top = 45
    Width = 57
    Height = 21
    DataField = 'T010_string'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edCodeSys: TDBEdit [19]
    Left = 439
    Top = 45
    Width = 65
    Height = 21
    DataField = 'T010_CodeSys'
    TabOrder = 4
  end
  object edCnt: TDBEdit [20]
    Left = 95
    Top = 68
    Width = 65
    Height = 21
    DataField = 'T010_cnt_actio'
    TabOrder = 5
  end
  object lcbPeriod: TxxxDBLookupCheckCombo [21]
    Left = 96
    Top = 23
    Width = 118
    Height = 21
    DropDownCount = 16
    DisplayAllFields = True
    Enabled = False
    LookupField = 'A055_ID'
    LookupDisplay = 'T055_LONG_NAME'
    LookupSource = dsPeriod
    TabOrder = 6
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object edNominal: TDBEdit [22]
    Left = 280
    Top = 68
    Width = 65
    Height = 21
    DataField = 'T010_CodeSys'
    TabOrder = 7
  end
  object edMarket: TDBEdit [23]
    Left = 440
    Top = 68
    Width = 65
    Height = 21
    DataField = 'T010_CodeSys'
    TabOrder = 8
  end
  object lcbBank: TxxxDBLookupCheckCombo [24]
    Left = 96
    Top = 2
    Width = 411
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'REGN'
    LookupDisplay = 'REGN_NAME'
    LookupSource = dsBank
    TabOrder = 9
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbEstimation: TxxxDBLookupCheckCombo [25]
    Left = 94
    Top = 90
    Width = 411
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCR'
    LookupSource = dsEstimate
    TabOrder = 10
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object Button1: TButton [26]
    Left = 144
    Top = 440
    Width = 75
    Height = 25
    Action = Action2
    TabOrder = 11
    Visible = False
  end
  object edEmis: TDBEdit [27]
    Left = 352
    Top = 136
    Width = 65
    Height = 21
    DataField = 'T010_ID_EMISSION'
    TabOrder = 12
    Visible = False
  end
  object lcbEmis: TxxxDBLookupCheckCombo [28]
    Left = 93
    Top = 168
    Width = 413
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID'
    LookupDisplay = 'NAME'
    LookupSource = ds_emis_look
    TabOrder = 13
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbStorage: TxxxDBLookupCheckCombo [29]
    Left = 94
    Top = 112
    Width = 410
    Height = 21
    DropDownCount = 8
    LookupField = 'T103_ID'
    LookupDisplay = 'DESCR'
    LookupSource = dsStorage
    TabOrder = 14
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbDirect: TxxxDBLookupCheckCombo [30]
    Left = 196
    Top = 135
    Width = 116
    Height = 21
    DropDownCount = 8
    LookupField = 'T106_ID'
    LookupDisplay = 'T106_DESC'
    LookupSource = dsDirect
    TabOrder = 15
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object ed_Ds: TDBMemo [31]
    Left = 8
    Top = 269
    Width = 497
    Height = 45
    MaxLength = 255
    TabOrder = 16
  end
  object edDBDsUpd: TDBDateEdit [32]
    Left = 174
    Top = 318
    Width = 119
    Height = 21
    Hint = 'Дата ручной корректировки'
    DataField = 't010_ds_update'
    Enabled = False
    GlyphKind = gkEllipsis
    ButtonWidth = 17
    NumGlyphs = 1
    ParentShowHint = False
    PopupAlign = epaLeft
    PopupColor = clWindow
    ShowHint = True
    TabOrder = 17
    YearDigits = dyFour
  end
  inherited actList: TActionList
    Left = 348
    Top = 184
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 331
    Top = 48
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      
        'select t.T055_id AS a055_id , t.t055_long_name from V_404_DATA_P' +
        'ERIODS t order by t.t055_long_name'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000413035355F4944010000000000}
    Session = dmMain.OracleSession
    Left = 204
    object odsPeriodA055_ID: TFloatField
      FieldName = 'A055_ID'
      Required = True
    end
    object odsPeriodT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object odsBank: TOracleDataSet
    SQL.Strings = (
      
        'select t.REGN,t.REGN_NAME  from V_404_BANKS t order by t.REGN_NA' +
        'ME')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E010000000000090000005245474E5F4E
      414D45010000000000}
    Session = dmMain.OracleSession
    Left = 288
    object odsBankREGN: TStringField
      FieldName = 'REGN'
      Required = True
      Size = 9
    end
    object odsBankREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 255
    end
  end
  object dsBank: TDataSource
    DataSet = odsBank
    Left = 312
  end
  object odsEstimation: TOracleDataSet
    SQL.Strings = (
      ' select * from v_estimation'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000050000004445534352010000
      000000}
    Session = dmMain.OracleSession
    Left = 232
    Top = 184
    object odsEstimationID: TFloatField
      FieldName = 'ID'
    end
    object odsEstimationDESCR: TStringField
      FieldName = 'DESCR'
      Size = 261
    end
  end
  object dsEstimate: TDataSource
    DataSet = odsEstimation
    Left = 352
    Top = 184
  end
  object ods_emis_look: TOracleDataSet
    SQL.Strings = (
      'select * from v_emis_look'
      'where id = :id')
    Variables.Data = {0300000001000000030000003A4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 160
    Top = 192
    object ods_emis_lookID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object ods_emis_lookNAME: TStringField
      FieldName = 'NAME'
      Size = 1292
    end
  end
  object ds_emis_look: TDataSource
    DataSet = ods_emis_look
    Left = 432
    Top = 168
  end
  object odsStorage: TOracleDataSet
    SQL.Strings = (
      'select * from v_storage')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543130335F494401000000000005000000444553
      4352010000000000}
    Session = dmMain.OracleSession
    Left = 232
    Top = 216
    object odsStorageT103_ID: TFloatField
      FieldName = 'T103_ID'
      Required = True
    end
    object odsStorageDESCR: TStringField
      FieldName = 'DESCR'
      Size = 259
    end
  end
  object dsStorage: TDataSource
    DataSet = odsStorage
    Left = 312
    Top = 184
  end
  object odsDirect: TOracleDataSet
    SQL.Strings = (
      'select t106_id, t106_desc from t106_direct ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543130365F494401000000000009000000543130
      365F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 272
    Top = 200
    object odsDirectT106_ID: TFloatField
      FieldName = 'T106_ID'
      Required = True
    end
    object odsDirectT106_DESC: TStringField
      FieldName = 'T106_DESC'
      Required = True
      Size = 256
    end
  end
  object dsDirect: TDataSource
    DataSet = odsDirect
    Left = 400
    Top = 176
  end
end
