inherited A003_SumByCat: TA003_SumByCat
  Width = 1113
  Height = 575
  inherited xxxDBGrid: TxxxDBGrid
    Top = 104
    Width = 1113
    Height = 471
    AdvSettings.Indexes = <
      item
        FieldName = 'T100_ORDER_POS'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 3
            LastCol = 5
            Caption = '2014 январь'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T100_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T100_ORDER_POS'
        PickList.Strings = ()
        Title.Caption = '№'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T100_HIERARCHY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Категория'
        Width = 404
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SALDO'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Сальдо'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Поступило'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Изъято'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T202_STATE_DESC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Состояние'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T203_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Ответственный'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_UPDATED'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения состояния'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_UPDATED'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения данных'
        Width = 110
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 79
    Width = 1113
    object Label1: TLabel [0]
      Left = 1063
      Top = 0
      Width = 50
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      Caption = 'в млн. $   '
      Layout = tlCenter
    end
    inherited tlbList: TToolBar
      Width = 642
      ButtonWidth = 106
      object ToolButton1: TToolButton
        Left = 245
        Top = 0
        Action = actFinish
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 333
        Top = 0
        Action = actStart
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 432
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 26
        Style = tbsSeparator
      end
      object tbLoadMenu: TToolButton
        Left = 440
        Top = 0
        Hint = 'Загрузить'
        AutoSize = True
        Caption = 'Загрузить'
        DropdownMenu = pmImport
        ImageIndex = 19
        Style = tbsDropDown
      end
      object ToolButton4: TToolButton
        Left = 536
        Top = 0
        Action = actSetUser
      end
    end
    inherited tlbExcel: TToolBar
      Left = 719
    end
    inherited tlbSeach: TToolBar
      Left = 753
      Width = 71
    end
    inherited tlbFilter: TToolBar
      Left = 824
      Width = 94
    end
    inherited tlbSelect: TToolBar
      Left = 918
      Width = 35
    end
  end
  object paFilter: TPanel [2]
    Left = 0
    Top = 0
    Width = 1113
    Height = 79
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 776
      Top = 3
      Width = 82
      Height = 24
      Action = actRefresh
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C00000000000000000000000000000000000000000000
        000000001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7F00020002FF7FFF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7F00020002000200020002FF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7F00020002FF7FFF7F0002FF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7F0002FF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7FFF7FFF7FFF7F0002FF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7F0002FF7FFF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7F0002FF7FFF7F00020002FF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7F00020002000200020002FF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F00020002FF7FFF7FFF7F
        FF7F00001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7F0002FF7FFF7F00000000
        000000001F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
        00001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
        1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000000000001F7C
        1F7C1F7C1F7C}
    end
    inline A002_Time1: TA002_Time
      Left = 4
      Top = 4
    end
    inline A002_Region1: TA002_Region
      Left = 4
      Top = 28
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A002_Industry1: TA002_Industry
      Left = 4
      Top = 52
      TabOrder = 2
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A002_Country1: TA002_Country
      Left = 388
      Top = 4
      TabOrder = 3
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
    inline A003_Users1: TA003_Users
      Left = 388
      Top = 28
      TabOrder = 4
      inherited lbCaption: TLabel
        Width = 53
        Caption = 'Сотрудник'
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 88
        Width = 289
      end
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actFinish: TAction
      Category = 'Adv'
      Caption = 'Завершено'
      ImageIndex = 24
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
    object actStart: TAction
      Category = 'Adv'
      Caption = 'Выполняется'
      ImageIndex = 25
      OnExecute = actStartExecute
      OnUpdate = actStartUpdate
    end
    object actLoad405: TAction
      Category = 'Load'
      Caption = 'Загрузить из 405'
      Hint = 'Запустить процесс загрузки данных из Формы 405'
      ImageIndex = 65
      OnExecute = actLoad405Execute
      OnUpdate = actLoad405Update
    end
    object actLoad401: TAction
      Category = 'Load'
      Caption = 'Загрузить из 401'
      Hint = 'Запустить процесс загрузки данных из Формы 401'
      ImageIndex = 68
      OnExecute = actLoad401Execute
      OnUpdate = actLoad401Update
    end
    object actSetUser: TAction
      Category = 'Adv'
      Caption = 'Ответственный'
      Hint = 'Выбрать ответственного...'
      ImageIndex = 73
      OnExecute = actSetUserExecute
      OnUpdate = actSetUserUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      
        'SELECT V1.T100_ID, MAX(V1.T202_ID) AS T202_ID, V1.T100_HIERARCHY' +
        '_NAME, V1.T100_ORDER_POS,'
      '  MAX(T200_UPDATED) AS T200_UPDATED,'
      '  T203_ID,'
      '  T203_NAME,'
      '  T203_LOGIN,'
      '  T204_ID,'
      '  MAX(T202_STATE) AS T202_STATE,'
      '  MIN(T202_STATE_DESC) AS T202_STATE_DESC,'
      '  MAX(T202_UPDATED) AS T202_UPDATED,'
      '  SUM(V1.T200_SALDO / 1000000) AS T200_SALDO,'
      '  SUM(V1.T200_SUM_IN / 1000000) AS T200_SUM_IN,'
      '  SUM(V1.T200_SUM_OUT / 1000000) AS T200_SUM_OUT'
      'FROM   DS_BOP_BOSS.VS_BOP_SUM_BY_CATEG V1'
      'WHERE ((V1.T055_ID = :T055_ID) OR (V1.T055_ID IS NULL))'
      'AND ('
      '(:I_FLAG = 0)'
      'OR'
      '('
      'V1.T100_ID IN ('
      'SELECT     V11.T100_ID'
      '                             FROM       T100_CATEGORIES V11,'
      '                                        T203_USERS V12'
      
        '                             WHERE      V11.T203_ID = V12.T203_I' +
        'D(+)'
      
        '                             START WITH V12.T203_LOGIN = :T203_L' +
        'OGIN'
      
        '                             CONNECT BY PRIOR V11.T100_PARENT_ID' +
        ' = V11.T100_ID'
      '))'
      ')'
      'GROUP BY V1.T100_ID, V1.T100_HIERARCHY_NAME, V1.T100_ORDER_POS,'
      '  T203_ID,'
      '  T203_NAME,'
      '  T203_LOGIN,'
      '  T204_ID'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      070000003A495F464C41470400000000000000000000000B0000003A54323033
      5F4C4F47494E050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543130305F494401000000000013000000543130
      305F4849455241524348595F4E414D450100000000000E000000543130305F4F
      524445525F504F530100000000000A000000543230305F53414C444F01000000
      00000B000000543230305F53554D5F494E0100000000000C000000543230305F
      53554D5F4F55540100000000000C000000543230305F55504441544544010000
      00000007000000543230335F494401000000000009000000543230335F4E414D
      450100000000000A000000543230325F53544154450100000000000F00000054
      3230325F53544154455F444553430100000000000C000000543230325F555044
      4154454401000000000007000000543230325F49440100000000000A00000054
      3230335F4C4F47494E01000000000007000000543230345F4944010000000000}
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT100_HIERARCHY_NAME: TStringField
      FieldName = 'T100_HIERARCHY_NAME'
      Size = 4000
    end
    object odsListT100_ORDER_POS: TFloatField
      FieldName = 'T100_ORDER_POS'
    end
    object odsListT200_SALDO: TFloatField
      FieldName = 'T200_SALDO'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT200_SUM_IN: TFloatField
      FieldName = 'T200_SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT200_SUM_OUT: TFloatField
      FieldName = 'T200_SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT200_UPDATED: TDateTimeField
      FieldName = 'T200_UPDATED'
    end
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
    object odsListT202_STATE: TStringField
      FieldName = 'T202_STATE'
      Size = 1
    end
    object odsListT202_STATE_DESC: TStringField
      FieldName = 'T202_STATE_DESC'
      Size = 50
    end
    object odsListT202_UPDATED: TDateTimeField
      FieldName = 'T202_UPDATED'
    end
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT203_LOGIN: TStringField
      FieldName = 'T203_LOGIN'
      Size = 10
    end
    object odsListT204_ID: TFloatField
      FieldName = 'T204_ID'
    end
  end
  object oqChangeState: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  DS_BOP_BOSS.PK_BOP_SUM.P_CHANGE_STATE ( :I_T202_ID, :I_T202_ST' +
        'ATE );'
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543230325F494404000000000000000000
      00000D0000003A495F543230325F5354415445050000000000000000000000}
    Left = 200
    Top = 280
  end
  object oqRunLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  DS_BOP_BOSS.Pk_Bop_Import.p_do_load_data ( :I_T100_ID, :I_T055' +
        '_ID );'
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543130305F494404000000000000000000
      00000A0000003A495F543035355F4944040000000000000000000000}
    Left = 432
    Top = 272
  end
  object pmImport: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 544
    Top = 264
    object actLoad4011: TMenuItem
      Action = actLoad401
    end
    object N4051: TMenuItem
      Action = actLoad405
    end
  end
  object oqChangeUser: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  DS_BOP_BOSS.PK_BOP_SUM.p_change_user ( :I_T202_ID, :I_T203_ID)' +
        ';'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543230325F494404000000000000000000
      00000A0000003A495F543230335F4944040000000000000000000000}
    Left = 242
    Top = 280
  end
end
