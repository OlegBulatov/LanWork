inherited R01_Opers: TR01_Opers
  Width = 895
  Height = 603
  inherited xxxDBGrid: TxxxDBGrid
    Top = 57
    Width = 895
    Height = 446
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.Indexes = <
      item
        FieldName = 'T013_NAME'
        SortType = stAsc
      end
      item
        FieldName = 'T001_OP_SUM_CROSS_DIR'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 4
            LastCol = 5
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 6
            LastCol = 11
            Caption = 'Операция'
          end
          item
            FirstCol = 12
            LastCol = 13
            Caption = 'Резидент'
          end
          item
            FirstCol = 18
            LastCol = 22
            Caption = 'Связано с объявлением'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'IS_CHECKED'
        PickList.Strings = ()
        Title.Caption = 'Выбр.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M079_PROC_VALUE'
        PickList.Strings = ()
        Title.Caption = 'Ставка (исп.)'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PROC'
        PickList.Strings = ()
        Title.Caption = 'Ставка (расч.)'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T013_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT_DIR'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. (млн.шт.)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS_DIR'
        PickList.Strings = ()
        Title.Caption = 'Сумма (млн.$)'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PROC_CROSS_DIR'
        PickList.Strings = ()
        Title.Caption = 'Проценты (млн.$)'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_DIR'
        PickList.Strings = ()
        Title.Caption = 'Сумма (млн.в.пл.)'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PROC_DIR'
        PickList.Strings = ()
        Title.Caption = 'Проценты (млн.в.пл.)'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_DESC'
        PickList.Strings = ()
        Title.Caption = 'Валюта платежа'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T012_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T012_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Отчетный период'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = 'Номер строки'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Комментарий'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M079_PROC_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма налога ($)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_BUY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Собственник'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M050_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M050_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма за акцию (руб.)'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M050_SUM_CALC'
        PickList.Strings = ()
        Title.Caption = 'Расчетная сумма за акцию (руб.)'
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 895
    inherited tlbNav: TToolBar
      Left = 448
    end
    inherited tlbList: TToolBar
      Left = 525
      inherited tbSeparator02: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbExcel: TToolBar
      Left = 767
    end
    inherited tlbSeach: TToolBar
      Left = 801
    end
    inherited tlbFilter: TToolBar
      Left = 868
      TabOrder = 5
    end
    inherited tlbSelect: TToolBar
      Left = 949
      TabOrder = 6
      inherited tbSelect: TToolButton
        OnClick = act405Execute
      end
    end
    object tbOperEdit: TToolBar
      Left = 0
      Top = 0
      Width = 448
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 110
      Caption = 'tlbSearch'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 7
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator04'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 8
        Top = 0
        Action = actBindOper
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 81
        Top = 0
        Action = act405
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 185
        Top = 0
        Action = actSetPrc
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 299
        Top = 0
        Action = actDelBindOper
        AutoSize = True
      end
    end
    object ToolBar1: TToolBar
      Left = 980
      Top = 0
      Width = 222
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 107
      Caption = 'tlbSearch'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 4
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator04'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 8
        Top = 0
        Action = actOtherPr
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 119
        Top = 0
        Action = actOtherPortf
      end
    end
  end
  object paLink: TPanel [2]
    Left = 0
    Top = 503
    Width = 895
    Height = 100
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 57
      Width = 43
      Height = 13
      Caption = 'Сумма $'
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Кол-во ц.б.'
    end
    object Label6: TLabel
      Left = 74
      Top = 8
      Width = 58
      Height = 13
      Caption = 'Вх. остаток'
    end
    object Label7: TLabel
      Left = 143
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Выбрано'
    end
    object Label8: TLabel
      Left = 213
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Исх. остаток'
    end
    object DBEdit1: TDBEdit
      Left = 74
      Top = 29
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'COUNTIN'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 143
      Top = 29
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'COUNT405'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 143
      Top = 54
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'SUM405'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 54
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'SUMIN'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 212
      Top = 54
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'SUMDELTA'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 212
      Top = 29
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'COUNTDELTA'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
    inline fmCheckBox1: TfmCheckBox
      Left = 759
      Width = 136
      Height = 100
      Align = alRight
      TabOrder = 6
      inherited lbCaption: TLabel
        Left = 23
        Width = 109
        Caption = 'Скрывать связанные'
      end
      inherited cb: TCheckBox
        Left = 5
        Checked = False
        State = cbUnchecked
      end
    end
  end
  object paFilter: TPanel [3]
    Left = 0
    Top = 25
    Width = 895
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline fmTextFilter1: TfmTextFilter
      Left = 4
      Top = 4
      inherited lbCaption: TLabel
        Width = 61
        Caption = 'Нерезидент'
      end
      inherited ed: TEdit
        Left = 87
        Text = ''
      end
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actBindOper: TAction [1]
      Category = 'Adv'
      Caption = 'Связать'
      ImageIndex = 19
      OnExecute = actBindOperExecute
    end
    object act405: TAction [2]
      Category = 'Adv'
      Caption = 'Перейти к 405'
      ImageIndex = 11
      OnExecute = act405Execute
      OnUpdate = act405Update
    end
    object actSetPrc: TAction [3]
      Category = 'Adv'
      Caption = 'Изменить налог'
      Hint = 'Изменить налог...'
      ImageIndex = 1
      OnExecute = actSetPrcExecute
      OnUpdate = actSetPrcUpdate
    end
    object actDelBindOper: TAction [5]
      Category = 'Adv'
      Caption = 'Удалить связь'
      Hint = 'Удалить связь'
      ImageIndex = 2
      OnExecute = actDelBindOperExecute
      OnUpdate = actDelBindOperUpdate
    end
    object actOtherPortf: TAction [8]
      Category = 'Adv'
      Caption = 'Прочие портф.'
      ImageIndex = 16
      OnExecute = actOtherPortfExecute
      OnUpdate = actOtherPortfUpdate
    end
    object actOtherPr: TAction [9]
      Category = 'Adv'
      Caption = 'Прочие прямые'
      ImageIndex = 16
      OnExecute = actOtherPrExecute
      OnUpdate = actOtherPrUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT IS_CHECKED, T001_ID,'
      '       T055_ID,'
      '       T002_ID,'
      '       T028_ID,'
      '       T027_ID,'
      '       M050_ID,'
      '       M050_DATE,'
      '       M050_SUM,'
      '       T006_DIRECTION,'
      '       M079_RIGHT,'
      '       M079_PROC_VALUE,'
      '       T001_PROC,'
      '       M079_PROC_SUM,'
      '       M050_SUM_CALC,'
      '       M030_BUY_NAME,'
      '       T001_DATE_OP,'
      '       T013_NAME,'
      '       COUNTRY_NAME,'
      '       T034_ID,'
      '       T001_OP_CR_DESC,'
      '       T012_NAME,'
      '       T012_CODE,'
      '       T002_BANK_CODE,'
      '       T002_NUMB_IN_YEA_DESC,'
      '       T001_ROW_NUM,'
      '       T001_COMMENT,'
      '       T001_OP_COUNT_DIR, '
      '       T001_OP_SUM_CROSS_DIR, '
      '       T001_OP_PROC_CROSS_DIR, '
      '       T001_OP_SUM_RUB_DIR, '
      '       T001_OP_PROC_DIR, '
      '       T001_OP_SUM_DIR'
      'FROM   V_NR_OP_BY_NEREZ'
      'WHERE  T055_ID BETWEEN :T055_ID_BEG AND :T055_ID_END'
      'group by IS_CHECKED, T001_ID,'
      '       T055_ID,'
      '       T002_ID,'
      '       T028_ID,'
      '       T027_ID,'
      '       M050_ID,'
      '       M050_DATE,'
      '       M050_SUM,'
      '       T006_DIRECTION,'
      '       M079_RIGHT,'
      '       M079_PROC_VALUE,'
      '       T001_PROC,'
      '       M079_PROC_SUM,'
      '       M050_SUM_CALC,'
      '       M030_BUY_NAME,'
      '       T001_DATE_OP,'
      '       T013_NAME,'
      '       COUNTRY_NAME,'
      '       T034_ID,'
      '       T001_OP_CR_DESC,'
      '       T012_NAME,'
      '       T012_CODE,'
      '       T002_BANK_CODE,'
      '       T002_NUMB_IN_YEA_DESC,'
      '       T001_ROW_NUM,'
      '       T001_COMMENT,'
      '       T001_OP_COUNT_DIR, '
      '       T001_OP_SUM_CROSS_DIR, '
      '       T001_OP_PROC_CROSS_DIR, '
      '       T001_OP_SUM_RUB_DIR, '
      '       T001_OP_PROC_DIR, '
      '       T001_OP_SUM_DIR'
      'having  T028_ID = :T028_ID'
      'AND    T027_ID = :T027_ID'
      'AND    T006_DIRECTION = :T006_DIRECTION'
      'AND     T034_ID = :T034_ID'
      ''
      ' ')
    Variables.Data = {
      03000000060000000C0000003A543035355F49445F4245470400000008000000
      0000000000C89C4000000000080000003A543032385F49440400000008000000
      000000000080754000000000080000003A543032375F49440400000008000000
      0000000000000840000000000C0000003A543035355F49445F454E4404000000
      080000000000000000C89C40000000000F0000003A543030365F444952454354
      494F4E0400000008000000000000000000F03F00000000080000003A54303334
      5F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002100000007000000543035355F494401000000000007000000543032
      385F494401000000000009000000543031335F4E414D450100000000000C0000
      00434F554E5452595F4E414D4501000000000009000000543031325F4E414D45
      01000000000009000000543031325F434F444501000000000009000000543030
      315F50524F430100000000000E000000543030325F42414E4B5F434F44450100
      00000000070000004D3035305F494401000000000007000000543032375F4944
      0100000000000F0000004D3037395F50524F435F56414C554501000000000007
      000000543030315F49440100000000000A0000004D3037395F52494748540100
      000000000C000000543030315F444154455F4F500100000000000C0000005430
      30315F434F4D4D454E540100000000000D0000004D3033305F4255595F4E414D
      450100000000000D0000004D3037395F50524F435F53554D0100000000000D00
      00004D3035305F53554D5F43414C430100000000000F000000543030315F4F50
      5F43525F4445534301000000000011000000543030315F4F505F434F554E545F
      44495201000000000015000000543030315F4F505F53554D5F43524F53535F44
      495201000000000016000000543030315F4F505F50524F435F43524F53535F44
      495201000000000010000000543030315F4F505F50524F435F44495201000000
      00000F000000543030315F4F505F53554D5F4449520100000000000C00000054
      3030315F524F575F4E554D0100000000000E000000543030365F444952454354
      494F4E01000000000013000000543030315F4F505F53554D5F5255425F444952
      010000000000090000004D3035305F44415445010000000000080000004D3035
      305F53554D01000000000007000000543030325F494401000000000007000000
      543033345F494401000000000015000000543030325F4E554D425F494E5F5945
      415F444553430100000000000A00000049535F434845434B4544010000000000}
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
    end
    object odsListM079_RIGHT: TStringField
      FieldName = 'M079_RIGHT'
      Size = 1
    end
    object odsListM079_PROC_VALUE: TFloatField
      FieldName = 'M079_PROC_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_PROC: TFloatField
      FieldName = 'T001_PROC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_PROC_SUM: TFloatField
      FieldName = 'M079_PROC_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_CALC: TFloatField
      FieldName = 'M050_SUM_CALC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM030_BUY_NAME: TStringField
      FieldName = 'M030_BUY_NAME'
      Size = 255
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 255
    end
    object odsListT001_OP_COUNT_DIR: TFloatField
      FieldName = 'T001_OP_COUNT_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT001_OP_SUM_CROSS_DIR: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_CROSS_DIR: TFloatField
      FieldName = 'T001_OP_PROC_CROSS_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_RUB_DIR: TFloatField
      FieldName = 'T001_OP_SUM_RUB_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_DIR: TFloatField
      FieldName = 'T001_OP_PROC_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_DIR: TFloatField
      FieldName = 'T001_OP_SUM_DIR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
    object odsListM050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListIS_CHECKED: TStringField
      FieldName = 'IS_CHECKED'
      ReadOnly = True
      Size = 1
    end
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
    end
    object odsListT034_ID: TFloatField
      FieldName = 'T034_ID'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 231
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T001_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T035_ID := :T035_ID;'
      '  v_rec.T001_N8 := :T001_N8;'
      '  v_rec.T001_N9 := :T001_N9;'
      '  v_rec.T001_10 := :T001_10;'
      '  v_rec.T001_11 := :T001_11;'
      '  v_rec.T001_N99 := :T001_N99;'
      '  v_rec.T001_COMMENT := :T001_COMMENT;'
      '  v_rec.T001_C11 := :T001_C11;'
      '  v_rec.T001_C12 := :T001_C12;'
      '  v_rec.T001_C16 := :T001_C16;'
      '  v_rec.T001_C17 := :T001_C17;'
      '  v_rec.T001_C18 := :T001_C18;'
      '  v_rec.T001_C19 := :T001_C19;'
      '  v_rec.T001_C20 := :T001_C20;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      ''
      '  PK_NResident.P_T001_Sum_Update(v_rec);'
      '/*'
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T035_ID := v_rec.T035_ID;'
      '  :T001_N8 := v_rec.T001_N8;'
      '  :T001_N9 := v_rec.T001_N9;'
      '  :T001_10 := v_rec.T001_10;'
      '  :T001_11 := v_rec.T001_11;'
      '  :T001_N99 := v_rec.T001_N99;'
      '  :T001_COMMENT := v_rec.T001_COMMENT;'
      '  :T001_C11 := v_rec.T001_C11;'
      '  :T001_C12 := v_rec.T001_C12;'
      '  :T001_C16 := v_rec.T001_C16;'
      '  :T001_C17 := v_rec.T001_C17;'
      '  :T001_C18 := v_rec.T001_C18;'
      '  :T001_C19 := v_rec.T001_C19;'
      '  :T001_C20 := v_rec.T001_C20;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT := v_rec.T001_DPB_COMMENT;'
      '*/'
      'END;'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      '')
    Variables.Data = {
      0300000024000000080000003A543030315F4944040000000000000000000000
      0D0000003A543030315F504152545F4944040000000000000000000000080000
      003A543030325F4944040000000000000000000000100000003A543030315F52
      4F575F5052454649580400000000000000000000000D0000003A543030315F52
      4F575F4E554D0400000000000000000000000D0000003A543030315F44415445
      5F4F500C00000000000000000000000B0000003A543030315F4F505F49440400
      000000000000000000000F0000003A543030315F4F505F5041595F4944040000
      0000000000000000000E0000003A543030315F4F505F434F554E540400000000
      000000000000000E0000003A543030315F4F505F43525F494405000000000000
      00000000000C0000003A543030315F4F505F53554D0400000000000000000000
      000D0000003A543030315F4F505F50524F430400000000000000000000000D00
      00003A543030315F444154455F4F4E0C00000000000000000000000E0000003A
      543030315F444154455F4F46460C00000000000000000000000B0000003A5430
      30315F43525F49440500000000000000000000000F0000003A543030315F4953
      5F52414E534F4D050000000000000000000000080000003A543031325F494404
      0000000000000000000000080000003A543031335F4944040000000000000000
      000000080000003A543033305F4944040000000000000000000000080000003A
      543033355F4944040000000000000000000000080000003A543030315F4E3804
      0000000000000000000000080000003A543030315F4E39040000000000000000
      000000080000003A543030315F3130040000000000000000000000080000003A
      543030315F3131040000000000000000000000090000003A543030315F4E3939
      0400000000000000000000000D0000003A543030315F434F4D4D454E54050000
      000000000000000000090000003A543030315F43313105000000000000000000
      0000090000003A543030315F433132050000000000000000000000090000003A
      543030315F433136050000000000000000000000090000003A543030315F4331
      37050000000000000000000000090000003A543030315F433138050000000000
      000000000000090000003A543030315F43313905000000000000000000000009
      0000003A543030315F4332300500000000000000000000000E0000003A543030
      315F494E565F545950450400000000000000000000000F0000003A543030315F
      50524F434553534544040000000000000000000000110000003A543030315F44
      50425F434F4D4D454E54050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_M079_rec;'
      'BEGIN'
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.M079_PROC_VALUE := :M079_PROC_VALUE;'
      '  PK_NResident.p_dividend_sum_edit(v_rec);'
      'END;')
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      100000003A4D3037395F50524F435F56414C5545040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_dividend_sum_delete(:T001_ID);'
      '--  commit;'
      'END;'
      '')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
  end
  object oqFindOper: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NResident.p_GM050_ID_set(:M050_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3035305F4944040000000000000000000000}
    Left = 376
    Top = 144
  end
  object oqBindOper: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M079_rec;'
      'BEGIN'
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.M050_ID := :M050_ID;'
      '  v_rec.M079_CALC_TYPE := :M079_CALC_TYPE;'
      '  v_rec.M079_PROC_VALUE := :M079_PROC_VALUE;'
      '  v_rec.M030_ID := :M030_ID;'
      '  '
      '  Pk_NResident.p_dividend_sum_add(v_rec);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A543030315F4944040000000000000000000000
      080000003A4D3035305F49440400000000000000000000000F0000003A4D3037
      395F43414C435F54595045040000000000000000000000080000003A4D303330
      5F4944040000000000000000000000100000003A4D3037395F50524F435F5641
      4C5545040000000000000000000000}
    Left = 440
    Top = 144
  end
  object oqSetOtherOne: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_NResident.p_SetOtherOne(:T001_ID , :T027_ID, :T027_ID_REAL,' +
        ' :M050_TYPE);'
      'end;'
      ' '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543030315F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000D0000003A543032
      375F49445F5245414C0400000000000000000000000A0000003A4D3035305F54
      595045040000000000000000000000}
    Left = 504
    Top = 304
  end
  object odsCalcDelta: TOracleDataSet
    SQL.Strings = (
      'SELECT   OUT_CNT CountIN,'
      '         OUT_SUM_USD SumIN,'
      '       0 Count405,'
      '       0 Sum405,'
      '       0 CountDelta,'
      '       0 SumDelta'
      'FROM     V_NR_LINK_OWNERS_LIST'
      'WHERE    M050_ID = :M050_ID'
      'AND      M030_ID = :M030_ID'
      'AND      T055_ID = :M055_ID'
      ''
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A4D3035305F4944040000000000000000000000
      080000003A4D3033305F4944040000000000000000000000080000003A4D3035
      355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000008000000434F554E54343035010000000000060000005355
      4D34303501000000000007000000444154454449560100000000000A00000043
      4F554E5444454C54410100000000000800000053554D44454C54410100000000
      0007000000434F554E54494E0100000000000500000053554D494E0100000000
      00}
    OnApplyRecord = odsCalcDeltaApplyRecord
    Session = dmMain.OracleSession
    Left = 400
    Top = 520
    object odsCalcDeltaCOUNT405: TFloatField
      FieldName = 'COUNT405'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaSUM405: TFloatField
      FieldName = 'SUM405'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaCOUNTDELTA: TFloatField
      FieldName = 'COUNTDELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaSUMDELTA: TFloatField
      FieldName = 'SUMDELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaCOUNTIN: TFloatField
      FieldName = 'COUNTIN'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaSUMIN: TFloatField
      FieldName = 'SUMIN'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsCalcDelta: TDataSource
    DataSet = odsCalcDelta
    Left = 440
    Top = 520
  end
end
