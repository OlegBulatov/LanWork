inherited frm97_711IssuerList: Tfrm97_711IssuerList
  Left = 19
  Top = 106
  Width = 985
  Height = 632
  Caption = 'Эмитенты формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 883
    Height = 546
    Visible = True
  end
  inherited paRight: TPanel
    Left = 886
    Width = 91
    Height = 546
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    inline fm27_SecType: Tfm41_SecTypeForLinks
      Top = 51
      Width = 91
      Height = 495
      Align = alClient
      TabOrder = 1
      inherited gr01: TxxxDBGrid
        Left = 0
        Top = 0
        Width = 91
        Height = 495
        Align = alClient
      end
      inherited ods01: TOracleDataSet
        Left = 8
        Top = 16
      end
      inherited ds01: TDataSource
        Left = 40
        Top = 16
      end
      inherited PopupMenu: TPopupMenu
        Left = 40
        Top = 45
      end
    end
  end
  inherited paMain: TPanel
    Width = 883
    Height = 546
    inherited ToolBar2: TToolBar
      Top = 89
      Width = 883
      ButtonWidth = 133
      inherited ToolButton18: TToolButton
        Left = 101
        Hint = 'Перейти к 3.2'
        Caption = 'Перейти к 3.2'
      end
      inherited ToolButton19: TToolButton
        Left = 202
      end
      inherited ToolButton4: TToolButton
        Left = 276
      end
      inherited ToolBar1: TToolBar
        Left = 284
      end
      inherited sp02: TToolButton
        Left = 353
      end
      inherited tbSimFilter: TToolButton
        Left = 361
      end
      inherited tbSep01: TToolButton
        Left = 445
      end
      inherited tlbSearch: TToolBar
        Left = 453
      end
      inherited ToolButton13: TToolButton
        Left = 513
      end
      inherited tbExcel: TToolButton
        Left = 521
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 632
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbLinkEmitent: TToolButton
        Left = 640
        Top = 0
        Action = actLinkEmitent
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 154
      Width = 883
      Height = 392
      OnDblClick = nil
      AdvSettings.Indexes = <
        item
          FieldName = 'T052_SUM'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 7
              Caption = 'Оборот ($)'
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
          Title.Caption = 'Эмитент распознан'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания'
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
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM_Y'
          PickList.Strings = ()
          Title.Caption = 'Распозн. эмиссии'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM_N'
          PickList.Strings = ()
          Title.Caption = 'Нераспозн. эмиссии'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'ID типа ц.б.'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 112
      Width = 883
      inherited Panel1: TPanel
        Left = 856
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 133
      Width = 883
      inherited Panel1: TPanel
        Left = 856
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 883
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object SpeedButton1: TSpeedButton
        Left = 435
        Top = 2
        Width = 75
        Height = 22
        Action = actApplayFilter
        Flat = True
      end
      inline Tfm01_Period1: Tfm01_Period
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
          Width = 295
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
          Left = 56
          Top = 65530
        end
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = 'Отчетный период'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chbRazdel: TCheckBox
        Left = 5
        Top = 34
        Width = 123
        Height = 17
        Caption = 'Раздел'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbTypes: TCheckBox
        Left = 5
        Top = 62
        Width = 123
        Height = 17
        Caption = 'Тип счета'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      inline fm14_711Code1: Tfm14_711Code
        Left = 127
        Top = 57
        Width = 304
        TabOrder = 4
        inherited btnSelect: TSpeedButton
          Left = 62
        end
        inherited lcbSelect: TDBLookupComboBox
          Left = 4
          Width = 295
        end
      end
      inline fm04_LookUp1: Tfm04_LookUp
        Left = 127
        Top = 26
        Width = 304
        TabOrder = 5
        inherited Label1: TLabel
          Visible = False
        end
        inherited Lookup01: TxxxDBLookupCheckCombo
          Left = 4
          Width = 295
          LookupField = 'T054_ID'
          LookupDisplay = 'T054_NAME'
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select '
            'T054_ID'
            ', T054_NAME '
            'from T054_711_PART')
          QBEDefinition.QBEFieldDefs = {
            040000000200000007000000543035345F494401000000000009000000543035
            345F4E414D45010000000000}
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 579
    Width = 977
  end
  inherited pnlButtons: TPanel
    Top = 546
    Width = 977
    inherited OKBtn: TButton
      Left = 625
    end
    inherited CancelBtn: TButton
      Left = 705
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Caption = 'Перейти к 3.1'
      Hint = 'Перейти к 3.1'
      ImageIndex = 1
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
    end
    object actLinkEmitent: TAction
      Caption = 'Привязать эмитента'
      Hint = 'Привязать эмитента'
      ImageIndex = 13
      OnExecute = actLinkEmitentExecute
      OnUpdate = actLinkEmitentUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       T028_ID, '
      '       T027_ID,'
      '       T028_ID_IS_MAIN,'
      '       T036_INCLUDE,'
      '       T028_SHOT_NAME'
      '       , T028_INN'
      '       , T025_ID'
      '       , SUM(T064_COUNT) T064_COUNT'
      '       , SUM(T052_SUM) T052_SUM,  '
      '       SUM(T052_SUM_Y) T052_SUM_Y, '
      '       SUM(T052_SUM_N) T052_SUM_N'
      'FROM   V_405_OP_BY_ISSUERS_711'
      'WHERE'
      '((:FLAG_T055 = 0) OR (T055_ID = :T055_ID))'
      'AND ((:FLAG_T054 = 0) OR (T054_ID = :T054_ID))'
      'AND ((:FLAG_T053 = 0) OR (T053_ID = :T053_ID))'
      'GROUP BY T055_ID,'
      '         T028_ID, '
      '         T027_ID,'
      '         T028_ID_IS_MAIN,'
      '         T036_INCLUDE,'
      '         T028_SHOT_NAME'
      '         , T028_INN'
      '         , T025_ID ')
    Variables.Data = {
      0300000006000000080000003A543035355F4944040000000000000000000000
      080000003A543035345F4944040000000000000000000000080000003A543035
      335F49440400000000000000000000000A0000003A464C41475F543035350300
      000000000000000000000A0000003A464C41475F543035340300000000000000
      000000000A0000003A464C41475F54303533030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543035355F49440100000000000F000000543032
      385F49445F49535F4D41494E0100000000000E000000543032385F53484F545F
      4E414D4501000000000007000000543032385F49440100000000000700000054
      3032375F494401000000000008000000543032385F494E4E0100000000000A00
      0000543036345F434F554E5401000000000008000000543035325F53554D0100
      000000000A000000543035325F53554D5F590100000000000A00000054303532
      5F53554D5F4E0100000000000C000000543033365F494E434C55444501000000
      000007000000543032355F4944010000000000}
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
    object odsListT064_COUNT: TFloatField
      FieldName = 'T064_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT052_SUM: TFloatField
      FieldName = 'T052_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT052_SUM_Y: TFloatField
      FieldName = 'T052_SUM_Y'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT052_SUM_N: TFloatField
      FieldName = 'T052_SUM_N'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 3
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
  end
  object oqLinkEmitent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Left = 763
    Top = 24
  end
end
