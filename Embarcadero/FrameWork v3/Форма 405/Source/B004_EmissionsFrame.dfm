inherited B004_Emissions: TB004_Emissions
  Width = 939
  Height = 369
  inherited xxxDBGrid: TxxxDBGrid
    Width = 939
    Height = 323
    AdvSettings.Indexes = <
      item
        FieldName = 'NOM_SUM_N'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 10
            Caption = 'Эмиссия'
          end
          item
            FirstCol = 11
            LastCol = 14
            Caption = 'Оборот ($)'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 5
            Caption = 'Исходные данные форма 711'
          end
          item
            FirstCol = 6
            LastCol = 10
            Caption = 'Реестр'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T030_ID_IS_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Распознана'
        Width = 38
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег.номер ц.б.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 80
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Рег.номер ц.б.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_CB'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Кол-во ц.б.'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_Y'
        PickList.Strings = ()
        Title.Caption = 'Распозн. эмиссии'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_N'
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
  inherited paToolButton: TPanel
    Width = 939
    inherited tlbSelect: TToolBar
      Width = 286
      ButtonHeight = 22
      ButtonWidth = 113
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object ToolButton1: TToolButton
        Left = 200
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 286
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 939
    inherited Panel1: TPanel
      Left = 912
    end
  end
  inherited actList: TActionList
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать эмиссию'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главной'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T055_ID,'
      '  T028_MAIN_ID,'
      '  T030_ID,'
      '  T030_ID_IS_MAIN,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_ID,'
      '  T026_SEC_REGN,'
      '  ISIN,'
      '  T030_ID_MAIN,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_ID_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  ISIN_MAIN,'
      '  SUM(KOL_CB) KOL_CB,'
      '  SUM(NOM_SUM) NOM_SUM,'
      '  SUM(NOM_SUM_Y) NOM_SUM_Y,'
      '  SUM(NOM_SUM_N) NOM_SUM_N'
      'FROM V_711_LINK_EMISSIONS_11'
      'WHERE  T055_ID = :T055_ID'
      'AND    T028_ID = :T028_ID'
      'AND    1=1'
      'GROUP BY'
      '  T055_ID,'
      '  T028_MAIN_ID,'
      '  T030_ID,'
      '  T030_ID_IS_MAIN,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_ID,'
      '  T026_SEC_REGN,'
      '  ISIN,'
      '  T030_ID_MAIN,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_ID_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  ISIN_MAIN'
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001900000007000000543035355F49440100000000000C000000543032
      385F4D41494E5F494401000000000007000000543033305F4944010000000000
      0F000000543033305F49445F49535F4D41494E01000000000007000000543032
      385F49440100000000000E000000543032385F53484F545F4E414D4501000000
      000008000000543032385F494E4E01000000000007000000543032375F494401
      00000000000D000000543032375F5345435F5459504501000000000007000000
      543032365F49440100000000000D000000543032365F5345435F5245474E0100
      00000000060000004B4F4C5F4342010000000000070000004E4F4D5F53554D01
      0000000000090000004E4F4D5F53554D5F59010000000000090000004E4F4D5F
      53554D5F4E0100000000000C000000543033305F49445F4D41494E0100000000
      000C000000543032385F49445F4D41494E01000000000013000000543032385F
      53484F545F4E414D455F4D41494E0100000000000D000000543032385F494E4E
      5F4D41494E0100000000000C000000543032375F49445F4D41494E0100000000
      0012000000543032375F5345435F545950455F4D41494E0100000000000C0000
      00543032365F49445F4D41494E01000000000012000000543032365F5345435F
      5245474E5F4D41494E010000000000040000004953494E010000000000090000
      004953494E5F4D41494E010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_MAIN_ID: TFloatField
      FieldName = 'T028_MAIN_ID'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_ID_IS_MAIN: TStringField
      FieldName = 'T030_ID_IS_MAIN'
      Size = 3
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
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
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListKOL_CB: TFloatField
      FieldName = 'KOL_CB'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListNOM_SUM: TFloatField
      FieldName = 'NOM_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListNOM_SUM_Y: TFloatField
      FieldName = 'NOM_SUM_Y'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListNOM_SUM_N: TFloatField
      FieldName = 'NOM_SUM_N'
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
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 12
    end
    object odsListISIN_MAIN: TStringField
      FieldName = 'ISIN_MAIN'
      Size = 255
    end
  end
  object oqLinkEmission: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Left = 409
    Top = 128
  end
  object oqUnlinkEmission: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_del_emis_link(:i_T030_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543033305F494404000000000000000000
      0000}
    Left = 408
    Top = 160
  end
  object oqMakeEmissionMain: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_405_Emissions.p_make_emission_main(:T030_ID, :T028_PARENT_I' +
        'D);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0F0000003A543032385F504152454E545F4944040000000000000000000000}
    Left = 408
    Top = 192
  end
end
