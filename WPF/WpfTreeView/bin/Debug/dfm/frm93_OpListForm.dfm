inherited frm93_OpList: Tfrm93_OpList
  Left = 33
  Top = 353
  Width = 1129
  Height = 583
  Caption = 'Эмиссии формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 0
    Height = 497
    Align = alLeft
    Visible = True
  end
  inherited paRight: TPanel
    Left = 1121
    Height = 497
  end
  inherited paMain: TPanel
    Left = 3
    Width = 1118
    Height = 497
    inherited ToolBar2: TToolBar
      Width = 1118
      ButtonWidth = 134
      inherited ToolButton19: TToolButton
        Left = 185
      end
      inherited ToolButton4: TToolButton
        Left = 259
      end
      inherited ToolBar1: TToolBar
        Left = 267
      end
      inherited sp02: TToolButton
        Left = 336
      end
      inherited tbSimFilter: TToolButton
        Left = 344
      end
      inherited tbSep01: TToolButton
        Left = 428
      end
      inherited tlbSearch: TToolBar
        Left = 436
      end
      inherited ToolButton13: TToolButton
        Left = 496
      end
      inherited tbExcel: TToolButton
        Left = 504
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 615
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 623
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object tbLinkEmission: TToolButton
        Left = 740
        Top = 0
        Width = 8
        Caption = 'tbLinkEmission'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 748
        Top = 0
        Hint = 'Привязать эмиссию к главной'
        AutoSize = True
        Caption = 'Привязать...'
        DropdownMenu = MenuLink
        ImageIndex = 28
        OnClick = actLinkByIssuerExecute
      end
      object ToolButton7: TToolButton
        Left = 843
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 922
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 930
        Top = 0
        Action = actGoToEmissInf
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1118
      Height = 432
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_CROSS'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 8
              Caption = 'Эмиссия'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Оборот ($)'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 4
              Caption = 'Исходные данные формы 405 '
            end
            item
              FirstCol = 5
              LastCol = 8
              Caption = 'Реестр'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T030_ID_IS_MAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Распознана'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег.номер ц.б.'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN_MAIN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Рег.номер ц.б.'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
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
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IS_PACK'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1118
      TabOrder = 3
      inherited Panel1: TPanel
        Left = 1091
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1118
      TabOrder = 2
      inherited Panel1: TPanel
        Left = 1091
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 530
    Width = 1121
  end
  inherited pnlButtons: TPanel
    Top = 497
    Width = 1121
    inherited OKBtn: TButton
      Left = 688
    end
    inherited CancelBtn: TButton
      Left = 768
    end
  end
  inherited dsList: TDataSource
    Top = 189
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 197
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = 'Перейти к 405'
      Hint = 'Перейти к 405'
    end
    object actLinkByIssuer: TAction
      Caption = 'По эмитенту...'
      Hint = 'Привязать эмиссию к главной по эмитенту'
      ImageIndex = 28
      OnExecute = actLinkByIssuerExecute
      OnUpdate = actLinkByIssuerUpdate
    end
    object actGoToEmissInf: TAction
      Caption = 'Перейти к эмиссиям'
      ImageIndex = 11
      OnExecute = actGoToEmissInfExecute
      OnUpdate = actGoToEmissInfUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать эмиссию от главной'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главной'
      Hint = 'Сделать эмиссию главной'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actLinkBySecRegn: TAction
      Caption = 'По рег. номеру...'
      Hint = 'Привязать эмиссию к главной по рег. номеру'
      ImageIndex = 28
      OnExecute = actLinkBySecRegnExecute
      OnUpdate = actLinkBySecRegnUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 221
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, '
      '       T028_MAIN_ID, '
      '       T030_ID,'
      '       T030_ID_IS_MAIN,'
      '       IS_PACK, '
      '       T028_ID,'
      '       T028_SHOT_NAME, '
      '       T028_INN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T030_ID_MAIN,'
      '       T028_ID_MAIN,'
      '       T028_SHOT_NAME_MAIN,'
      '       T028_INN_MAIN,'
      '       T027_ID_MAIN,'
      '       T027_SEC_TYPE_MAIN,'
      '       T026_ID_MAIN,'
      '       T026_SEC_REGN_MAIN,'#9
      '       T001_OP_COUNT,'
      '       T001_OP_SUM_CROSS,'
      '       T001_OP_SUM_CROSS_Y,'
      '       T001_OP_SUM_CROSS_N'
      'FROM   V_405_OP_BY_EMISSIONS'
      'WHERE  T055_ID = :T055_ID'
      '  AND  T028_ID = :T028_ID'
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001800000007000000543035355F494401000000000007000000543032
      385F49440100000000000D000000543030315F4F505F434F554E540100000000
      0011000000543030315F4F505F53554D5F43524F53530100000000000D000000
      543032375F5345435F5459504501000000000007000000543032375F49440100
      000000000C000000543032385F4D41494E5F49440100000000000F0000005430
      33305F49445F49535F4D41494E0100000000000E000000543032385F53484F54
      5F4E414D4501000000000008000000543032385F494E4E010000000000070000
      00543032365F49440100000000000D000000543032365F5345435F5245474E01
      000000000013000000543030315F4F505F53554D5F43524F53535F5901000000
      000013000000543030315F4F505F53554D5F43524F53535F4E01000000000007
      000000543033305F49440100000000000700000049535F5041434B0100000000
      000C000000543033305F49445F4D41494E0100000000000C000000543032385F
      49445F4D41494E01000000000013000000543032385F53484F545F4E414D455F
      4D41494E0100000000000D000000543032385F494E4E5F4D41494E0100000000
      000C000000543032375F49445F4D41494E01000000000012000000543032375F
      5345435F545950455F4D41494E0100000000000C000000543032365F49445F4D
      41494E01000000000012000000543032365F5345435F5245474E5F4D41494E01
      0000000000}
    Top = 189
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT028_MAIN_ID: TFloatField
      FieldName = 'T028_MAIN_ID'
    end
    object odsListT030_ID_IS_MAIN: TStringField
      FieldName = 'T030_ID_IS_MAIN'
      Size = 3
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
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
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '##0'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
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
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListIS_PACK: TFloatField
      FieldName = 'IS_PACK'
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
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
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT026_ID_MAIN: TFloatField
      FieldName = 'T026_ID_MAIN'
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
  end
  inherited pkList: TOraclePackage
    Top = 221
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_405_Emissions.p_make_emission_main(:i_T030_ID, :o_T030_PARE' +
        'NT_ID);'
      '  Commit;'
      'END;')
    Variables.Data = {
      03000000020000000A0000003A495F543033305F494404000000000000000000
      0000110000003A4F5F543033305F504152454E545F4944040000000000000000
      000000}
    Top = 258
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Top = 258
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_del_emis_link(:T030_ID);'
      '  Commit;'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Top = 258
  end
  inherited oqDupl: TOracleQuery
    Top = 258
  end
  inherited pmFilter: TPopupMenu
    Top = 192
  end
  object MenuLink: TPopupMenu
    Left = 779
    Top = 24
    object N16: TMenuItem
      Action = actLinkByIssuer
    end
    object N17: TMenuItem
      Action = actLinkBySecRegn
    end
  end
end
