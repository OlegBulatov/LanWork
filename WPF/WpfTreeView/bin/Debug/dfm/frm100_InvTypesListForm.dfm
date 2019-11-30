inherited frm100_InvTypesList: Tfrm100_InvTypesList
  Left = 17
  Top = 270
  Width = 956
  Height = 667
  Caption = 'Типы инвестиций'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 945
    Top = 153
    Height = 431
  end
  inherited paRight: TPanel
    Left = 948
    Top = 153
    Height = 431
  end
  inherited paMain: TPanel
    Top = 153
    Width = 945
    Height = 431
    inherited ToolBar2: TToolBar
      Top = 23
      Width = 945
      ButtonWidth = 137
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 595
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 603
        Top = 0
        Action = actGoto405
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 945
      Height = 343
      AdvSettings.Indexes = <
        item
          FieldName = 'SUM_NOCOUNT'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 2
              Caption = 'Эмитент'
            end
            item
              FirstCol = 9
              LastCol = 17
              Caption = 'Сумма'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Вид'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Резидент'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Нерезидент'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_CODE'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION_DESC'
          PickList.Strings = ()
          Title.Caption = 'Направление'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код операции'
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PERCENT'
          PickList.Strings = ()
          Title.Caption = 'Доля'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOCOUNT'
          PickList.Strings = ()
          Title.Caption = 'Неразобранные'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_CASE'
          PickList.Strings = ()
          Title.Caption = 'Портфельные'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_STRAIGHT'
          PickList.Strings = ()
          Title.Caption = 'Прямые'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_BACK_STRAIGHT'
          PickList.Strings = ()
          Title.Caption = 'Обратные прямые'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_SISTER'
          PickList.Strings = ()
          Title.Caption = 'Сестринские'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_OTH_YCH'
          PickList.Strings = ()
          Title.Caption = 'Прочие участие'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_OTHER'
          PickList.Strings = ()
          Title.Caption = 'Не учит.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код временного периода'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа ценной бумаги'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T006_ID'
          PickList.Strings = ()
          Title.Caption = 'Код направления платежа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_ID'
          PickList.Strings = ()
          Title.Caption = 'Код группы эмиссий'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM_DESC'
          PickList.Strings = ()
          Title.Caption = 'Признак выкупа эмитентом'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          PickList.Strings = ()
          Title.Caption = 'Код признака выкупа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IS_PACK'
          PickList.Strings = ()
          Title.Caption = 'Пакет'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTH_COMMENTS'
          PickList.Strings = ()
          Title.Caption = 'Примечание OTH'
          Width = 96
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 945
      inherited Panel1: TPanel
        Left = 918
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 945
      inherited Panel1: TPanel
        Left = 918
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 0
      Width = 945
      Height = 23
      ButtonWidth = 121
      Caption = 'ToolBar2'
      EdgeBorders = []
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 4
      Wrapable = False
      object ToolButton32: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Портфельные'
        DropdownMenu = pmPortf
        ImageIndex = 1
        OnClick = actSetInvCaseExecute
      end
      object ToolButton30: TToolButton
        Left = 102
        Top = 0
        Action = actSetInvStraight
        AutoSize = True
      end
      object ToolButton31: TToolButton
        Left = 175
        Top = 0
        Action = actSetInvBackStraight
      end
      object ToolButton5: TToolButton
        Left = 296
        Top = 0
        Action = actSetInvSister
      end
      object ToolButton6: TToolButton
        Left = 417
        Top = 0
        Action = actSetInvOthYch
      end
      object ToolButton33: TToolButton
        Left = 538
        Top = 0
        Action = actSetInvNoCount
        AutoSize = True
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 617
    Width = 948
  end
  inherited pnlButtons: TPanel
    Top = 584
    Width = 948
    inherited OKBtn: TButton
      Left = 1197
    end
    inherited CancelBtn: TButton
      Left = 1277
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 0
    Width = 948
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 306
      Top = 7
      Width = 12
      Height = 13
      Caption = 'по'
    end
    object Label2: TLabel
      Left = 7
      Top = 6
      Width = 97
      Height = 13
      Caption = 'Отчетный период c'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Тип ц.б.'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 56
      Height = 13
      Caption = 'Резиденты'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 70
      Height = 13
      Caption = 'Код операции'
    end
    object Label6: TLabel
      Left = 8
      Top = 130
      Width = 84
      Height = 13
      Caption = 'Признак выкупа'
    end
    object lbStatus: TLabel
      Left = 520
      Top = 128
      Width = 38
      Height = 13
      Caption = 'lbStatus'
    end
    object Label7: TLabel
      Left = 306
      Top = 130
      Width = 31
      Height = 13
      Caption = 'Пакет'
    end
    object Button1: TButton
      Left = 511
      Top = 1
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 0
    end
    inline Tfm01_Period2: Tfm01_Period
      Left = 322
      Top = 2
      Width = 187
      TabOrder = 1
      inherited Label1: TLabel
        Width = 0
        Caption = '   Отчетный период c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        QBEDefinition.QBEFieldDefs = {
          040000000300000010000000543030325F4E554D425F494E5F59454101000000
          000015000000543030325F4E554D425F494E5F5945415F544558540100000000
          0007000000543035355F4944010000000000}
        Left = 56
        Top = 65530
      end
    end
    inline Tfm01_Period1: Tfm01_Period
      Left = 113
      Top = 2
      Width = 187
      TabOrder = 2
      inherited Label1: TLabel
        Width = 0
        Caption = '   Отчетный период c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        QBEDefinition.QBEFieldDefs = {
          040000000300000010000000543030325F4E554D425F494E5F59454101000000
          000015000000543030325F4E554D425F494E5F5945415F544558540100000000
          0007000000543035355F4944010000000000}
        Left = 56
        Top = 65530
      end
    end
    object lcbType: TDBLookupComboBox
      Left = 117
      Top = 27
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 3
    end
    object cb_Residents: TComboBox
      Left = 117
      Top = 76
      Width = 390
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnChange = cb_ResidentsChange
      Items.Strings = (
        'Все резиденты'
        'Все резиденты, кроме КО')
    end
    object CheckBox1: TCheckBox
      Left = 511
      Top = 76
      Width = 150
      Height = 17
      Caption = 'Скрыть колонку "Вид"'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    inline fm35_EmissGroup1: Tfm35_EmissGroup
      Left = 4
      Top = 99
      Width = 519
      Height = 30
      TabOrder = 6
      inherited Label1: TLabel
        Left = 4
        Top = 6
      end
      inherited Lookup01: TxxxDBLookupCheckCombo
        Left = 113
        Top = 2
        Width = 391
      end
    end
    object lcbOpCode: TxxxDBLookupCheckCombo
      Left = 117
      Top = 51
      Width = 390
      Height = 21
      DropDownCount = 11
      DisplayEmpty = 'Не выбрано'
      DisplaySelectAll = 'Все'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'T011_TYPE_ID'
      LookupDisplay = 'DESC_FLD'
      LookupSource = dsOpCode
      TabOrder = 7
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbRansom: TxxxDBLookupCheckCombo
      Left = 117
      Top = 126
      Width = 181
      Height = 21
      DropDownCount = 5
      DisplayEmpty = 'Не выбрано'
      DisplaySelectAll = 'Все'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'RANSOM_CODE'
      LookupDisplay = 'RANSOM_DESC'
      LookupSource = dsRansom
      TabOrder = 8
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbPack: TxxxDBLookupCheckCombo
      Left = 348
      Top = 126
      Width = 159
      Height = 21
      DropDownCount = 4
      DisplayEmpty = 'Не выбрано'
      DisplaySelectAll = 'Все'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'PACK_DESC'
      LookupDisplay = 'PACK_DESC'
      LookupSource = dsPack
      TabOrder = 9
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  inherited dsList: TDataSource
    Left = 120
    Top = 350
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 350
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
    object actSetInvStraight: TAction
      Caption = 'Прямые'
      ImageIndex = 1
      OnExecute = actInvStraightExecute
      OnUpdate = actInvStraightUpdate
    end
    object actSetInvCase: TAction
      Caption = 'Текущая'
      Hint = 'Текущая в портфельные'
      ImageIndex = 1
      OnExecute = actSetInvCaseExecute
      OnUpdate = actInvCaseUpdate
    end
    object actSetInvNoCount: TAction
      Caption = 'Не учитывать'
      ImageIndex = 2
      OnExecute = actSetInvNoCountExecute
      OnUpdate = actInvNoCountUpdate
    end
    object actGoto405: TAction
      Caption = 'Перейти к 405 форме'
      ImageIndex = 1
      OnExecute = actGoto405Execute
    end
    object actSetInvBackStraight: TAction
      Caption = 'Обратные прямые'
      ImageIndex = 1
      OnExecute = actSetInvBackStraightExecute
      OnUpdate = actSetInvBackStraightUpdate
    end
    object actSetInvSister: TAction
      Caption = 'Сестринские'
      ImageIndex = 1
      OnExecute = actSetInvSisterExecute
      OnUpdate = actSetInvSisterUpdate
    end
    object actSetInvOthYch: TAction
      Caption = 'Прочие участие'
      ImageIndex = 1
      OnExecute = actSetInvOthYchExecute
      OnUpdate = actSetInvOthYchUpdate
    end
    object actPortfAll: TAction
      Caption = 'Все неразобранные'
      Hint = 'Все неразобранные в портфельные'
      ImageIndex = 1
      OnExecute = actPortfAllExecute
      OnUpdate = actPortfAllUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 88
    Top = 382
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '    T055_ID,'
      '    T027_ID, '
      '    T028_ID,'
      '    T028_SHOT_NAME,'
      '    T037_SHOT_NAME, '
      '    T028_CODE, '
      '--    T025_SHOT_NAME, '
      '    t011_type_id,'
      '    T006_DIRECTION,'
      '    T006_DIRECTION_DESC, '
      '    T001_IS_RANSOM,'
      '    T001_IS_RANSOM_DESC,'
      '    T027_SEC_TYPE,'
      '    T001_OP_COUNT, '
      '    SUM_ALL, '
      '    SUM_CASE,'
      '    SUM_STRAIGHT,'
      '    SUM_BACK_STRAIGHT,'
      '    SUM_OTHER,'
      '    SUM_SISTER,'
      '    SUM_OTH_YCH,'
      '    SUM_NOCOUNT,'
      '    T012_ID,'
      '    T013_ID,'
      '    T012_NAME,'
      '    T012_CODE,'
      '    T013_NAME,'
      '    T013_CODE,'
      '    OTH_COMMENTS,'
      '    T001_PERCENT,'
      '    IS_PACK'
      'FROM'
      '    V_405_INV_TYPES_ALL'
      'WHERE Pk_405_Issuers.f_is_issuer_in_group(:T042_ID, T028_ID) = 1'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543034325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001E00000007000000543035355F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000009000000543032385F434F44450100
      0000000013000000543030365F444952454354494F4E5F444553430100000000
      000D000000543030315F4F505F434F554E540100000000000700000053554D5F
      414C4C0100000000000800000053554D5F434153450100000000000C00000053
      554D5F53545241494748540100000000000900000053554D5F4F544845520100
      000000000D000000543032375F5345435F545950450100000000000700000054
      3032375F49440100000000000B00000053554D5F4E4F434F554E540100000000
      0007000000543032385F49440100000000000E000000543030365F4449524543
      54494F4E0100000000000E000000543033375F53484F545F4E414D4501000000
      00001100000053554D5F4241434B5F53545241494748540100000000000A0000
      0053554D5F5349535445520100000000000B00000053554D5F4F54485F594348
      0100000000000C000000543031315F545950455F494401000000000009000000
      543031325F4E414D4501000000000009000000543031325F434F444501000000
      000009000000543031335F4E414D4501000000000009000000543031335F434F
      444501000000000007000000543031325F494401000000000007000000543031
      335F49440100000000000E000000543030315F49535F52414E534F4D01000000
      000013000000543030315F49535F52414E534F4D5F444553430100000000000C
      0000004F54485F434F4D4D454E54530100000000000C000000543030315F5045
      5243454E540100000000000700000049535F5041434B010000000000}
    Left = 88
    Top = 350
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Size = 255
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_ALL: TFloatField
      FieldName = 'SUM_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_CASE: TFloatField
      FieldName = 'SUM_CASE'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_STRAIGHT: TFloatField
      FieldName = 'SUM_STRAIGHT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_OTHER: TFloatField
      FieldName = 'SUM_OTHER'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_NOCOUNT: TFloatField
      FieldName = 'SUM_NOCOUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
    end
    object odsListSUM_BACK_STRAIGHT: TFloatField
      FieldName = 'SUM_BACK_STRAIGHT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListSUM_SISTER: TFloatField
      FieldName = 'SUM_SISTER'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_OTH_YCH: TFloatField
      FieldName = 'SUM_OTH_YCH'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
    end
    object odsListT001_IS_RANSOM_DESC: TStringField
      FieldName = 'T001_IS_RANSOM_DESC'
      Size = 11
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListOTH_COMMENTS: TStringField
      FieldName = 'OTH_COMMENTS'
      Size = 255
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListIS_PACK: TStringField
      DisplayWidth = 3
      FieldName = 'IS_PACK'
      Size = 3
    end
  end
  inherited pkList: TOraclePackage
    Left = 120
    Top = 382
  end
  inherited oqAdd: TOracleQuery
    Left = 120
    Top = 419
  end
  inherited oqUpdate: TOracleQuery
    Left = 160
    Top = 419
  end
  inherited oqDelete: TOracleQuery
    Left = 200
    Top = 419
  end
  inherited oqDupl: TOracleQuery
    Left = 240
    Top = 419
  end
  inherited pmFilter: TPopupMenu
    Top = 240
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T027_ID, T027_SEC_TYPE, T027_SEC_TYPE || '#39' - '#39' || T027_CO' +
        'MMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      0000}
    Session = dmMain.OracleSession
    Left = 301
    Top = 20
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 333
    Top = 20
  end
  object oqSetInvType: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_Set_Inv_Type_Group ('
      '    :T001_INV_TYPE, :T055_ID, :T027_ID, :T028_ID, :T006_ID,'
      '    :T012_ID, :T013_ID, :T011_TYPE_ID'
      '    );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000080000000E0000003A543030315F494E565F54595045030000000000
      000000000000080000003A543035355F49440400000000000000000000000800
      00003A543032375F4944040000000000000000000000080000003A543032385F
      4944040000000000000000000000080000003A543030365F4944040000000000
      000000000000080000003A543031325F49440400000000000000000000000800
      00003A543031335F49440400000000000000000000000D0000003A543031315F
      545950455F4944040000000000000000000000}
    Left = 736
    Top = 16
  end
  object oqResidentsFilter: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_SetFilterFlag (:filter_Flag);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000C0000003A46494C5445525F464C41470300000000000000
      00000000}
    Left = 368
    Top = 78
  end
  object oqGetResidentsFilter: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :o_res := PK_FORM_405.p_FilteredResidents;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000060000003A4F5F5245530300000004000000000000000000
      0000}
    Left = 400
    Top = 78
  end
  object odsOpCode: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_TYPE_ID,'
      '       T011_TYPE_ID || '#39' - '#39' || T011_OPERATION_DESC DESC_FLD'
      'FROM V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000008000000444553435F464C440100000000000C0000005430
      31315F545950455F4944010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 48
    object odsOpCodeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 298
    end
    object odsOpCodeT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
  end
  object dsOpCode: TDataSource
    DataSet = odsOpCode
    Left = 224
    Top = 48
  end
  object odsRansom: TOracleDataSet
    SQL.Strings = (
      'select RANSOM_CODE,'
      '       RANSOM_DESC'
      'from   V_405_IS_RANSOM')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B00000052414E534F4D5F434F44450100000000000B0000
      0052414E534F4D5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 144
    Top = 128
  end
  object dsRansom: TDataSource
    DataSet = odsRansom
    Left = 184
    Top = 128
  end
  object pmPortf: TPopupMenu
    Left = 72
    Top = 144
    object actPortfCurrent1: TMenuItem
      Action = actSetInvCase
    end
    object actPortfAll1: TMenuItem
      Action = actPortfAll
    end
  end
  object odsPack: TOracleDataSet
    SQL.Strings = (
      'select 1 as PACK_ID,'
      '       '#39'Да'#39' as PACK_DESC'
      'from DUAL'
      'union all'
      'select 0,'
      '       '#39'Нет'#39
      'from DUAL')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000005041434B5F494401000000000009000000504143
      4B5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 128
  end
  object dsPack: TDataSource
    DataSet = odsPack
    Left = 392
    Top = 128
  end
end
