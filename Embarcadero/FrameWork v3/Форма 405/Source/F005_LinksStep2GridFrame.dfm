inherited F005_LinksStep2Grid: TF005_LinksStep2Grid
  Width = 850
  inherited xxxDBGrid: TxxxDBGrid
    Width = 850
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 1
            LastCol = 5
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 10
            Caption = 'Реестр'
          end
          item
            FirstCol = 11
            LastCol = 12
            Caption = 'Остатки'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'IS_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Распозн.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
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
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег.№ ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Рег.№ ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_CB'
        PickList.Strings = ()
        Title.Caption = 'К-во ц.б., шт.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма ($)'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_Y'
        PickList.Strings = ()
        Title.Caption = 'Распозн. эмиссии'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_N'
        PickList.Strings = ()
        Title.Caption = 'Нераспозн. эмиссии'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 850
    inherited tlbSelect: TToolBar
      Width = 286
      ButtonHeight = 22
      ButtonWidth = 113
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object ToolButton2: TToolButton
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
    Width = 850
    inherited Panel1: TPanel
      Left = 823
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actMakeMain: TAction
      Caption = 'Сделать главной'
      Hint = 'Сделать эмиссию главной'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать эмиссию'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать эмиссию'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT --T055_ID,'
      '       --PART_ID,'
      '       IS_LINKED, '
      '       T030_ID,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       ISIN,'
      '       T030_ID_MAIN,'
      '       T028_ID_MAIN,'
      '       T028_SHOT_NAME_MAIN,'
      '       T028_INN_MAIN,'
      '       T027_ID_MAIN,'
      '       T027_SEC_TYPE_MAIN,'
      '       T026_ID_MAIN,'
      '       T026_SEC_REGN_MAIN,'
      '       ISIN_MAIN,'
      '       --DK_PRIZ,'
      '       --SEKTOR,'
      '       --VID_SH,'
      '       SUM(KOL_CB) AS KOL_CB,'
      '       SUM(NOM_SUM) AS NOM_SUM,'
      '       SUM(NOM_SUM_Y) AS NOM_SUM_Y,'
      '       SUM(NOM_SUM_N) AS NOM_SUM_N'
      'FROM   V_405_415_LINK_EMISSIONS'
      'WHERE  T055_ID = :T055_ID'
      'AND    T028_ID = :T028_ID'
      'AND    1=1'
      'GROUP BY'
      '       --T055_ID,'
      '       IS_LINKED,'
      '       T030_ID,'
      '       T028_ID,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       ISIN,'
      '       T030_ID_MAIN,'
      '       T028_ID_MAIN,'
      '       T028_SHOT_NAME_MAIN,'
      '       T028_INN_MAIN,'
      '       T027_ID_MAIN,'
      '       T027_SEC_TYPE_MAIN,'
      '       T026_ID_MAIN,'
      '       T026_SEC_REGN_MAIN,'
      '       ISIN_MAIN')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000}
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
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
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 255
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
    object odsListISIN_MAIN: TStringField
      FieldName = 'ISIN_MAIN'
      Size = 255
    end
    object odsListKOL_CB: TFloatField
      FieldName = 'KOL_CB'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOM_SUM: TFloatField
      FieldName = 'NOM_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOM_SUM_Y: TFloatField
      FieldName = 'NOM_SUM_Y'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOM_SUM_N: TFloatField
      FieldName = 'NOM_SUM_N'
      DisplayFormat = '### ### ### ##0.0'
    end
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:T030_ID, :T030_PARENT_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0F0000003A543033305F504152454E545F4944040000000000000000000000}
    Left = 328
    Top = 168
  end
  object oqUnlink: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_del_emis_link(:T030_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 328
    Top = 200
  end
  object oqMakeMain: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_405_Emissions.p_make_emission_main(:T030_ID, :T030_PARENT_I' +
        'D);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0F0000003A543033305F504152454E545F4944040000000000000000000000}
    Left = 328
    Top = 128
  end
end
