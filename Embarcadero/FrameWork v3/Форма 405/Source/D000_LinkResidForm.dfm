inherited D000_LinkResid: TD000_LinkResid
  Left = 56
  Top = 412
  Width = 1108
  Height = 516
  Caption = 'D000_LinkResid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1097
    Top = 77
    Height = 353
  end
  inherited paRight: TPanel
    Left = 1100
    Top = 77
    Height = 353
  end
  inherited paMain: TPanel
    Top = 77
    Width = 1097
    Height = 353
    inherited ToolBar2: TToolBar
      Width = 1097
      ButtonWidth = 117
      object ToolButton5: TToolButton
        Left = 599
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbMakeMain: TToolButton
        Left = 607
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object tbLink: TToolButton
        Left = 728
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object tbUnlink: TToolButton
        Left = 814
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 893
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tbJump: TToolButton
        Left = 901
        Top = 0
        Action = actJump
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1097
      Height = 288
      AdvSettings.Indexes = <
        item
          FieldName = 'OP_SUM_CROSS'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 4
              Caption = 'Резидент'
            end
            item
              FirstCol = 5
              LastCol = 6
              Caption = 'Связан с резидентом'
            end
            item
              FirstCol = 7
              LastCol = 8
              Caption = 'Оборот'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'К-во ц.б.'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Всего $'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1097
      inherited Panel1: TPanel
        Left = 1070
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1097
      inherited Panel1: TPanel
        Left = 1070
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 463
    Width = 1100
  end
  inherited pnlButtons: TPanel
    Top = 430
    Width = 1100
    inherited OKBtn: TButton
      Left = 942
    end
    inherited CancelBtn: TButton
      Left = 1022
    end
  end
  object paTop: TPanel [5]
    Left = 0
    Top = 0
    Width = 1100
    Height = 77
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
        QBEDefinition.QBEFieldDefs = {
          040000000300000010000000543030325F4E554D425F494E5F59454101000000
          000015000000543030325F4E554D425F494E5F5945415F544558540100000000
          0007000000543035355F4944010000000000}
        Left = 56
        Top = 65530
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
      TabOrder = 1
    end
    inline Tfm01_Period2: Tfm01_Period
      Left = 336
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
    object Button1: TButton
      Left = 527
      Top = 2
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 3
    end
    object chbType: TCheckBox
      Left = 5
      Top = 29
      Width = 121
      Height = 17
      Caption = 'Тип ц.б.'
      TabOrder = 4
    end
    object chbHideLinked: TCheckBox
      Left = 5
      Top = 53
      Width = 121
      Height = 17
      Caption = 'Скрыть связанные'
      TabOrder = 5
    end
    object lcbType: TxxxDBLookupCheckCombo
      Left = 131
      Top = 26
      Width = 390
      Height = 21
      Hint = 'Не выбрано'
      DropDownCount = 16
      DisplayEmpty = 'Не выбрано'
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
  end
  inherited dsList: TDataSource
    Left = 132
    Top = 191
  end
  inherited ActionList: TActionList
    Left = 164
    Top = 191
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
    object actJump: TAction
      Caption = 'Переход к 405'
      Hint = 'Перейти к 405 форме'
      ImageIndex = 1
      OnExecute = actJumpExecute
      OnUpdate = actJumpUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главным'
      Hint = 'Сделать резидента главным'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать резидента к главному'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать резидента'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 100
    Top = 219
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       T002_NUMB_IN_YEA_DESC,'
      '       TO_CHAR(T027_MAIN_ID) T027_ID,'
      '       T027_SEC_TYPE,'
      '       T012_ID,'
      '       T012_INCLUDE,'
      '       T012_NAME,'
      '       T012_CODE,'
      '       T012_PARENT_ID,'
      '       T012_PARENT_NAME,'
      '       T012_PARENT_CODE,'
      '       OP_COUNT,'
      '       OP_SUM_CROSS'
      'from   V_405_LINK_REZID '
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543035355F494401000000000007000000543032
      375F49440100000000000D000000543032375F5345435F545950450100000000
      0007000000543031325F494401000000000009000000543031325F4E414D4501
      000000000009000000543031325F434F44450100000000000E00000054303132
      5F504152454E545F494401000000000010000000543031325F504152454E545F
      4E414D4501000000000010000000543031325F504152454E545F434F44450100
      0000000015000000543030325F4E554D425F494E5F5945415F44455343010000
      000000080000004F505F434F554E540100000000000C0000004F505F53554D5F
      43524F53530100000000000C000000543031325F494E434C5544450100000000
      00}
    Left = 100
    Top = 191
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT027_ID: TStringField
      FieldName = 'T027_ID'
      Size = 40
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
    end
    object odsListT012_INCLUDE: TStringField
      FieldName = 'T012_INCLUDE'
      Size = 5
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Required = True
      Size = 255
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT012_PARENT_NAME: TStringField
      FieldName = 'T012_PARENT_NAME'
      Size = 255
    end
    object odsListT012_PARENT_CODE: TStringField
      FieldName = 'T012_PARENT_CODE'
      Size = 255
    end
    object odsListOP_COUNT: TFloatField
      DisplayWidth = 28
      FieldName = 'OP_COUNT'
      DisplayFormat = '### ### ### ### ### ##0.00'
    end
    object odsListOP_SUM_CROSS: TFloatField
      DisplayWidth = 20
      FieldName = 'OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  inherited pkList: TOraclePackage
    Left = 132
    Top = 219
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:T012_ID, '#39'N'#39');'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031325F4944040000000000000000000000}
    Left = 132
    Top = 256
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:T012_ID, :T012_PARENT_ID);'
      'END;')
    Variables.Data = {
      0300000002000000080000003A543031325F4944040000000000000000000000
      0F0000003A543031325F504152454E545F4944040000000000000000000000}
    Left = 172
    Top = 256
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T012_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031325F4944040000000000000000000000}
    Left = 208
    Top = 256
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T012_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031325F4944040000000000000000000000}
    Left = 248
    Top = 256
  end
  inherited pmFilter: TPopupMenu
    Left = 328
    Top = 192
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
    Left = 289
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
    Left = 321
    Top = 25
  end
end
