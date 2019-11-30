inherited frm98_711OpList: Tfrm98_711OpList
  Left = 213
  Top = 367
  Width = 1292
  Height = 583
  Caption = 'Эмиссии формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1190
    Height = 497
    Visible = True
  end
  inherited paRight: TPanel
    Left = 1193
    Width = 91
    Height = 497
    Visible = False
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
    end
    inline fm27_SecType: Tfm41_SecTypeForLinks
      Top = 51
      Width = 91
      Height = 446
      Align = alClient
      TabOrder = 1
      inherited gr01: TxxxDBGrid
        Left = 0
        Top = 0
        Width = 91
        Height = 446
        Align = alClient
        Visible = False
      end
      inherited ods01: TOracleDataSet
        MasterFields = ''
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
    Width = 1190
    Height = 497
    inherited ToolBar2: TToolBar
      Width = 1190
      ButtonWidth = 131
      inherited ToolButton17: TToolButton
        Caption = 'Перейти к 3.1'
        ImageIndex = 1
      end
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
      object tbLinkEmission: TToolButton
        Left = 632
        Top = 0
        Width = 8
        Caption = 'tbLinkEmission'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 640
        Top = 0
        AutoSize = True
        Caption = 'Привязать эмиссию'
        ImageIndex = 13
        OnClick = actLinkEmissionExecute
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1190
      Height = 432
      OnDblClick = nil
      AdvSettings.Indexes = <
        item
          FieldName = 'T064_COUNT'
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
              FirstCol = 0
              LastCol = 4
              Caption = 'Исходные данные форма 711'
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
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 105
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
          FieldName = 'T064_COUNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
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
      Width = 1190
      inherited Panel1: TPanel
        Left = 1163
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1190
      inherited Panel1: TPanel
        Left = 1163
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 530
    Width = 1284
  end
  inherited pnlButtons: TPanel
    Top = 497
    Width = 1284
    inherited OKBtn: TButton
      Left = 947
    end
    inherited CancelBtn: TButton
      Left = 1027
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Hint = 'Перейти к 3.1'
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = ''
      Hint = ''
    end
    object actLinkEmission: TAction
      Caption = 'Привязать эмиссию'
      Hint = 'Привязать эмиссию'
      ImageIndex = 13
      OnExecute = actLinkEmissionExecute
    end
    object actApplyFilter: TAction
      Caption = 'Обновить'
      OnExecute = actApplyFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT     T055_ID,'
      '           T028_MAIN_ID,'
      '           T030_ID,'
      '           T030_ID_IS_MAIN,'
      '           T028_ID,'
      '           T028_SHOT_NAME,'
      '           T028_INN,'
      '           T027_ID,'
      '           T027_SEC_TYPE,'
      '           T026_ID,'
      '           T026_SEC_REGN,'
      '           SUM(T064_COUNT) AS T064_COUNT,'
      '           SUM(T052_SUM) AS T052_SUM,'
      '           SUM(T052_SUM_Y) AS T052_SUM_Y,'
      '           SUM(T052_SUM_N) AS T052_SUM_N,'
      '           T030_ID_MAIN,'
      '           T028_ID_MAIN,'
      '           T028_SHOT_NAME_MAIN,'
      '           T028_INN_MAIN,'
      '           T027_ID_MAIN,'
      '           T027_SEC_TYPE_MAIN,'
      '           T026_ID_MAIN,'
      '           T026_SEC_REGN_MAIN '
      'FROM       V_405_OP_BY_EMISSIONS_711 V1'
      'WHERE      T028_MAIN_ID = :T028_ID'
      'AND        (:FLAG_T055 = 0'
      'OR           T055_ID = :T055_ID)'
      'AND        (:FLAG_T054 = 0'
      'OR           T054_ID = :T054_ID)'
      'AND        (:FLAG_T053 = 0'
      'OR           T053_ID = :T053_ID)'
      'GROUP BY   V1.T055_ID,'
      '           V1.T028_MAIN_ID,'
      '           V1.T030_ID,'
      '           V1.T030_ID_IS_MAIN,'
      '           V1.T028_ID,'
      '           V1.T028_SHOT_NAME,'
      '           V1.T028_INN,'
      '           V1.T027_ID,'
      '           V1.T027_SEC_TYPE,'
      '           V1.T026_ID,'
      '           V1.T026_SEC_REGN,'
      '           V1.T030_ID_MAIN,'
      '           V1.T028_ID_MAIN,'
      '           V1.T028_SHOT_NAME_MAIN,'
      '           V1.T028_INN_MAIN,'
      '           V1.T027_ID_MAIN,'
      '           V1.T027_SEC_TYPE_MAIN,'
      '           V1.T026_ID_MAIN,'
      '           V1.T026_SEC_REGN_MAIN ')
    Variables.Data = {
      0300000007000000080000003A543035355F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000080000003A543035
      345F4944040000000000000000000000080000003A543035335F494404000000
      00000000000000000A0000003A464C41475F5430353504000000000000000000
      00000A0000003A464C41475F543035340400000000000000000000000A000000
      3A464C41475F54303533040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001700000007000000543035355F494401000000000007000000543032
      385F49440100000000000D000000543032375F5345435F545950450100000000
      0007000000543032375F49440100000000000C000000543032385F4D41494E5F
      49440100000000000F000000543033305F49445F49535F4D41494E0100000000
      000E000000543032385F53484F545F4E414D4501000000000008000000543032
      385F494E4E01000000000007000000543032365F49440100000000000D000000
      543032365F5345435F5245474E01000000000007000000543033305F49440100
      000000000A000000543036345F434F554E540100000000000800000054303532
      5F53554D0100000000000A000000543035325F53554D5F590100000000000A00
      0000543035325F53554D5F4E0100000000000C000000543033305F49445F4D41
      494E0100000000000C000000543032385F49445F4D41494E0100000000001300
      0000543032385F53484F545F4E414D455F4D41494E0100000000000D00000054
      3032385F494E4E5F4D41494E0100000000000C000000543032375F49445F4D41
      494E01000000000012000000543032375F5345435F545950455F4D41494E0100
      000000000C000000543032365F49445F4D41494E010000000000120000005430
      32365F5345435F5245474E5F4D41494E010000000000}
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
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
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
  object oqLinkEmission: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Left = 715
    Top = 24
  end
end
