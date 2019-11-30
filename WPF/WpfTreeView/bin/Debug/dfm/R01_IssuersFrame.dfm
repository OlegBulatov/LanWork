inherited R01_Issuers: TR01_Issuers
  Width = 1041
  inherited xxxDBGrid: TxxxDBGrid
    Top = 154
    Width = 1041
    Height = 287
    AdvSettings.Indexes = <
      item
        FieldName = 'T028_ID_IS_DIV'
        SortType = stAsc
      end
      item
        FieldName = 'T001_OP_SUM_CROSS'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 5
            LastCol = 8
            Caption = 'Сумма (млн. $)'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_ID_IS_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент главный'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_ID_IS_DIV'
        PickList.Strings = ()
        Title.Caption = 'Эмитент объявл. дивид.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. (млн. шт.)'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Графа выплаты 2 разд.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PROC_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Графа проценты 2 разд.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS_Y'
        PickList.Strings = ()
        Title.Caption = 'Распозн. выплаты'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS_N'
        PickList.Strings = ()
        Title.Caption = 'Нераспозн. выплаты'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIRECTION_DESC'
        PickList.Strings = ()
        Title.Caption = 'Направление'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 129
    Width = 1041
    object ToolBar1: TToolBar
      Left = 532
      Top = 0
      Width = 222
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 107
      Caption = 'tlbList'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 6
      Wrapable = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator02'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 8
        Top = 0
        Action = actOtherPr
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton3: TToolButton
        Left = 119
        Top = 0
        Action = actOtherPortf
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1041
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 342
      Top = 3
      Width = 75
      Height = 22
      Action = actRefresh
      Flat = True
    end
    object Label1: TLabel
      Left = 21
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Период с'
    end
    object Label2: TLabel
      Left = 21
      Top = 33
      Width = 40
      Height = 13
      Caption = 'Тип ц.б.'
    end
    object Label3: TLabel
      Left = 199
      Top = 8
      Width = 12
      Height = 13
      Caption = 'по'
    end
    inline fm01_Period1: Tfm01_Period
      Left = 75
      Top = 3
      Width = 122
      inherited Label1: TLabel
        Width = 0
        Caption = '   Отчетный период c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 118
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 71
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        Left = 39
        Top = 65530
      end
    end
    object lcbType: TDBLookupComboBox
      Left = 79
      Top = 29
      Width = 257
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 1
    end
    inline fm01_Period2: Tfm01_Period
      Left = 214
      Top = 3
      Width = 122
      Height = 25
      TabOrder = 2
      inherited Label1: TLabel
        Width = 1
        Height = 25
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 0
        Width = 122
        KeyField = 'T055_ID'
      end
    end
    inline fm19_NResidType1: Tfm19_NResidType
      Top = 54
      Width = 433
      TabOrder = 3
      inherited Label1: TLabel
        Left = 21
        Top = 4
        Width = 55
        Caption = 'Тип нерез.'
      end
      inherited Lookup01: TDBLookupComboBox
        Left = 79
        Top = 0
        Width = 257
      end
    end
    inline fmIssuerName: TfmTextFilter
      Left = 4
      Top = 79
      Width = 445
      TabOrder = 4
      inherited lbCaption: TLabel
        Left = 19
        Width = 43
        Caption = 'Эмитент'
      end
      inherited cb: TCheckBox
        Left = 2
        Width = 14
      end
      inherited ed: TEdit
        Left = 75
        Width = 257
        Text = ''
      end
    end
    inline fmIssuerINN: TfmTextFilter
      Left = 3
      Top = 104
      Width = 445
      TabOrder = 5
      inherited lbCaption: TLabel
        Left = 19
        Width = 24
        Caption = 'ИНН'
      end
      inherited cb: TCheckBox
        Left = 2
        Width = 14
      end
      inherited ed: TEdit
        Left = 75
        Width = 102
        Text = ''
      end
    end
    object cb: TCheckBox
      Left = 6
      Top = 7
      Width = 14
      Height = 17
      Enabled = False
      State = cbGrayed
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 6
      Top = 57
      Width = 14
      Height = 17
      Enabled = False
      State = cbGrayed
      TabOrder = 7
    end
    object CheckBox2: TCheckBox
      Left = 6
      Top = 32
      Width = 14
      Height = 17
      Enabled = False
      State = cbGrayed
      TabOrder = 8
    end
  end
  inherited actList: TActionList
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
    object actOtherPr: TAction
      Caption = 'Прочие прямые'
      Hint = 'Отметить как "Прочие бумаги"'
      ImageIndex = 16
      OnExecute = actOtherPrExecute
      OnUpdate = actOtherPrUpdate
    end
    object actOtherPortf: TAction
      Caption = 'Прочие портф.'
      ImageIndex = 16
      OnExecute = actOtherPortfExecute
      OnUpdate = actOtherPortfUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T028_ID, '
      '  T027_ID, '
      '  T028_ID_IS_DIV, '
      '  T028_ID_IS_MAIN,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T006_DIRECTION,'
      '  DIRECTION_DESC,'
      '  SUM(T001_OP_COUNT / 1000000) T001_OP_COUNT,'
      '  SUM(T001_OP_COUNT_N / 1000000) T001_OP_COUNT_N,'
      '  SUM(T001_OP_SUM_CROSS/ 1000000) T001_OP_SUM_CROSS,'
      '  SUM(T001_OP_PROC_CROSS/ 1000000) T001_OP_PROC_CROSS,'
      '  SUM(T001_OP_SUM_CROSS_Y/ 1000000) T001_OP_SUM_CROSS_Y,'
      '  SUM(T001_OP_SUM_CROSS_N/ 1000000) T001_OP_SUM_CROSS_N'
      'FROM   V_NR_OP_BY_ISSUERS'
      'WHERE  T055_ID BETWEEN  :T055_ID_BEG AND :T055_ID_END'
      'AND T034_ID = :T034_ID'
      'GROUP BY T028_ID,'
      '  T027_ID,'
      '  T028_ID_IS_DIV,'
      '  T028_ID_IS_MAIN,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T006_DIRECTION,'
      '  DIRECTION_DESC'
      'having T027_ID = :T027_ID'
      ' '
      ' ')
    Variables.Data = {
      03000000040000000C0000003A543035355F49445F4245470400000000000000
      000000000C0000003A543035355F49445F454E44040000000000000000000000
      080000003A543033345F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543032385F494401000000000007000000543032
      375F49440100000000000E000000543032385F49445F49535F44495601000000
      00000F000000543032385F49445F49535F4D41494E0100000000000E00000054
      3032385F53484F545F4E414D4501000000000008000000543032385F494E4E01
      00000000000E000000543030365F444952454354494F4E0100000000000E0000
      00444952454354494F4E5F444553430100000000000D000000543030315F4F50
      5F434F554E5401000000000011000000543030315F4F505F53554D5F43524F53
      5301000000000012000000543030315F4F505F50524F435F43524F5353010000
      00000013000000543030315F4F505F53554D5F43524F53535F59010000000000
      13000000543030315F4F505F53554D5F43524F53535F4E0100000000000F0000
      00543030315F4F505F434F554E545F4E010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT028_ID_IS_DIV: TStringField
      FieldName = 'T028_ID_IS_DIV'
      Size = 3
    end
    object odsListT028_ID_IS_MAIN: TStringField
      FieldName = 'T028_ID_IS_MAIN'
      Size = 3
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
    end
    object odsListDIRECTION_DESC: TStringField
      FieldName = 'DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_SUM_CROSS_Y: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_Y'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_SUM_CROSS_N: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_N'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_COUNT_N: TFloatField
      FieldName = 'T001_OP_COUNT_N'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 255
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T027_ID, T027_SEC_TYPE, T027_SEC_TYPE || '#39' - '#39' || T027_CO' +
        'MMENTS DESC_FLD'
      'FROM V_NR_SEC_TYPE_FOR_PAY'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      0000}
    Session = dmMain.OracleSession
    Left = 456
    Top = 50
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
    object odsTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 488
    Top = 50
  end
  object oqSetOther: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_NResident.p_SetOther(:T028_ID , :T055_ID_BEG, :T055_ID_END,' +
        ' :T027_ID, :T027_ID_REAL, :M050_TYPE, :T006_DIRECTION);'
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000007000000080000003A543032385F4944040000000000000000000000
      0C0000003A543035355F49445F4245470400000000000000000000000C000000
      3A543035355F49445F454E44040000000000000000000000080000003A543032
      375F49440400000000000000000000000D0000003A543032375F49445F524541
      4C0400000000000000000000000A0000003A4D3035305F545950450400000000
      000000000000000F0000003A543030365F444952454354494F4E040000000000
      000000000000}
    Left = 280
    Top = 240
  end
end
