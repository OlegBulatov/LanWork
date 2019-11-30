inherited frm82_NrezList: Tfrm82_NrezList
  Left = 298
  Top = 107
  Width = 940
  Height = 780
  Caption = 'Выплаты дивидендов: связывание платежей'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 0
    Top = 128
    Width = 932
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    Visible = True
  end
  object Splitter1: TSplitter [1]
    Left = 0
    Top = 590
    Width = 932
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  inherited Panel2: TPanel
    Top = 694
    Width = 932
    inherited Panel3: TPanel
      Left = 767
    end
  end
  inherited paRight: TPanel
    Left = 0
    Width = 932
    Height = 128
    Align = alTop
    Alignment = taLeftJustify
  end
  inherited paMain: TPanel
    Top = 132
    Width = 932
    Height = 458
    inherited paToolBars: TPanel
      Width = 932
      inherited ToolBar2: TToolBar
        Left = 200
        Width = 1005
        Align = alLeft
        ButtonWidth = 110
        ShowHint = False
        inherited ToolButton17: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton18: TToolButton
          Left = 104
        end
        inherited ToolButton19: TToolButton
          Left = 218
          Caption = 'Удалить связь'
        end
        inherited ToolButton5: TToolButton
          Left = 325
          Action = actBindOper
          Enabled = False
          Visible = False
        end
        inherited ToolButton4: TToolButton
          Left = 400
        end
        inherited ToolBar1: TToolBar
          Left = 408
        end
        inherited sp02: TToolButton
          Left = 477
        end
        inherited tbSimFilter: TToolButton
          Left = 485
        end
        inherited tbSep01: TToolButton
          Left = 569
        end
        inherited tlbSearch: TToolBar
          Left = 577
        end
        inherited ToolButton13: TToolButton
          Left = 647
        end
        inherited tbExcel: TToolButton
          Left = 655
        end
        object ToolButton6: TToolButton
          Left = 765
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton8: TToolButton
          Left = 773
          Top = 0
          Action = actOtherPr
        end
        object ToolButton10: TToolButton
          Left = 883
          Top = 0
          Action = actOtherPortf
        end
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 200
        Height = 23
        Align = alLeft
        ButtonWidth = 100
        Caption = 'ToolBar3'
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
        ShowHint = False
        TabOrder = 1
        Wrapable = False
        object ToolButton11: TToolButton
          Left = 0
          Top = 0
          Action = actBindOper
        end
        object ToolButton7: TToolButton
          Left = 100
          Top = 0
          Action = act405
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 932
      Height = 393
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_CROSS_DIR'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 8
              LastCol = 9
              Caption = 'Нерезидент'
            end
            item
              FirstCol = 10
              LastCol = 15
              Caption = 'Операция'
            end
            item
              FirstCol = 16
              LastCol = 17
              Caption = 'Резидент'
            end
            item
              FirstCol = 3
              LastCol = 5
              Caption = 'Связано с объявлением'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
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
          FieldName = 'M079_PROC_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
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
          Width = 203
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
          Title.Caption = 'Кол-во ц.б.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS_DIR'
          PickList.Strings = ()
          Title.Caption = 'Сумма ($)'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_DIR'
          PickList.Strings = ()
          Title.Caption = 'Сумма (валюта платежа)'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS_DIR'
          PickList.Strings = ()
          Title.Caption = 'Проценты ($)'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_DIR'
          PickList.Strings = ()
          Title.Caption = 'Проценты (валюта платежа)'
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
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 932
      inherited Panel1: TPanel
        Left = 905
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 932
      inherited Panel1: TPanel
        Left = 905
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 727
    Width = 932
  end
  object Panel4: TPanel [6]
    Left = 0
    Top = 594
    Width = 932
    Height = 100
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 4
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Caption = 'Перейти к 405'
      ImageIndex = 1
    end
    inherited actDeleteAttributes: TAction
      Hint = 'Удалить связь'
    end
    inherited actEditAttributes: TAction
      Caption = 'Изменить налог'
      Hint = 'Пересчитать период'
    end
    object actFindOper: TAction
      Caption = 'Поиск'
      ImageIndex = 11
      OnExecute = actFindOperExecute
    end
    object actBindOper: TAction
      Caption = 'Связать'
      ImageIndex = 19
      OnExecute = actBindOperExecute
      OnUpdate = actBindOperUpdate
    end
    object actOtherPr: TAction
      Caption = 'Прочие прямые'
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
    object act405: TAction
      Caption = 'Перейти к 405'
      ImageIndex = 11
      OnExecute = act405Execute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T001_ID,'
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
      'group by T001_ID,'
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
      040000002000000007000000543035355F494401000000000007000000543032
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
      415F44455343010000000000}
    OnCalcFields = odsListCalcFields
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
      DisplayFormat = '### ### ### ##0'
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
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT034_ID: TFloatField
      FieldName = 'T034_ID'
      Required = True
    end
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
end
