inherited z001_p4_frame: Tz001_p4_frame
  Width = 1016
  Height = 401
  inherited xxxDBGrid: TxxxDBGrid
    Top = 78
    Width = 1016
    Height = 323
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 6
            LastCol = 14
            Caption = 'Параметры расчетов по операциям с ценными бумагами'
          end
          item
            FirstCol = 20
            LastCol = 25
            Caption = 'Характеристика ценной бумаги'
          end
          item
            FirstCol = 29
            LastCol = 33
            Caption = 'Контрагент'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 15
            LastCol = 16
            Caption = 'Резидент'
          end
          item
            FirstCol = 31
            LastCol = 32
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 17
            LastCol = 19
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 29
            LastCol = 30
            Caption = 'Банк-нерезидента'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'MARK'
        PickList.Strings = ()
        Title.Caption = '##'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DO_ACTION_STR'
        PickList.Strings = ()
        Title.Caption = 'Действие'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_COUNT'
        PickList.Strings = ()
        Title.Caption = '   кол-во операций      в ДС'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIT_COUNT'
        PickList.Strings = ()
        Title.Caption = '  кол-во операций    в ДИТ'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_GR'
        PickList.Strings = ()
        Title.Caption = '№ раз.'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T011_TYPE_ID'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T006_NAME'
        PickList.Strings = ()
        Title.Caption = 'Код н. пл.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Кол-во бумаг'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_ID'
        PickList.Strings = ()
        Title.Caption = 'Код вал. плат.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PROC'
        PickList.Strings = ()
        Title.Caption = 'Проценты'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Всего ($)'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROC_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Проценты ($)'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_ID'
        PickList.Strings = ()
        Title.Caption = 'ID типа'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T012_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T012_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T034_ID'
        PickList.Strings = ()
        Title.Caption = 'ID типа'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T013_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T013_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C10'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T025_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код типа эмитента (ДИТ)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Код типа ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_ON'
        PickList.Strings = ()
        Title.Caption = 'Дата регистр.'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OFF'
        PickList.Strings = ()
        Title.Caption = 'Дата погашения'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CR_ID'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N8'
        PickList.Strings = ()
        Title.Caption = 'МЕНА'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        PickList.Strings = ()
        Title.Caption = 'РАССРОЧКА'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_10'
        PickList.Strings = ()
        Title.Caption = 'ПАКЕТ'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C11'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C12'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C16'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C17'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C18'
        PickList.Strings = ()
        Title.Caption = 'BIC уполномоченного банка'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C19'
        PickList.Strings = ()
        Title.Caption = 'SWIFT банка-нерезидента'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C20'
        PickList.Strings = ()
        Title.Caption = 'Цифр. код страны банка-нерезидента'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 53
    Width = 1016
    inherited tlbSelect: TToolBar
      Width = 181
      ButtonHeight = 22
      ButtonWidth = 79
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Hint = 'Добавить запись'
        Caption = 'Добавить'
        Enabled = False
        ImageIndex = 0
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 162
        Top = 0
        Hint = 'Загрузить '
        Caption = 'Загрузить'
        ImageIndex = 14
        Visible = False
        OnClick = ToolButton2Click
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1016
    Height = 32
    Align = alTop
    TabOrder = 3
    inline ActionFilter: Tz_act
      Left = 8
      Top = 6
      Height = 20
      inherited lbCaption: TLabel
        Top = 3
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Top = -1
      end
      inherited cb: TCheckBox
        Top = 1
      end
    end
    object Button1: TButton
      Left = 417
      Top = 3
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
    object BtComp: TButton
      Left = 513
      Top = 3
      Width = 75
      Height = 25
      Action = actCompare
      TabOrder = 2
    end
    object Button2: TButton
      Left = 608
      Top = 3
      Width = 75
      Height = 25
      Action = actVert
      TabOrder = 3
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 32
    Width = 1016
    inherited Panel1: TPanel
      Left = 989
    end
  end
  inherited actList: TActionList
    Left = 24
    Top = 148
    object actCompare: TAction
      Caption = 'Сравнить'
      Enabled = False
      Visible = False
      OnExecute = actCompareExecute
    end
    object actVert: TAction
      Caption = 'Показать'
      Enabled = False
      Visible = False
      OnExecute = actVertExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '          MARK,'
      #9'   T002_ID,'
      #9'   DIT_COUNT,'
      #9'   DS_COUNT,'
      #9'   DO_ACTION,'
      #9'   DO_ACTION_STR,'
      #9'   T055_ID,'
      #9'   T002_BANK_CODE,'
      #9'   ID,'
      #9'   IDENTIFIER,'
      #9'   N_GR,'
      #9'   T033_ID,'
      #9'   T034_ID,'
      #9'   T025_CODE,'
      #9'   T011_TYPE_ID,'
      #9'   T001_OP_COUNT,'
      #9'   T001_OP_SUM,'
      #9'   T001_OP_PROC,'
      #9'   T001_DATE_OP,'
      #9'   T027_ID,'
      #9'   T027_SEC_TYPE,'
      #9'   T006_NAME,'
      #9'   T001_OP_CR_ID,'
      #9'   T012_NAME,'
      #9'   T012_CODE,'
      #9'   T013_NAME,'
      #9'   T013_CODE,'
      #9'   T001_COMMENT,'
      #9'   T001_C10,'
      #9'   T001_C11,'
      #9'   T001_C12,'
      #9'   T001_C16,'
      #9'   T001_C17,'
      #9'   T001_C18,'
      #9'   T001_C19,'
      #9'   T001_C20,'
      #9'   T001_N8,'
      #9'   T001_N9,'
      #9'   T001_10,'
      #9'   T001_DATE_ON,'
      #9'   T001_DATE_OFF,'
      #9'   T001_CR_ID,'
      #9'   SUM_CROSS,'
      #9'   PROC_CROSS'
      '  FROM V_405_DS_DIT_OPER'
      '  where'
      #9'   t002_ID = :REPORT'#9
      '     and'
      '       T027_id = :SEC_id')
    Variables.Data = {
      0300000002000000070000003A5245504F525404000000000000000000000007
      0000003A5345435F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002C00000009000000444F5F414354494F4E0100000000000200000049
      440100000000000A0000004944454E544946494552010000000000040000004E
      5F475201000000000007000000543033335F4944010000000000070000005430
      33345F49440100000000000C000000543031315F545950455F49440100000000
      000D000000543030315F4F505F434F554E540100000000000B00000054303031
      5F4F505F53554D0100000000000C000000543030315F4F505F50524F43010000
      0000000C000000543030315F444154455F4F500100000000000D000000543032
      375F5345435F5459504501000000000009000000543030365F4E414D45010000
      0000000D000000543030315F4F505F43525F4944010000000000090000005430
      31325F4E414D4501000000000009000000543031325F434F4445010000000000
      09000000543031335F4E414D4501000000000009000000543031335F434F4445
      01000000000008000000543030315F4331300100000000000800000054303031
      5F43313101000000000008000000543030315F43313201000000000008000000
      543030315F43313601000000000008000000543030315F433137010000000000
      08000000543030315F43313801000000000008000000543030315F4331390100
      0000000008000000543030315F43323001000000000007000000543030315F4E
      3801000000000007000000543030315F31300100000000000900000053554D5F
      43524F53530100000000000A00000050524F435F43524F53530100000000000E
      000000543030325F42414E4B5F434F444501000000000007000000543035355F
      494401000000000007000000543032375F49440100000000000D000000444F5F
      414354494F4E5F535452010000000000090000004449545F434F554E54010000
      0000000800000044535F434F554E54010000000000040000004D41524B010000
      00000009000000543032355F434F44450100000000000C000000543030315F44
      4154455F4F4E0100000000000D000000543030315F444154455F4F4646010000
      00000007000000543030325F49440100000000000C000000543030315F434F4D
      4D454E5401000000000007000000543030315F4E390100000000000A00000054
      3030315F43525F4944010000000000}
    object odsListMARK: TStringField
      FieldName = 'MARK'
      Size = 1
    end
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
    end
    object odsListDIT_COUNT: TFloatField
      FieldName = 'DIT_COUNT'
    end
    object odsListDS_COUNT: TFloatField
      FieldName = 'DS_COUNT'
    end
    object odsListDO_ACTION: TFloatField
      FieldName = 'DO_ACTION'
    end
    object odsListDO_ACTION_STR: TStringField
      FieldName = 'DO_ACTION_STR'
      Size = 37
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListIDENTIFIER: TFloatField
      FieldName = 'IDENTIFIER'
    end
    object odsListN_GR: TFloatField
      FieldName = 'N_GR'
    end
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT034_ID: TFloatField
      FieldName = 'T034_ID'
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Size = 255
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
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
    object odsListT013_CODE: TStringField
      FieldName = 'T013_CODE'
      Size = 255
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 1024
    end
    object odsListT001_C10: TStringField
      FieldName = 'T001_C10'
      Size = 255
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT001_C16: TStringField
      FieldName = 'T001_C16'
      Size = 255
    end
    object odsListT001_C17: TStringField
      FieldName = 'T001_C17'
      Size = 255
    end
    object odsListT001_C18: TStringField
      FieldName = 'T001_C18'
      Size = 255
    end
    object odsListT001_C19: TStringField
      FieldName = 'T001_C19'
      Size = 255
    end
    object odsListT001_C20: TStringField
      FieldName = 'T001_C20'
      Size = 255
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
      Size = 3
    end
    object odsListSUM_CROSS: TFloatField
      FieldName = 'SUM_CROSS'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListPROC_CROSS: TFloatField
      FieldName = 'PROC_CROSS'
      DisplayFormat = '### ### ### ### ##0.0'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 56
    Top = 215
  end
  object oqLoadSC: TOracleQuery
    Session = dmMain.OracleSession
    Left = 392
    Top = 160
  end
  object oqCompare: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_compare '
      '  ('
      '    :z1_DO_ACTION_STR,'
      '    :z1_N_GR,'
      '    :z1_T001_DATE_OP ,'
      '    :z1_T011_TYPE_ID ,'
      '    :z1_T006_NAME,'
      '    :z1_T001_OP_COUNT,'
      '    :z1_T001_OP_CR_ID,'
      '    :z1_T001_OP_SUM,'
      '    :z1_T001_OP_PROC,'
      '    :z1_SUM_CROSS,'
      '    :z1_PROC_CROSS,'
      '    :z1_T012_NAME,'
      '    :z1_T012_CODE,'
      '    :z1_T013_NAME,'
      '    :z1_T013_CODE,'
      '    :z1_T001_C10,'
      '    :z1_T025_CODE,'
      '    :z1_T027_SEC_TYPE,'
      '    :z1_T001_DATE_ON,'
      '    :z1_T001_DATE_OFF,'
      '    :z1_T001_CR_ID,'#9#9
      '    :z1_T001_N8,'
      '    :z1_T001_N9,'
      '    :z1_T001_10,'
      '    :z1_T001_C11,'
      '    :z1_T001_C12,'
      '    :z1_T001_C16,'
      '    :z1_T001_C17,'
      '    :z1_T001_C18,'
      '    :z1_T001_C19,'
      '    :z1_T001_C20,'
      '    :z2_DO_ACTION_STR,'
      '    :z2_N_GR,'
      '    :z2_T001_DATE_OP,'
      '    :z2_T011_TYPE_ID,'
      '    :z2_T006_NAME,'
      '    :z2_T001_OP_COUNT,'
      '    :z2_T001_OP_CR_ID,'
      '    :z2_T001_OP_SUM,'
      '    :z2_T001_OP_PROC,'
      '    :z2_SUM_CROSS,'
      '    :z2_PROC_CROSS,'
      '    :z2_T012_NAME,'
      '    :z2_T012_CODE,'
      '    :z2_T013_NAME,'
      '    :z2_T013_CODE,'
      '    :z2_T001_C10,'
      '    :z2_T025_CODE,'
      '    :z2_T027_SEC_TYPE,'
      '    :z2_T001_DATE_ON,'
      '    :z2_T001_DATE_OFF,'
      '    :z2_T001_CR_ID,'
      '    :z2_T001_N8,'
      '    :z2_T001_N9,'
      '    :z2_T001_10,'
      '    :z2_T001_C11,'
      '    :z2_T001_C12,'
      '    :z2_T001_C16,'
      '    :z2_T001_C17,'
      '    :z2_T001_C18,'
      '    :z2_T001_C19,'
      '    :z2_T001_C20'#9#9'  '
      '  );'
      'end;'#9#9)
    Session = dmMain.OracleSession
    Variables.Data = {
      030000003E000000110000003A5A315F444F5F414354494F4E5F535452050000
      000000000000000000080000003A5A315F4E5F47520500000000000000000000
      00100000003A5A315F543030315F444154455F4F500500000000000000000000
      00100000003A5A315F543031315F545950455F49440500000000000000000000
      000D0000003A5A315F543030365F4E414D450500000000000000000000001100
      00003A5A315F543030315F4F505F434F554E5405000000000000000000000011
      0000003A5A315F543030315F4F505F43525F4944050000000000000000000000
      0F0000003A5A315F543030315F4F505F53554D05000000000000000000000010
      0000003A5A315F543030315F4F505F50524F430500000000000000000000000D
      0000003A5A315F53554D5F43524F53530500000000000000000000000E000000
      3A5A315F50524F435F43524F53530500000000000000000000000D0000003A5A
      315F543031325F4E414D450500000000000000000000000D0000003A5A315F54
      3031325F434F44450500000000000000000000000D0000003A5A315F54303133
      5F4E414D450500000000000000000000000D0000003A5A315F543031335F434F
      44450500000000000000000000000C0000003A5A315F543030315F4331300500
      000000000000000000000D0000003A5A315F543032355F434F44450500000000
      00000000000000110000003A5A315F543032375F5345435F5459504505000000
      0000000000000000100000003A5A315F543030315F444154455F4F4E05000000
      0000000000000000110000003A5A315F543030315F444154455F4F4646050000
      0000000000000000000E0000003A5A315F543030315F43525F49440500000000
      000000000000000B0000003A5A315F543030315F4E3805000000000000000000
      00000B0000003A5A315F543030315F4E390500000000000000000000000B0000
      003A5A315F543030315F31300500000000000000000000000C0000003A5A315F
      543030315F4331310500000000000000000000000C0000003A5A315F54303031
      5F4331320500000000000000000000000C0000003A5A315F543030315F433136
      0500000000000000000000000C0000003A5A315F543030315F43313705000000
      00000000000000000C0000003A5A315F543030315F4331380500000000000000
      000000000C0000003A5A315F543030315F433139050000000000000000000000
      0C0000003A5A315F543030315F43323005000000000000000000000011000000
      3A5A325F444F5F414354494F4E5F535452050000000000000000000000080000
      003A5A325F4E5F4752050000000000000000000000100000003A5A325F543030
      315F444154455F4F50050000000000000000000000100000003A5A325F543031
      315F545950455F49440500000000000000000000000D0000003A5A325F543030
      365F4E414D45050000000000000000000000110000003A5A325F543030315F4F
      505F434F554E54050000000000000000000000110000003A5A325F543030315F
      4F505F43525F49440500000000000000000000000F0000003A5A325F54303031
      5F4F505F53554D050000000000000000000000100000003A5A325F543030315F
      4F505F50524F430500000000000000000000000D0000003A5A325F53554D5F43
      524F53530500000000000000000000000E0000003A5A325F50524F435F43524F
      53530500000000000000000000000D0000003A5A325F543031325F4E414D4505
      00000000000000000000000D0000003A5A325F543031325F434F444505000000
      00000000000000000D0000003A5A325F543031335F4E414D4505000000000000
      00000000000D0000003A5A325F543031335F434F444505000000000000000000
      00000C0000003A5A325F543030315F4331300500000000000000000000000D00
      00003A5A325F543032355F434F4445050000000000000000000000110000003A
      5A325F543032375F5345435F5459504505000000000000000000000010000000
      3A5A325F543030315F444154455F4F4E05000000000000000000000011000000
      3A5A325F543030315F444154455F4F46460500000000000000000000000E0000
      003A5A325F543030315F43525F49440500000000000000000000000B0000003A
      5A325F543030315F4E380500000000000000000000000B0000003A5A325F5430
      30315F4E390500000000000000000000000B0000003A5A325F543030315F3130
      0500000000000000000000000C0000003A5A325F543030315F43313105000000
      00000000000000000C0000003A5A325F543030315F4331320500000000000000
      000000000C0000003A5A325F543030315F433136050000000000000000000000
      0C0000003A5A325F543030315F4331370500000000000000000000000C000000
      3A5A325F543030315F4331380500000000000000000000000C0000003A5A325F
      543030315F4331390500000000000000000000000C0000003A5A325F54303031
      5F433230050000000000000000000000}
    Left = 520
    Top = 160
  end
  object oqVert: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_view_vertical '
      '  ('
      '    :z1_DO_ACTION_STR,'
      '    :z1_N_GR,'
      '    :z1_T001_DATE_OP ,'
      '    :z1_T011_TYPE_ID ,'
      '    :z1_T006_NAME,'
      '    :z1_T001_OP_COUNT,'
      '    :z1_T001_OP_CR_ID,'
      '    :z1_T001_OP_SUM,'
      '    :z1_T001_OP_PROC,'
      '    :z1_SUM_CROSS,'
      '    :z1_PROC_CROSS,'
      '    :z1_T012_NAME,'
      '    :z1_T012_CODE,'
      '    :z1_T013_NAME,'
      '    :z1_T013_CODE,'
      '    :z1_T001_C10,'
      '    :z1_T025_CODE,'
      '    :z1_T027_SEC_TYPE,'
      '    :z1_T001_DATE_ON,'
      '    :z1_T001_DATE_OFF,'
      '    :z1_T001_CR_ID,'#9#9
      '    :z1_T001_N8,'
      '    :z1_T001_N9,'
      '    :z1_T001_10,'
      '    :z1_T001_C11,'
      '    :z1_T001_C12,'
      '    :z1_T001_C16,'
      '    :z1_T001_C17,'
      '    :z1_T001_C18,'
      '    :z1_T001_C19,'
      '    :z1_T001_C20'#9#9'  '
      '  );'
      'end;'#9#9
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      030000001F000000110000003A5A315F444F5F414354494F4E5F535452050000
      000000000000000000080000003A5A315F4E5F47520500000000000000000000
      00100000003A5A315F543030315F444154455F4F500500000000000000000000
      00100000003A5A315F543031315F545950455F49440500000000000000000000
      000D0000003A5A315F543030365F4E414D450500000000000000000000001100
      00003A5A315F543030315F4F505F434F554E5405000000000000000000000011
      0000003A5A315F543030315F4F505F43525F4944050000000000000000000000
      0F0000003A5A315F543030315F4F505F53554D05000000000000000000000010
      0000003A5A315F543030315F4F505F50524F430500000000000000000000000D
      0000003A5A315F53554D5F43524F53530500000000000000000000000E000000
      3A5A315F50524F435F43524F53530500000000000000000000000D0000003A5A
      315F543031325F4E414D450500000000000000000000000D0000003A5A315F54
      3031325F434F44450500000000000000000000000D0000003A5A315F54303133
      5F4E414D450500000000000000000000000D0000003A5A315F543031335F434F
      44450500000000000000000000000C0000003A5A315F543030315F4331300500
      000000000000000000000D0000003A5A315F543032355F434F44450500000000
      00000000000000110000003A5A315F543032375F5345435F5459504505000000
      0000000000000000100000003A5A315F543030315F444154455F4F4E05000000
      0000000000000000110000003A5A315F543030315F444154455F4F4646050000
      0000000000000000000E0000003A5A315F543030315F43525F49440500000000
      000000000000000B0000003A5A315F543030315F4E3805000000000000000000
      00000B0000003A5A315F543030315F4E390500000000000000000000000B0000
      003A5A315F543030315F31300500000000000000000000000C0000003A5A315F
      543030315F4331310500000000000000000000000C0000003A5A315F54303031
      5F4331320500000000000000000000000C0000003A5A315F543030315F433136
      0500000000000000000000000C0000003A5A315F543030315F43313705000000
      00000000000000000C0000003A5A315F543030315F4331380500000000000000
      000000000C0000003A5A315F543030315F433139050000000000000000000000
      0C0000003A5A315F543030315F433230050000000000000000000000}
    Left = 832
    Top = 168
  end
end
