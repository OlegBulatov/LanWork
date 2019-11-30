inherited frm92_IssuerList: Tfrm92_IssuerList
  Left = 171
  Top = 307
  Width = 756
  Height = 495
  Caption = 'Эмитенты формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 744
    Height = 412
  end
  inherited paRight: TPanel
    Left = 747
    Width = 1
    Height = 412
    Visible = False
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  inherited paMain: TPanel
    Width = 744
    Height = 412
    inherited ToolBar2: TToolBar
      Top = 93
      Width = 744
      ButtonWidth = 117
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 595
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 603
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 724
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbLinkEmitent: TToolButton
        Left = 732
        Top = 0
        Action = actLinkEmitent
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 818
        Top = 0
        Action = actUnlinkEmitent
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 897
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 905
        Top = 0
        Action = actGoto405
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 158
      Width = 744
      Height = 254
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_CROSS'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Эмитент'
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = 'Связан с эмитентом'
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = 'Оборот ($)'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID_IS_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Эмитент распознан'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN_MAIN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_SHORT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Группа эмитента'
          Width = 54
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
          Title.Caption = 'Всего'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS_Y'
          PickList.Strings = ()
          Title.Caption = 'Распозн. эмиссии'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS_N'
          PickList.Strings = ()
          Title.Caption = 'Нераспозн. эмиссии'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_PACK'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_CH'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_ID'
          PickList.Strings = ()
          Title.Caption = 'ID группы эмитентов'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 116
      Width = 744
      inherited Panel1: TPanel
        Left = 717
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 137
      Width = 744
      inherited Panel1: TPanel
        Left = 717
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 744
      Height = 93
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 320
        Top = 7
        Width = 12
        Height = 13
        Caption = 'по'
      end
      inline fm01_Period1: Tfm01_Period
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
          Left = 56
          Top = 65530
        end
      end
      inline fm01_Period2: Tfm01_Period
        Left = 336
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
          Width = 183
          KeyField = 'T055_ID'
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 56
          Top = 65530
        end
      end
      object chbHidePack: TCheckBox
        Left = 5
        Top = 75
        Width = 115
        Height = 17
        Caption = 'Скрывать пакеты'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object Button1: TButton
        Left = 532
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        TabOrder = 3
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = 'Отчетный период c'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object chbType: TCheckBox
        Left = 5
        Top = 29
        Width = 121
        Height = 17
        Caption = 'Тип ц.б.'
        TabOrder = 5
      end
      object lcbType: TxxxDBLookupCheckCombo
        Left = 131
        Top = 26
        Width = 391
        Height = 21
        Hint = 'Не выбрано'
        DropDownCount = 16
        DisplayEmpty = 'Не выбрано'
        DisplaySelectAll = 'Все'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked, lsSizeable]
        LookupField = 'T027_ID'
        LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
        LookupSource = dsType
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Advanced.ShowSelectionHint = True
        Advanced.Autorefresh = False
      end
      object cbIssuerGroup: TCheckBox
        Left = 5
        Top = 51
        Width = 119
        Height = 17
        Caption = 'Группа эмитента'
        TabOrder = 7
      end
      object lcbIssuerGroup: TxxxDBLookupCheckCombo
        Left = 131
        Top = 50
        Width = 391
        Height = 21
        DropDownCount = 6
        LookupField = 'T042_ID'
        LookupDisplay = 'T042_SHORT_NAME'
        LookupSource = dsIssuerGroup
        TabOrder = 8
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 445
    Width = 748
  end
  inherited pnlButtons: TPanel
    Top = 412
    Width = 748
    inherited OKBtn: TButton
      Left = 396
    end
    inherited CancelBtn: TButton
      Left = 476
    end
  end
  inherited dsList: TDataSource
    Top = 202
  end
  inherited ActionList: TActionList
    Left = 176
    Top = 323
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Hint = 'Изменить'
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
    end
    object actLinkEmitent: TAction
      Caption = 'Привязать'
      Hint = 'Привязать эмитента к главному'
      ImageIndex = 28
      OnExecute = actLinkEmitentExecute
      OnUpdate = actLinkEmitentUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главным'
      Hint = 'Сделать эмитента главным'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actUnlinkEmitent: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать эмитента от главного'
      ImageIndex = 29
      OnExecute = actUnlinkEmitentExecute
      OnUpdate = actUnlinkEmitentUpdate
    end
    object actGoto405: TAction
      Caption = 'Перейти к 405'
      Hint = 'Перейти к 405'
      ImageIndex = 13
      OnExecute = actGoto405Execute
      OnUpdate = actGoto405Update
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T055_ID,'
      '  T002_NUMB_IN_YEA_DESC,'
      '  T027_SEC_TYPE, '
      '  T028_ID,'
      '  T028_ID_IS_MAIN,'
      '  T036_INCLUDE,'
      '  IS_PACK,'
      '  T027_ID,'
      '  TO_CHAR(T027_ID) as T027_ID_CH, -- для фильтра'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T042_ID,'
      '  T042_SHORT_NAME,'
      '  T001_OP_COUNT,'
      '  T001_OP_SUM_CROSS,'
      '  T001_OP_SUM_CROSS_Y,'
      '  T001_OP_SUM_CROSS_N'
      'FROM   V_405_OP_BY_ISSUERS'
      '--WHERE T055_ID BETWEEN :T055_ID_S AND :T055_ID_E'
      ' '
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001400000007000000543035355F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000D000000543030315F4F505F434F55
      4E5401000000000011000000543030315F4F505F53554D5F43524F5353010000
      00000007000000543032385F494401000000000007000000543032375F494401
      000000000013000000543030315F4F505F53554D5F43524F53535F5901000000
      000013000000543030315F4F505F53554D5F43524F53535F4E01000000000008
      000000543032385F494E4E0100000000000C000000543033365F494E434C5544
      4501000000000015000000543030325F4E554D425F494E5F5945415F44455343
      0100000000000D000000543032375F5345435F54595045010000000000070000
      0049535F5041434B0100000000000A000000543032375F49445F434801000000
      00000F000000543032385F49445F49535F4D41494E0100000000000C00000054
      3032385F49445F4D41494E01000000000013000000543032385F53484F545F4E
      414D455F4D41494E0100000000000D000000543032385F494E4E5F4D41494E01
      00000000000F000000543034325F53484F52545F4E414D450100000000000700
      0000543034325F4944010000000000}
    Top = 202
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_ID_IS_MAIN: TStringField
      FieldName = 'T028_ID_IS_MAIN'
      Size = 3
    end
    object odsListT036_INCLUDE: TStringField
      DisplayWidth = 1
      FieldName = 'T036_INCLUDE'
      Size = 3
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
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
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListIS_PACK: TFloatField
      FieldName = 'IS_PACK'
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT028_INN_MAIN: TStringField
      FieldName = 'T028_INN_MAIN'
      Size = 255
    end
    object odsListT027_ID_CH: TStringField
      FieldName = 'T027_ID_CH'
      Size = 40
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Size = 255
    end
    object odsListT042_ID: TFloatField
      FieldName = 'T042_ID'
    end
  end
  inherited pkList: TOraclePackage
    Top = 234
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:T028_ID, '#39'N'#39');'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Top = 271
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Issuers.p_issuer_update_inn(:T028_ID, :T028_INN);'
      'end;')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      090000003A543032385F494E4E050000000000000000000000}
    Top = 271
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T028_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Top = 271
  end
  inherited oqDupl: TOracleQuery
    Top = 271
  end
  object oqLinkEmitent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Left = 755
    Top = 320
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS,'
      '       T027_SEC_TYPE || '#39' - '#39' || T027_COMMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      00000D000000543032375F434F4D4D454E5453010000000000}
    Session = dmMain.OracleSession
    Left = 265
    Top = 25
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
    object odsTypeT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsTypeT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 305
    Top = 25
  end
  object odsIssuerGroup: TOracleDataSet
    SQL.Strings = (
      'SELECT T042_ID,'
      '       T042_SHORT_NAME'
      'FROM   V_405_IIPS_ISSUER_GROUP'
      'WHERE  T042_ID < 100'
      'UNION ALL'
      'SELECT -1,'
      '       '#39'Не связанные'#39
      'FROM DUAL')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543034325F49440100000000000F000000543034
      325F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 48
  end
  object dsIssuerGroup: TDataSource
    DataSet = odsIssuerGroup
    Left = 408
    Top = 48
  end
end
