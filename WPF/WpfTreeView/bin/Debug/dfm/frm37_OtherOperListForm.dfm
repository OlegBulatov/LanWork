inherited frm37_OtherOperList: Tfrm37_OtherOperList
  Left = 212
  Top = 286
  Width = 977
  Height = 623
  Caption = 'Прочие опреации'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 966
    Height = 537
  end
  inherited Panel2: TPanel
    Top = 556
    Width = 969
    inherited Panel3: TPanel
      Left = 804
    end
  end
  inherited paRight: TPanel
    Left = 969
    Height = 537
  end
  inherited paMain: TPanel
    Width = 966
    Height = 537
    inherited paToolBars: TPanel
      Top = 106
      Width = 966
      inherited ToolBar2: TToolBar
        Width = 966
        inherited ToolButton17: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton18: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton19: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        object ToolButton6: TToolButton
          Left = 674
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object tbNotOther: TToolButton
          Left = 682
          Top = 0
          Hint = 'Вернуть выделенные операции на закладку "Выплата Дивидентов"'
          Action = actNotOther
        end
        object ToolButton8: TToolButton
          Left = 789
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 17
          Style = tbsSeparator
        end
        object ToolButton7: TToolButton
          Left = 797
          Top = 0
          Action = actShow405
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 171
      Width = 966
      Height = 366
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 3
              Caption = 'Тип инв.'
            end
            item
              FirstCol = 10
              LastCol = 11
              Caption = 'Резидент'
            end
            item
              FirstCol = 8
              LastCol = 9
              Caption = 'Нерезидент'
            end
            item
              FirstCol = 12
              LastCol = 15
              Caption = 'Операция'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_PROCESSED'
          PickList.Strings = ()
          Title.Caption = 'К учету'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_PR'
          PickList.Strings = ()
          Title.Caption = 'Прям.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Порт.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_NOT'
          PickList.Strings = ()
          Title.Caption = 'Неопределен'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECTION_DESC'
          PickList.Strings = ()
          Title.Caption = 'Направление'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 241
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
          FieldName = 'T001_NREZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Проценты ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_RUB'
          PickList.Strings = ()
          Title.Caption = 'Сумма (руб.)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE_OP'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б. операции'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_10'
          PickList.Strings = ()
          Title.Caption = 'ПАКЕТ'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий'
          Width = 150
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 129
      Width = 966
      inherited Panel1: TPanel
        Left = 939
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 150
      Width = 966
      inherited Panel1: TPanel
        Left = 939
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 966
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object SpeedButton1: TSpeedButton
        Left = 326
        Top = 4
        Width = 75
        Height = 22
        Action = actApplyFiltr
        Flat = True
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 97
        Height = 13
        Caption = 'Отчетный период с'
      end
      object Label2: TLabel
        Left = 8
        Top = 30
        Width = 103
        Height = 13
        Caption = 'Отчетный период по'
      end
      object Label3: TLabel
        Left = 8
        Top = 53
        Width = 40
        Height = 13
        Caption = 'Тип ц.б.'
      end
      object Label4: TLabel
        Left = 8
        Top = 76
        Width = 61
        Height = 13
        Caption = 'Нерезидент'
      end
      inline fm01_Period1: Tfm01_Period
        Left = 116
        Top = 2
        Width = 202
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 197
          KeyField = 'T055_ID'
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_NR_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA DESC')
          Left = 56
          Top = 65530
        end
      end
      object lcbType: TDBLookupComboBox
        Left = 120
        Top = 49
        Width = 198
        Height = 21
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'DESC_FLD'
        ListSource = dsType
        TabOrder = 1
      end
      inline fm01_Period2: Tfm01_Period
        Left = 120
        Top = 25
        Width = 198
        TabOrder = 2
        inherited Label1: TLabel
          Width = 9
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 0
          Width = 198
          KeyField = 'T055_ID'
        end
        inherited dsPeriod: TDataSource
          Left = 80
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_NR_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA DESC')
          Left = 48
        end
      end
      object edNerez: TEdit
        Left = 120
        Top = 72
        Width = 198
        Height = 21
        TabOrder = 3
        OnKeyDown = edNerezKeyDown
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 537
    Width = 969
  end
  inherited ActionList: TActionList
    OnChange = actNotOtherExecute
    inherited actSelectAllRows: TAction
      ShortCut = 16449
    end
    object actApplyFiltr: TAction
      Caption = 'Обновить'
      OnExecute = actApplyFiltrExecute
    end
    object actNotOther: TAction
      Caption = 'Не прочие'
      ImageIndex = 15
      OnExecute = actNotOtherExecute
      OnUpdate = actNotOtherUpdate
    end
    object actShow405: TAction
      Caption = 'Перейти к 405'
      ImageIndex = 11
      OnExecute = actShow405Execute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T030_ID,'
      '  CAST(T001_PROCESSED AS FLOAT) AS T001_PROCESSED,'
      '  T001_INV_PR,'
      '  T001_INV_PORTF,'
      '  T001_INV_NOT,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T001_NREZID_NAME,'
      '  T001_NREZID_COUNTRY,'
      '  T001_REZID_NAME,'
      '  T001_REZID_INN,'
      '  T001_OP_COUNT,'
      '  T001_OP_SUM_CROSS,'
      '  T001_OP_SUM_RUB,'
      '  CAST(T002_ID AS FLOAT) AS T002_ID,'
      '  T055_ID,'
      '  T012_ID,'
      '  T013_ID,'
      '  T027_ID,'
      '  T001_ID,'
      '  T001_OTHER,'
      '  T001_OP_CR_ID,'
      '  T001_COMMENT,'
      '  T001_10,'
      '  T001_OP_PROC_CROSS,'
      '  T001_DATE_OP,'
      '  DIRECTION_DESC,'
      '  CAST(T001_ROW_NUM AS FLOAT) AS T001_ROW_NUM,'
      '  T027_SEC_TYPE_OP'
      'FROM V_NR_OTHER_OPER'
      'WHERE T027_ID = :T027_ID'
      'AND T055_ID BETWEEN :T055_ID_BEG AND :T055_ID_END'
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032375F4944040000000000000000000000
      0C0000003A543035355F49445F4245470400000000000000000000000C000000
      3A543035355F49445F454E44040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001D0000000E000000543030315F50524F434553534544010000000000
      0B000000543030315F494E565F50520100000000000E000000543030315F494E
      565F504F5254460100000000000E000000543032385F53484F545F4E414D4501
      000000000008000000543032385F494E4E01000000000010000000543030315F
      4E52455A49445F4E414D4501000000000013000000543030315F4E52455A4944
      5F434F554E5452590100000000000F000000543030315F52455A49445F4E414D
      450100000000000E000000543030315F52455A49445F494E4E0100000000000D
      000000543030315F4F505F434F554E5401000000000011000000543030315F4F
      505F53554D5F43524F53530100000000000F000000543030315F4F505F53554D
      5F52554201000000000007000000543033305F49440100000000000700000054
      3035355F494401000000000007000000543031325F4944010000000000070000
      00543031335F494401000000000007000000543032375F49440100000000000A
      000000543030315F4F5448455201000000000007000000543030315F49440100
      000000000D000000543030315F4F505F43525F49440100000000000C00000054
      3030315F434F4D4D454E5401000000000007000000543030315F313001000000
      000012000000543030315F4F505F50524F435F43524F53530100000000000C00
      0000543030315F444154455F4F500100000000000E000000444952454354494F
      4E5F444553430100000000000C000000543030315F494E565F4E4F5401000000
      000007000000543030325F49440100000000000C000000543030315F524F575F
      4E554D01000000000010000000543032375F5345435F545950455F4F50010000
      000000}
    object odsListT001_INV_PR: TFloatField
      FieldName = 'T001_INV_PR'
    end
    object odsListT001_INV_PORTF: TFloatField
      FieldName = 'T001_INV_PORTF'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_INN: TStringField
      FieldName = 'T001_REZID_INN'
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_OTHER: TFloatField
      FieldName = 'T001_OTHER'
      Required = True
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 255
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListDIRECTION_DESC: TStringField
      FieldName = 'DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_INV_NOT: TFloatField
      FieldName = 'T001_INV_NOT'
    end
    object odsListT001_PROCESSED: TFloatField
      FieldName = 'T001_PROCESSED'
    end
    object odsListT001_ROW_NUM: TFloatField
      FieldName = 'T001_ROW_NUM'
    end
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
    end
    object odsListT027_SEC_TYPE_OP: TStringField
      FieldName = 'T027_SEC_TYPE_OP'
      Size = 255
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T001_rec;'
      'BEGIN'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_NR_INV_TYPE := :T001_NR_INV_TYPE;'
      '  v_rec.T001_ID := :T001_ID;'
      ''
      '  PK_NResident.p_t001_update_check_fields(v_rec, :T027_ID);'
      'END;')
    Variables.Data = {
      03000000040000000F0000003A543030315F50524F4345535345440400000000
      00000000000000110000003A543030315F4E525F494E565F5459504504000000
      0000000000000000080000003A543030315F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_dividend_sum_delete(:T001_ID);'
      'END;'
      '')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID, T027_SEC_TYPE, DESC_FLD'
      'FROM V_NR_SEC_TYPE_OTH'
      'ORDER BY T027_SEC_TYPE'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      0000}
    Session = dmMain.OracleSession
    Left = 224
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
      Required = True
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 256
    Top = 50
  end
  object oqSetNotOther: TOracleQuery
    SQL.Strings = (
      'begin'
      '--    Pk_NResident.p_SetOtherOper(:T001_ID, '#39'0'#39');'
      'end;')
    Session = dmMain.OracleSession
    Left = 136
    Top = 224
  end
end
