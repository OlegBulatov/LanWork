inherited D001_LinkNresid: TD001_LinkNresid
  Left = 65
  Top = 214
  Width = 728
  Height = 524
  Caption = 'D001_LinkNresid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 717
    Top = 77
    Height = 361
  end
  inherited paRight: TPanel
    Left = 720
    Top = 77
    Height = 361
  end
  inherited paMain: TPanel
    Top = 77
    Width = 717
    Height = 361
    inherited ToolBar2: TToolBar
      Width = 717
      ButtonWidth = 117
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
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
        ImageIndex = 9
        Style = tbsSeparator
      end
      object tbJump: TToolButton
        Left = 901
        Top = 0
        Action = actJump
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 717
      Height = 296
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
              LastCol = 5
              Caption = 'Нерезидент'
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = 'Связан с нерезидентом'
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = 'Оборот'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Страна'
            end
            item
              FirstCol = 7
              LastCol = 8
              Caption = 'Страна'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 100
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
          FieldName = 'T013_PARENT_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 717
      inherited Panel1: TPanel
        Left = 690
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 717
      inherited Panel1: TPanel
        Left = 690
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 471
    Width = 720
  end
  inherited pnlButtons: TPanel
    Top = 438
    Width = 720
    inherited OKBtn: TButton
      Left = 562
    end
    inherited CancelBtn: TButton
      Left = 642
    end
  end
  object paTop: TPanel [5]
    Left = 0
    Top = 0
    Width = 720
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
    Top = 174
  end
  inherited ActionList: TActionList
    Top = 174
    object actMakeMain: TAction
      Caption = 'Сделать главным'
      Hint = 'Сделать нерезидента главным'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать нерезидента'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать нерезидента'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
    object actJump: TAction
      Caption = 'Переход к 405'
      Hint = 'Перейти к 405 форме'
      ImageIndex = 1
      OnExecute = actJumpExecute
      OnUpdate = actJumpUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 206
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       T055_LONG_NAME,'
      '       TO_CHAR(T027_MAIN_ID) T027_ID,'
      '       T027_SEC_TYPE,'
      '       T013_ID,'
      '       T013_INCLUDE,'
      '       T013_NAME,'
      '       T013_CODE,'
      '       T013_COUNTRY,'
      '       T013_PARENT_ID,'
      '       T013_PARENT_NAME,'
      '       T013_PARENT_CODE,'
      '       T013_PARENT_COUNTRY,'
      '       OP_COUNT,'
      '       OP_SUM_CROSS'
      'from   V_405_LINK_NREZID ')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D4501000000000007000000543032375F494401000000
      00000D000000543032375F5345435F5459504501000000000007000000543031
      335F49440100000000000C000000543031335F494E434C554445010000000000
      09000000543031335F4E414D4501000000000009000000543031335F434F4445
      0100000000000E000000543031335F504152454E545F49440100000000001000
      0000543031335F504152454E545F4E414D450100000000001000000054303133
      5F504152454E545F434F444501000000000013000000543031335F504152454E
      545F434F554E545259010000000000080000004F505F434F554E540100000000
      000C0000004F505F53554D5F43524F53530100000000000C000000543031335F
      434F554E545259010000000000}
    Top = 174
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
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
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
    end
    object odsListT013_INCLUDE: TStringField
      FieldName = 'T013_INCLUDE'
      Size = 5
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Required = True
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
      Required = True
    end
    object odsListT013_COUNTRY: TStringField
      FieldName = 'T013_COUNTRY'
      Size = 250
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT013_PARENT_NAME: TStringField
      FieldName = 'T013_PARENT_NAME'
      Size = 255
    end
    object odsListT013_PARENT_CODE: TFloatField
      FieldName = 'T013_PARENT_CODE'
    end
    object odsListT013_PARENT_COUNTRY: TStringField
      FieldName = 'T013_PARENT_COUNTRY'
      Size = 250
    end
    object odsListOP_COUNT: TFloatField
      DisplayWidth = 24
      FieldName = 'OP_COUNT'
      DisplayFormat = '### ### ### ### ##0.00'
    end
    object odsListOP_SUM_CROSS: TFloatField
      DisplayWidth = 24
      FieldName = 'OP_SUM_CROSS'
      DisplayFormat = '### ### ### ### ##0.00'
    end
  end
  inherited pkList: TOraclePackage
    Top = 206
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:T013_ID, '#39'N'#39');'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031335F4944040000000000000000000000}
    Top = 243
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:T013_ID, :T013_PARENT_ID);'
      'END;')
    Variables.Data = {
      0300000002000000080000003A543031335F4944040000000000000000000000
      0F0000003A543031335F504152454E545F4944040000000000000000000000}
    Top = 243
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T013_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031335F4944040000000000000000000000}
    Top = 243
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T013_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543031335F4944040000000000000000000000}
    Top = 243
  end
  inherited pmFilter: TPopupMenu
    Top = 155
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
