inherited frm63_711List: Tfrm63_711List
  Left = 79
  Top = 144
  Width = 897
  Height = 564
  Caption = 'frm63_711List'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 308
    Width = 889
  end
  inherited spRight: TSplitter
    Left = 886
    Top = 52
    Height = 256
  end
  inherited paRight: TPanel
    Left = 889
    Top = 52
    Height = 256
  end
  inherited paMain: TPanel
    Top = 52
    Width = 886
    Height = 256
    inherited ToolBar2: TToolBar
      Width = 886
      ButtonWidth = 94
      inherited ToolButton5: TToolButton
        Left = 516
      end
      inherited ToolButton7: TToolButton
        Left = 524
      end
      inherited ToolButton9: TToolButton
        Left = 611
      end
      inherited ToolButton10: TToolButton
        Left = 619
      end
      object ToolButton6: TToolButton
        Left = 713
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 721
        Top = 0
        Hint = 'Пересоздать буфер данных'
        Caption = 'Пересоздать'
        ImageIndex = 1
        OnClick = ToolButton8Click
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 886
      Height = 191
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 4
              Caption = 'Главная эмиссия'
            end
            item
              FirstCol = 5
              LastCol = 8
              Caption = 'Исходная эмиссия'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Распознана'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Код ц.б.'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Номер ц.б.'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Код ц.б.'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Номер ц.б.'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISO_LAT3'
          PickList.Strings = ()
          Title.Caption = 'Валюта номинала'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_N_ST_ALL'
          PickList.Strings = ()
          Title.Caption = 'Номинал'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_1'
          PickList.Strings = ()
          Title.Caption = 'KL_S_UFR'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_2'
          PickList.Strings = ()
          Title.Caption = 'KL_S_KO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_3'
          PickList.Strings = ()
          Title.Caption = 'KL_S_UFN'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_4'
          PickList.Strings = ()
          Title.Caption = 'KL_L_R'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_5'
          PickList.Strings = ()
          Title.Caption = 'KL_L_KO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_6'
          PickList.Strings = ()
          Title.Caption = 'KL_L_N'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_7'
          PickList.Strings = ()
          Title.Caption = 'KL_ZG_R'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_8'
          PickList.Strings = ()
          Title.Caption = 'KL_ZG_N'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_9'
          PickList.Strings = ()
          Title.Caption = 'KL_DU'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_10'
          PickList.Strings = ()
          Title.Caption = 'KL_ES'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_11'
          PickList.Strings = ()
          Title.Caption = 'KL_EM'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_12'
          PickList.Strings = ()
          Title.Caption = 'KL_X'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_13'
          PickList.Strings = ()
          Title.Caption = 'KO_S'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_14'
          PickList.Strings = ()
          Title.Caption = 'KO_ZG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_15'
          PickList.Strings = ()
          Title.Caption = 'KO_DU'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_16'
          PickList.Strings = ()
          Title.Caption = 'KO_ES'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_17'
          PickList.Strings = ()
          Title.Caption = 'KO_EM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_18'
          PickList.Strings = ()
          Title.Caption = 'KO_IN'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T051_KP_ID'
          PickList.Strings = ()
          Title.Caption = 'ТУ'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T051_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T051_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер '
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Код основной эмиссии'
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
          FieldName = 'T028_ID_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Код основного эмитента '
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код отчетного периода'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T054_ID'
          PickList.Strings = ()
          Title.Caption = 'Код раздела'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Тип основной ц.б.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код главного эмитента'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_DPB_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий ДПБ'
          Width = 255
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 886
      inherited Panel1: TPanel
        Left = 859
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 886
      inherited Panel1: TPanel
        Left = 859
      end
    end
  end
  inherited Panel2: TPanel
    Width = 889
    Height = 52
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 889
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 320
        Top = 7
        Width = 12
        Height = 13
        Caption = 'по'
      end
      inline Tfm01_Period1: Tfm01_Period
        Left = 127
        Top = 2
        Width = 185
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
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
          QBEDefinition.QBEFieldDefs = {
            040000000300000010000000543030325F4E554D425F494E5F59454101000000
            000015000000543030325F4E554D425F494E5F5945415F544558540100000000
            0007000000543035355F4944010000000000}
          Left = 56
          Top = 65530
        end
      end
      inline Frame11: Tfm04_Prm711KO
        Left = 127
        Top = 26
        Width = 394
        Height = 22
        TabOrder = 1
        inherited Label1: TLabel
          Width = 0
          Height = 22
          Caption = '   Кред. организация'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 390
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT  DISTINCT REGN, NAME--, T002_NUMB_IN_YEA'
            'FROM     V_711_BANC_BY_NUMB'
            '--WHERE    T002_NUMB_IN_YEA = :T002_NUMB_IN_YEA '
            'ORDER BY REGN')
          Variables.Data = {0300000000000000}
          Left = 72
        end
        inherited dsPeriod: TDataSource
          Left = 104
        end
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = 'Отчетный период c'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbKO: TCheckBox
        Left = 5
        Top = 29
        Width = 121
        Height = 17
        Caption = 'Кред. организация'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      inline Tfm01_Period2: Tfm01_Period
        Left = 336
        Top = 2
        Width = 187
        TabOrder = 4
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
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
          QBEDefinition.QBEFieldDefs = {
            040000000300000010000000543030325F4E554D425F494E5F59454101000000
            000015000000543030325F4E554D425F494E5F5945415F544558540100000000
            0007000000543035355F4944010000000000}
          Left = 56
          Top = 65530
        end
      end
      object Button1: TButton
        Left = 527
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        TabOrder = 5
      end
    end
  end
  inherited Panel1: TPanel
    Top = 363
    Width = 889
    Visible = False
    inherited pc01: TPageControl
      Width = 887
      inherited ts01: TTabSheet
        inherited ToolBar3: TToolBar
          Width = 879
        end
        inherited ListView: TListView
          Width = 879
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 311
    Width = 889
  end
  inherited pnlButtons: TPanel
    Top = 330
    Width = 889
    TabOrder = 2
    inherited OKBtn: TButton
      Left = 731
    end
    inherited CancelBtn: TButton
      Left = 811
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Visible = True
    end
    inherited actEditAttributes: TAction
      Visible = True
    end
    inherited actExcel: TAction
      Caption = ''
    end
    inherited actShowDetail: TAction
      Checked = False
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      ' T052_ROWID'
      ' , T052_ID'
      ' , T051_ID'
      ' , T051_BANK_CODE'
      ' , T051_KP_ID'
      ' , T051_LOAD_DATE'
      ' , T055_ID'
      ' , T051_NUMB_IN_YEA'
      ' , T051_NUMB_IN_YEA_DESC'
      ' , T051_REPORT_DATE'
      ' , IS_MAIN'
      ' , T030_ID'
      ' , T026_SEC_REGN'
      ', T027_ID'
      ' , T027_SEC_TYPE'
      ' , T028_ID'
      ' , T028_CODE'
      ' , T028_SHOT_NAME'
      ' , T025_SHOT_NAME'
      ' , T030_ID_MAIN '
      ' , T026_SEC_REGN_MAIN'
      ', T027_ID_MAIN'
      ' , T027_SEC_TYPE_MAIN'
      ' , T028_ID_MAIN'
      ' , T028_CODE_MAIN'
      ' , T028_SHOT_NAME_MAIN'
      ' , T025_SHOT_NAME_MAIN'
      ' , T052_REGNUM'
      ' , T052_SENNAME'
      ' , T052_KOD_NUM'
      ' , T052_CURR'
      ' , ISO_LAT3'
      ' , T052_N_ST_ALL'
      ' , T052_N_ST1'
      ' , T052_N_ST2'
      ' , T052_TEXT'
      ' , T054_ID'
      ' , T064_ID_1'
      ' , T064_COUNT_1'
      ' , T064_ID_2'
      ' , T064_COUNT_2'
      ' , T064_ID_3'
      ' , T064_COUNT_3'
      ' , T064_ID_4'
      ' , T064_COUNT_4'
      ' , T064_ID_5'
      ' , T064_COUNT_5'
      ' , T064_ID_6'
      ' , T064_COUNT_6'
      ' , T064_ID_7'
      ' , T064_COUNT_7'
      ' , T064_ID_8'
      ' , T064_COUNT_8'
      ' , T064_ID_9'
      ' , T064_COUNT_9'
      ' , T064_ID_10'
      ' , T064_COUNT_10'
      ' , T064_ID_11'
      ' , T064_COUNT_11'
      ' , T064_ID_12'
      ' , T064_COUNT_12'
      ' , T064_ID_13'
      ' , T064_COUNT_13'
      ' , T064_ID_14'
      ' , T064_COUNT_14'
      ' , T064_ID_15'
      ' , T064_COUNT_15'
      ' , T064_ID_16'
      ' , T064_COUNT_16'
      ' , T064_ID_17'
      ' , T064_COUNT_17'
      ' , T064_ID_18'
      ' , T064_COUNT_18'
      ' , T028_PARENT_ID'
      ' , T052_DPB_COMMENT'
      'from V_405_DBF_711_HEADER'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000004A00000007000000543035325F494401000000000007000000543035
      315F49440100000000000E000000543035315F42414E4B5F434F444501000000
      00000A000000543035315F4B505F49440100000000000E000000543035315F4C
      4F41445F4441544501000000000010000000543035315F4E554D425F494E5F59
      454101000000000015000000543035315F4E554D425F494E5F5945415F444553
      4301000000000010000000543035315F5245504F52545F444154450100000000
      0007000000543033305F49440100000000000D000000543032365F5345435F52
      45474E0100000000000D000000543032375F5345435F54595045010000000000
      09000000543032385F434F44450100000000000E000000543032385F53484F54
      5F4E414D450100000000000E000000543032355F53484F545F4E414D45010000
      0000000B000000543035325F5245474E554D0100000000000C00000054303532
      5F53454E4E414D450100000000000C000000543035325F4B4F445F4E554D0100
      0000000009000000543035325F435552520100000000000800000049534F5F4C
      4154330100000000000A000000543035325F4E5F5354310100000000000A0000
      00543035325F4E5F53543201000000000009000000543035325F544558540100
      0000000007000000543035345F494401000000000009000000543036345F4944
      5F310100000000000C000000543036345F434F554E545F310100000000000900
      0000543036345F49445F320100000000000C000000543036345F434F554E545F
      3201000000000009000000543036345F49445F330100000000000C0000005430
      36345F434F554E545F3301000000000009000000543036345F49445F34010000
      0000000C000000543036345F434F554E545F3401000000000009000000543036
      345F49445F350100000000000C000000543036345F434F554E545F3501000000
      000009000000543036345F49445F360100000000000C000000543036345F434F
      554E545F3601000000000009000000543036345F49445F370100000000000C00
      0000543036345F434F554E545F3701000000000009000000543036345F49445F
      380100000000000C000000543036345F434F554E545F38010000000000090000
      00543036345F49445F390100000000000C000000543036345F434F554E545F39
      0100000000000A000000543036345F49445F31300100000000000D0000005430
      36345F434F554E545F31300100000000000A000000543036345F49445F313101
      00000000000D000000543036345F434F554E545F31310100000000000A000000
      543036345F49445F31320100000000000D000000543036345F434F554E545F31
      320100000000000A000000543036345F49445F31330100000000000D00000054
      3036345F434F554E545F31330100000000000A000000543036345F49445F3134
      0100000000000D000000543036345F434F554E545F31340100000000000A0000
      00543036345F49445F31350100000000000D000000543036345F434F554E545F
      31350100000000000A000000543036345F49445F31360100000000000D000000
      543036345F434F554E545F31360100000000000A000000543036345F49445F31
      370100000000000D000000543036345F434F554E545F31370100000000000A00
      0000543036345F49445F31380100000000000D000000543036345F434F554E54
      5F313801000000000007000000543035355F49440100000000000D0000005430
      35325F4E5F53545F414C4C01000000000012000000543032365F5345435F5245
      474E5F4D41494E01000000000012000000543032375F5345435F545950455F4D
      41494E0100000000000E000000543032385F434F44455F4D41494E0100000000
      0013000000543032385F53484F545F4E414D455F4D41494E0100000000001300
      0000543032355F53484F545F4E414D455F4D41494E0100000000000700000049
      535F4D41494E01000000000007000000543032385F49440100000000000C0000
      00543033305F49445F4D41494E0100000000000C000000543032385F49445F4D
      41494E01000000000007000000543032375F49440100000000000C0000005430
      32375F49445F4D41494E0100000000000E000000543032385F504152454E545F
      494401000000000010000000543035325F4450425F434F4D4D454E5401000000
      0000}
    object odsListT052_ID: TFloatField
      FieldName = 'T052_ID'
      Required = True
    end
    object odsListT051_ID: TFloatField
      FieldName = 'T051_ID'
      Required = True
    end
    object odsListT051_BANK_CODE: TStringField
      FieldName = 'T051_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT051_KP_ID: TIntegerField
      FieldName = 'T051_KP_ID'
      Required = True
    end
    object odsListT051_LOAD_DATE: TDateTimeField
      FieldName = 'T051_LOAD_DATE'
      Required = True
    end
    object odsListT051_NUMB_IN_YEA: TStringField
      FieldName = 'T051_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT051_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T051_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT051_REPORT_DATE: TDateTimeField
      FieldName = 'T051_REPORT_DATE'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT052_REGNUM: TStringField
      FieldName = 'T052_REGNUM'
      Required = True
      Size = 14
    end
    object odsListT052_SENNAME: TIntegerField
      FieldName = 'T052_SENNAME'
      Required = True
    end
    object odsListT052_KOD_NUM: TIntegerField
      FieldName = 'T052_KOD_NUM'
      Required = True
    end
    object odsListT052_CURR: TStringField
      FieldName = 'T052_CURR'
      Required = True
      Size = 3
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListT052_N_ST_ALL: TFloatField
      FieldName = 'T052_N_ST_ALL'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT052_N_ST1: TFloatField
      FieldName = 'T052_N_ST1'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT052_N_ST2: TFloatField
      FieldName = 'T052_N_ST2'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT052_TEXT: TStringField
      FieldName = 'T052_TEXT'
      Size = 4000
    end
    object odsListT054_ID: TFloatField
      FieldName = 'T054_ID'
      Required = True
    end
    object odsListT064_ID_1: TFloatField
      FieldName = 'T064_ID_1'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT064_COUNT_1: TFloatField
      FieldName = 'T064_COUNT_1'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_2: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_2'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_2: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_2'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_3: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_3'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_3: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_3'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_4: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_4'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_4: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_4'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_5: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_5'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_5: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_5'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_11: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_11'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_6: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_6'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_6: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_6'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_7: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_7'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_7: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_7'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_8: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_8'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_8: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_8'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_9: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_9'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_9: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_9'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_10: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_10'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_10: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_10'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_11: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_11'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_12: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_12'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_12: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_12'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_13: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_13'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_13: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_13'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_14: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_14'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_14: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_14'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_15: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_15'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_15: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_15'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_16: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_16'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_16: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_16'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_17: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_17'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_17: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_17'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_18: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_18'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_18: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_18'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Required = True
      Size = 255
    end
    object odsListT028_CODE_MAIN: TStringField
      FieldName = 'T028_CODE_MAIN'
      Size = 255
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT025_SHOT_NAME_MAIN: TStringField
      FieldName = 'T025_SHOT_NAME_MAIN'
      Required = True
      Size = 255
    end
    object odsListIS_MAIN: TStringField
      FieldName = 'IS_MAIN'
      Size = 3
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
      Required = True
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
      Required = True
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT052_DPB_COMMENT: TStringField
      FieldName = 'T052_DPB_COMMENT'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      '  v_rec Pk_Form_405.t_T064_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T053_ID := :T053_ID;'
      '  v_rec.T064_COUNT := :T064_COUNT;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_head_rec.T051_KP_ID := :T051_KP_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_sum_rec.T052_REGNUM := :T052_REGNUM;'
      '  v_sum_rec.T052_SENNAME := :T052_SENNAME;'
      '  v_sum_rec.T052_KOD_NUM := :T052_KOD_NUM;'
      '  v_sum_rec.T052_CURR := :T052_CURR;'
      '  v_sum_rec.T052_N_ST1 := :T052_N_ST1;'
      '  v_sum_rec.T052_N_ST2 := :T052_N_ST2;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T052_DPB_COMMENT := :T052_DPB_COMMENT;'
      ''
      '--  Pk_Form_405.p_dbf_711_add(v_head_rec, v_sum_rec, v_rec);'
      
        '  Pk_Form_405.p_dbf_711_31_add(v_head_rec, v_sum_rec, :KL_S_UFR,' +
        ' :KL_S_KO, :KL_S_UFN, :KL_L_R,'
      
        '  '#9':KL_L_KO, :KL_L_N, :KL_ZG_R, :KL_ZG_N, :KL_DU, :KL_ES, :KL_EM' +
        ', :KL_X);'
      '  :T064_ID := v_rec.T064_ID;'
      '  :T052_ID := v_rec.T052_ID;'
      '  :T053_ID := v_rec.T053_ID;'
      '  :T064_COUNT := v_rec.T064_COUNT;'
      '  :T051_ID := v_head_rec.T051_ID;'
      '  :T051_NUMB_IN_YEA := v_head_rec.T051_NUMB_IN_YEA;'
      '  :T051_BANK_CODE := v_head_rec.T051_BANK_CODE;'
      '  :T051_KP_ID := v_head_rec.T051_KP_ID;'
      '  :T030_ID := v_sum_rec.T030_ID;'
      '  :T052_REGNUM := v_sum_rec.T052_REGNUM;'
      '  :T052_SENNAME := v_sum_rec.T052_SENNAME;'
      '  :T052_KOD_NUM := v_sum_rec.T052_KOD_NUM;'
      '  :T052_CURR := v_sum_rec.T052_CURR;'
      '  :T052_N_ST1 := v_sum_rec.T052_N_ST1;'
      '  :T052_N_ST2 := v_sum_rec.T052_N_ST2;'
      '  :T052_DPB_COMMENT := v_sum_rec.T052_DPB_COMMENT;'
      'END;'
      ''
      ' '
      ' ')
    Variables.Data = {
      030000001D000000080000003A543035335F4944040000000000000000000000
      0B0000003A543036345F434F554E54040000000000000000000000110000003A
      543035315F4E554D425F494E5F5945410500000000000000000000000F000000
      3A543035315F42414E4B5F434F44450500000000000000000000000B0000003A
      543035315F4B505F4944050000000000000000000000080000003A543033305F
      49440400000000000000000000000C0000003A543035325F5245474E554D0500
      000000000000000000000D0000003A543035325F53454E4E414D450500000000
      000000000000000D0000003A543035325F4B4F445F4E554D0500000000000000
      000000000A0000003A543035325F435552520500000000000000000000000B00
      00003A543035325F4E5F5354310400000000000000000000000B0000003A5430
      35325F4E5F535432040000000000000000000000080000003A543036345F4944
      040000000000000000000000080000003A543035325F49440400000000000000
      00000000080000003A543035315F494404000000000000000000000008000000
      3A543035345F4944040000000000000000000000090000003A4B4C5F535F5546
      52040000000000000000000000080000003A4B4C5F535F4B4F04000000000000
      0000000000090000003A4B4C5F535F55464E0400000000000000000000000700
      00003A4B4C5F4C5F52040000000000000000000000080000003A4B4C5F4C5F4B
      4F040000000000000000000000070000003A4B4C5F4C5F4E0400000000000000
      00000000080000003A4B4C5F5A475F5204000000000000000000000008000000
      3A4B4C5F5A475F4E040000000000000000000000060000003A4B4C5F44550400
      00000000000000000000060000003A4B4C5F4553040000000000000000000000
      060000003A4B4C5F454D040000000000000000000000050000003A4B4C5F5804
      0000000000000000000000110000003A543035325F4450425F434F4D4D454E54
      050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      '  v_rec Pk_Form_405.t_T064_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T064_ID := :T064_ID;'
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T053_ID := :T053_ID;'
      '  v_rec.T064_COUNT := :T064_COUNT;'
      '  v_head_rec.T051_ID := :T051_ID;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_head_rec.T051_KP_ID := :T051_KP_ID;'
      '  v_sum_rec.T052_ID := :T052_ID;'
      '  v_sum_rec.T051_ID := :T051_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T052_REGNUM := :T052_REGNUM;'
      '  v_sum_rec.T052_SENNAME := :T052_SENNAME;'
      '  v_sum_rec.T052_KOD_NUM := :T052_KOD_NUM;'
      '  v_sum_rec.T052_CURR := :T052_CURR;'
      '  v_sum_rec.T052_N_ST1 := :T052_N_ST1;'
      '  v_sum_rec.T052_N_ST2 := :T052_N_ST2;'
      '  v_sum_rec.T052_DPB_COMMENT := :T052_DPB_COMMENT;'
      ''
      '--  Pk_Form_405.p_dbf_711_update(v_head_rec, v_sum_rec, v_rec);'
      
        '  Pk_Form_405.p_dbf_711_31_update(v_head_rec, v_sum_rec, :KL_S_U' +
        'FR, :KL_S_KO, :KL_S_UFN, :KL_L_R,'
      
        '  '#9':KL_L_KO, :KL_L_N, :KL_ZG_R, :KL_ZG_N, :KL_DU, :KL_ES, :KL_EM' +
        ', :KL_X);'
      '  :T064_ID := v_rec.T064_ID;'
      '  :T052_ID := v_rec.T052_ID;'
      '  :T053_ID := v_rec.T053_ID;'
      '  :T064_COUNT := v_rec.T064_COUNT;'
      '  :T051_ID := v_head_rec.T051_ID;'
      '  :T051_NUMB_IN_YEA := v_head_rec.T051_NUMB_IN_YEA;'
      '  :T051_BANK_CODE := v_head_rec.T051_BANK_CODE;'
      '  :T051_KP_ID := v_head_rec.T051_KP_ID;'
      '  :T030_ID := v_sum_rec.T030_ID;'
      '  :T052_REGNUM := v_sum_rec.T052_REGNUM;'
      '  :T052_SENNAME := v_sum_rec.T052_SENNAME;'
      '  :T052_KOD_NUM := v_sum_rec.T052_KOD_NUM;'
      '  :T052_CURR := v_sum_rec.T052_CURR;'
      '  :T052_N_ST1 := v_sum_rec.T052_N_ST1;'
      '  :T052_N_ST2 := v_sum_rec.T052_N_ST2;'
      '  :T052_DPB_COMMENT := v_sum_rec.T052_DPB_COMMENT;'
      'END;'
      ''
      ''
      ' '
      ' ')
    Variables.Data = {
      030000001D000000110000003A543035325F4450425F434F4D4D454E54050000
      000000000000000000080000003A543035325F49440400000000000000000000
      00080000003A543035335F49440400000000000000000000000B0000003A5430
      36345F434F554E54040000000000000000000000080000003A543035315F4944
      040000000000000000000000110000003A543035315F4E554D425F494E5F5945
      410500000000000000000000000F0000003A543035315F42414E4B5F434F4445
      0500000000000000000000000B0000003A543035315F4B505F49440500000000
      00000000000000080000003A543033305F49440400000000000000000000000C
      0000003A543035325F5245474E554D0500000000000000000000000D0000003A
      543035325F53454E4E414D450500000000000000000000000D0000003A543035
      325F4B4F445F4E554D0500000000000000000000000A0000003A543035325F43
      5552520500000000000000000000000B0000003A543035325F4E5F5354310400
      000000000000000000000B0000003A543035325F4E5F53543204000000000000
      0000000000080000003A543035345F4944040000000000000000000000090000
      003A4B4C5F535F554652040000000000000000000000080000003A4B4C5F535F
      4B4F040000000000000000000000090000003A4B4C5F535F55464E0400000000
      00000000000000070000003A4B4C5F4C5F520400000000000000000000000800
      00003A4B4C5F4C5F4B4F040000000000000000000000070000003A4B4C5F4C5F
      4E040000000000000000000000080000003A4B4C5F5A475F5204000000000000
      0000000000080000003A4B4C5F5A475F4E040000000000000000000000060000
      003A4B4C5F4455040000000000000000000000060000003A4B4C5F4553040000
      000000000000000000060000003A4B4C5F454D04000000000000000000000005
      0000003A4B4C5F58040000000000000000000000080000003A543036345F4944
      040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T052_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T051_ID := :T051_ID;'
      '  Pk_Form_405.p_dbf_711_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035325F4944040000000000000000000000
      080000003A543035315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T064_rec;'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_head_rec.T051_ID := :T051_ID;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_sum_rec.T051_ID := :T051_ID;'
      '  v_sum_rec.T052_ID := :T052_ID;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_rec.T064_ID := :T064_ID;'
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T053_ID := :T053_ID;'
      
        '--  :o_result := Pk_Form_405.f_dbf_711_check(v_head_rec, v_sum_r' +
        'ec, v_rec);'
      
        '  :o_result := Pk_Form_405.f_dbf_711_check(v_head_rec, v_sum_rec' +
        ');'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000009000000080000003A543035325F4944040000000000000000000000
      080000003A543035335F4944040000000000000000000000090000003A4F5F52
      4553554C54040000000000000000000000080000003A543035315F4944040000
      000000000000000000110000003A543035315F4E554D425F494E5F5945410500
      000000000000000000000F0000003A543035315F42414E4B5F434F4445050000
      000000000000000000080000003A543033305F49440400000000000000000000
      00080000003A543036345F4944040000000000000000000000080000003A5430
      35345F4944040000000000000000000000}
  end
  inherited oqLoad: TOracleQuery
    Top = 224
  end
  object oqBuildBuffer: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_build_sn030_711_buffer;'
      'END;')
    Session = dmMain.OracleSession
    Cursor = crHourGlass
    Left = 296
    Top = 212
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_load_dbf.p_711_before_load;'
      'end;')
    Session = dmMain.OracleSession
    Left = 496
    Top = 240
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_load_dbf.p_711_after_load;'
      'end;')
    Session = dmMain.OracleSession
    Left = 568
    Top = 240
  end
  object oqRequestLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_result := pk_load_dbf.f_711_request_load(:T051_NUMB_IN_YEA,' +
        ' :T054_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00080000003A543035345F4944040000000000000000000000110000003A5430
      35315F4E554D425F494E5F594541050000000000000000000000}
    Left = 400
    Top = 240
  end
end
