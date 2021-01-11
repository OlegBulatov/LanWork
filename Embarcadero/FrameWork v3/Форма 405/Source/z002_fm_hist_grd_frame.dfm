inherited z002_fm_hist_grd: Tz002_fm_hist_grd
  Width = 1184
  Height = 706
  Align = alClient
  inherited xxxDBGrid: TxxxDBGrid
    Top = 167
    Width = 1184
    Height = 539
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 15
            Caption = 'Парам5етры расчетов по операциям с ценными бумагами'
          end
          item
            FirstCol = 21
            LastCol = 26
            Caption = 'Характеристика ценной бумаги'
          end
          item
            FirstCol = 30
            LastCol = 34
            Caption = 'Контрагент'
          end
          item
            FirstCol = 38
            LastCol = 39
            Caption = 'Кредитная организация'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 16
            LastCol = 17
            Caption = 'Резидент'
          end
          item
            FirstCol = 32
            LastCol = 33
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 18
            LastCol = 20
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 30
            LastCol = 31
            Caption = 'Банк-нерезидента'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'STR_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Действие'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STR_HANDLER'
        PickList.Strings = ()
        Title.Caption = 'Источник'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'H001_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'H001_USER'
        PickList.Strings = ()
        Title.Caption = 'Пользователь'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ID'
        PickList.Strings = ()
        Title.Caption = 'Id в таблице '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW_PRFX'
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
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        PickList.Strings = ()
        Title.Caption = 'РАССРОЧКА'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_10'
        PickList.Strings = ()
        Title.Caption = 'ПАКЕТ'
        Width = 14
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
      end
      item
        Expanded = False
        FieldName = 'STR_INV_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип инвестици'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'H001_NUM'
        PickList.Strings = ()
        Title.Caption = '№'
        Width = 19
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 142
    Width = 1184
    Anchors = [akLeft, akTop]
  end
  inline filters: Tz002_fm_filter [2]
    Width = 1184
    Height = 121
    Align = alTop
    TabOrder = 3
    inherited PeriodFilter: TE002_PeriodFilter
      inherited lcb2: TRxDBLookupCombo
        Left = 338
        Width = 186
      end
    end
    inherited TypeFilter: Tz002_type_filter
      inherited lbCaption: TLabel
        Left = 32
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 86
        Width = 103
      end
      inherited cb: TCheckBox
        Left = 11
      end
    end
    inherited HandlerFilter: Tz002_handler_filter
      Width = 190
      inherited lbCaption: TLabel
        Left = 27
        Top = 2
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 86
        Width = 102
      end
      inherited cb: TCheckBox
        Left = 10
        Width = 15
      end
      inherited dsList: TDataSource
        Left = 144
      end
      inherited odsList: TOracleDataSet
        Left = 104
      end
    end
    inherited SecTypeFilter: TC002_TypeSec
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 126
      end
    end
    inherited InvTypeFilter: Tz002_inv_filter
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 399
      end
    end
    inherited Button1: TButton
      Action = actRefresh
    end
  end
  inherited fm031_Filter1: Tfm031_Filter [3]
    Top = 121
    Width = 1184
    inherited Panel1: TPanel
      Left = 1157
    end
  end
  inherited actList: TActionList [4]
  end
  inherited dsList: TDataSource [5]
  end
  inherited odsList: TOracleDataSet [6]
    SQL.Strings = (
      'SELECT T055_ID,'
      #9'   T002_BANK_CODE,'
      #9'   bank_name,'
      #9'   N_GR,'
      '          T001_ROW_PREFIX,'
      '          T001_ROW_PRFX,'
      '          T001_ROW_NUM,'
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
      #9'   PROC_CROSS,'
      #9'   T001_ID,'
      #9'   t001_inv_type,'
      #9'   str_inv_type,'
      #9'   H001_NUM,'
      #9'   H001_TYPE,'
      #9'   STR_TYPE,'
      #9'   H001_HANDLER,'
      #9'   STR_HANDLER,'
      #9'   H001_USER,'
      #9'   H001_DATE'
      '  FROM V_SUM_HIST')
    QBEDefinition.QBEFieldDefs = {
      040000003200000007000000543035355F49440100000000000E000000543030
      325F42414E4B5F434F4445010000000000040000004E5F475201000000000007
      000000543033335F494401000000000007000000543033345F49440100000000
      0009000000543032355F434F44450100000000000C000000543031315F545950
      455F49440100000000000D000000543030315F4F505F434F554E540100000000
      000B000000543030315F4F505F53554D0100000000000C000000543030315F4F
      505F50524F430100000000000C000000543030315F444154455F4F5001000000
      000007000000543032375F49440100000000000D000000543032375F5345435F
      5459504501000000000009000000543030365F4E414D450100000000000D0000
      00543030315F4F505F43525F494401000000000009000000543031325F4E414D
      4501000000000009000000543031325F434F4445010000000000090000005430
      31335F4E414D4501000000000009000000543031335F434F4445010000000000
      0C000000543030315F434F4D4D454E5401000000000008000000543030315F43
      313001000000000008000000543030315F433131010000000000080000005430
      30315F43313201000000000008000000543030315F4331360100000000000800
      0000543030315F43313701000000000008000000543030315F43313801000000
      000008000000543030315F43313901000000000008000000543030315F433230
      01000000000007000000543030315F4E3801000000000007000000543030315F
      4E3901000000000007000000543030315F31300100000000000C000000543030
      315F444154455F4F4E0100000000000D000000543030315F444154455F4F4646
      0100000000000A000000543030315F43525F4944010000000000090000005355
      4D5F43524F53530100000000000A00000050524F435F43524F53530100000000
      0007000000543030315F494401000000000008000000483030315F4E554D0100
      0000000009000000483030315F54595045010000000000080000005354525F54
      5950450100000000000C000000483030315F48414E444C45520100000000000B
      0000005354525F48414E444C455201000000000009000000483030315F555345
      5201000000000009000000483030315F444154450100000000000D0000005430
      30315F494E565F545950450100000000000C0000005354525F494E565F545950
      450100000000000900000042414E4B5F4E414D450100000000000F0000005430
      30315F524F575F5052454649580100000000000D000000543030315F524F575F
      505246580100000000000C000000543030315F524F575F4E554D010000000000}
    Left = 161
    Top = 205
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
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
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
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
    end
    object odsListPROC_CROSS: TFloatField
      FieldName = 'PROC_CROSS'
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListH001_NUM: TFloatField
      FieldName = 'H001_NUM'
    end
    object odsListSTR_TYPE: TStringField
      FieldName = 'STR_TYPE'
      Size = 9
    end
    object odsListSTR_HANDLER: TStringField
      FieldName = 'STR_HANDLER'
      Size = 12
    end
    object odsListH001_USER: TStringField
      FieldName = 'H001_USER'
      Size = 255
    end
    object odsListH001_DATE: TDateTimeField
      FieldName = 'H001_DATE'
    end
    object odsListT001_INV_TYPE: TIntegerField
      FieldName = 'T001_INV_TYPE'
    end
    object odsListSTR_INV_TYPE: TStringField
      FieldName = 'STR_INV_TYPE'
      Size = 15
    end
    object odsListH001_TYPE: TFloatField
      FieldName = 'H001_TYPE'
    end
    object odsListH001_HANDLER: TFloatField
      FieldName = 'H001_HANDLER'
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
    end
  end
  inherited PopupMenu: TPopupMenu [7]
  end
  inherited oqAdd: TOracleQuery [8]
    Left = 343
    Top = 256
  end
  inherited oqUpdate: TOracleQuery [9]
    Left = 287
    Top = 252
  end
  inherited oqDelete: TOracleQuery [10]
    Left = 263
    Top = 324
  end
  inherited odsFetchRecord: TOracleDataSet [11]
    Left = 201
    Top = 242
  end
end
