inherited frm81_IssuerList: Tfrm81_IssuerList
  Left = 139
  Top = 192
  Width = 1017
  Height = 664
  Caption = 'Выплаты диведендов: эмитенты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1006
    Height = 578
  end
  inherited Panel2: TPanel
    Top = 597
    Width = 1009
    inherited Panel3: TPanel
      Left = 844
    end
  end
  inherited paRight: TPanel
    Left = 1009
    Height = 578
  end
  inherited paMain: TPanel
    Width = 1006
    Height = 578
    inherited paToolBars: TPanel
      Top = 100
      Width = 1006
      inherited ToolBar2: TToolBar
        Width = 1006
        inherited ToolButton18: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton19: TToolButton
          Left = 177
        end
        inherited ToolButton5: TToolButton
          Left = 251
          Enabled = False
          Visible = False
        end
        inherited ToolButton4: TToolButton
          Left = 326
        end
        inherited ToolBar1: TToolBar
          Left = 334
        end
        inherited sp02: TToolButton
          Left = 403
        end
        inherited tbSimFilter: TToolButton
          Left = 411
        end
        inherited tbSep01: TToolButton
          Left = 495
        end
        inherited tlbSearch: TToolBar
          Left = 503
        end
        inherited ToolButton13: TToolButton
          Left = 573
        end
        inherited tbExcel: TToolButton
          Left = 581
        end
        object ToolButton6: TToolButton
          Left = 688
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton7: TToolButton
          Left = 696
          Top = 0
          Action = actOtherPr
        end
        object ToolButton8: TToolButton
          Left = 803
          Top = 0
          Action = actOtherPortf
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 165
      Width = 1006
      Height = 413
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
              Caption = 'Сумма ($)'
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
          Title.Caption = 'Кол-во ц.б.'
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
    inherited fmSeach: TfmSeachFrame
      Top = 123
      Width = 1006
      inherited Panel1: TPanel
        Left = 979
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 144
      Width = 1006
      inherited Panel1: TPanel
        Left = 979
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1006
      Height = 100
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object SpeedButton1: TSpeedButton
        Left = 438
        Top = 2
        Width = 75
        Height = 22
        Action = actApplayFilter
        Flat = True
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 97
        Height = 13
        Caption = 'Отчетный период с'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 40
        Height = 13
        Caption = 'Тип ц.б.'
      end
      object Label3: TLabel
        Left = 8
        Top = 32
        Width = 103
        Height = 13
        Caption = 'Отчетный период по'
      end
      inline fm01_Period1: Tfm01_Period
        Left = 127
        Top = 2
        Width = 304
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 300
          KeyField = 'T055_ID'
        end
        inherited dsPeriod: TDataSource
          Left = 96
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 64
          Top = 65530
        end
      end
      object lcbType: TDBLookupComboBox
        Left = 131
        Top = 51
        Width = 300
        Height = 21
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'DESC_FLD'
        ListSource = dsType
        TabOrder = 1
      end
      inline fm01_Period2: Tfm01_Period
        Left = 131
        Top = 26
        Width = 300
        Height = 25
        TabOrder = 2
        inherited Label1: TLabel
          Width = 1
          Height = 25
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 0
          Width = 300
          KeyField = 'T055_ID'
        end
      end
      inline fm19_NResidType1: Tfm19_NResidType
        Top = 71
        Width = 433
        TabOrder = 3
        inherited Label1: TLabel
          Left = 8
        end
        inherited Lookup01: TDBLookupComboBox
          Left = 131
          Width = 300
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 578
    Width = 1009
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = 'Пересчитать'
      Hint = 'Пересчитать период'
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
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
      '  SUM(T001_OP_COUNT) T001_OP_COUNT,'
      '  SUM(T001_OP_SUM_CROSS) T001_OP_SUM_CROSS,'
      '  SUM(T001_OP_PROC_CROSS) T001_OP_PROC_CROSS,'
      '  SUM(T001_OP_SUM_CROSS_Y) T001_OP_SUM_CROSS_Y,'
      '  SUM(T001_OP_SUM_CROSS_N) T001_OP_SUM_CROSS_N'
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
      'having T027_ID = :T027_ID')
    Variables.Data = {
      03000000040000000C0000003A543035355F49445F4245470400000000000000
      00000000080000003A543032375F49440400000000000000000000000C000000
      3A543035355F49445F454E44040000000000000000000000080000003A543033
      345F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000F000000543032385F49445F49535F4D41494E0100000000
      000E000000543032385F53484F545F4E414D4501000000000007000000543032
      385F49440100000000000E000000543032385F49445F49535F44495601000000
      000007000000543032375F494401000000000008000000543032385F494E4E01
      00000000000D000000543030315F4F505F434F554E5401000000000011000000
      543030315F4F505F53554D5F43524F535301000000000012000000543030315F
      4F505F50524F435F43524F535301000000000013000000543030315F4F505F53
      554D5F43524F53535F5901000000000013000000543030315F4F505F53554D5F
      43524F53535F4E0100000000000E000000444952454354494F4E5F4445534301
      00000000000E000000543030365F444952454354494F4E010000000000}
    Top = 112
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
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_OP_SUM_CROSS_Y: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_Y'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_CROSS_N: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_N'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListDIRECTION_DESC: TStringField
      FieldName = 'DIRECTION_DESC'
      Size = 9
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NResident.p_add_issuer_link(:T028_ID, :PARENT_ID);'
      'END;')
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 488
    Top = 50
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
  object oqChooseMain: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NResident.p_add_issuer_link(:T028_ID, :PARENT_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      0A0000003A504152454E545F4944040000000000000000000000}
    Left = 296
    Top = 56
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
    Left = 136
    Top = 224
  end
end
