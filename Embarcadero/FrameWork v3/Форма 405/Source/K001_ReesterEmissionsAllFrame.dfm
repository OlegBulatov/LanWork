inherited K001_ReesterEmissionsAll: TK001_ReesterEmissionsAll
  Height = 490
  inherited xxxDBGrid: TxxxDBGrid
    Top = 159
    Height = 331
    Columns = <
      item
        Expanded = False
        FieldName = 'T030_ID'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 200
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 113
    inherited tlbSeach: TToolBar
      Visible = False
    end
    inherited tlbSelect: TToolBar
      Width = 100
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton3: TToolButton
        Left = 35
        Top = 0
        Action = actMakeMain
        ImageIndex = 27
      end
      object ToolButton1: TToolButton
        Left = 58
        Top = 0
        Action = actLinkEmission
        AutoSize = True
        ImageIndex = 28
      end
      object ToolButton2: TToolButton
        Left = 85
        Top = 0
        Action = actUnlinkEmission
        AutoSize = True
        ImageIndex = 29
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 138
  end
  object paFilters: TPanel [3]
    Left = 0
    Top = 0
    Width = 635
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 393
      Height = 108
      Anchors = [akLeft, akTop, akBottom]
      Caption = ' Фильтр '
      TabOrder = 0
      inline RecTypeFilter: TK001_RecTypeFilter
        Left = 9
        Top = 12
      end
      inline SecTypeFilter: TK002_EmissionSecTypeFilter
        Left = 9
        Top = 35
        TabOrder = 1
      end
      inline SecRegnFilter: TK001_IssuerInnFilter
        Left = 9
        Top = 58
        TabOrder = 2
        inherited lbCaption: TLabel
          Width = 32
          Caption = 'Рег №'
        end
      end
      inline IsinFilter: TK001_IssuerInnFilter
        Left = 9
        Top = 80
        TabOrder = 3
        inherited lbCaption: TLabel
          Width = 21
          Caption = 'ISIN'
        end
      end
    end
    object btnRefresh: TButton
      Left = 412
      Top = 9
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
  end
  inherited actList: TActionList
    Top = 356
    object actLinkEmission: TAction
      Caption = 'Связать'
      Hint = 'Связать'
    end
    object actUnlinkEmission: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать'
    end
    object actMakeMain: TAction
      Caption = 'Сделать главной'
      Hint = 'Сделать главной'
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 295
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_IS_MAIN,'
      '       T030_ID,'
      '       T030_PARENT_ID,'
      '       T028_ID,'
      '       T028_PARENT_ID,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T010_ID,'
      '       T010_ISIN,'
      '       T030_RECORD_TYPE,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       REC_TYPE'
      'from   V_405_REESTERS_LINKS_BTM'
      'WHERE  1 = 1'
      ':T028_ID'
      ':T030_PARENT_ID')
    Variables.Data = {
      0300000002000000080000003A543032385F4944010000000200000020000000
      00000F0000003A543033305F504152454E545F49440100000002000000200000
      000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000C000000543033305F49535F4D41494E0100000000000700
      0000543033305F49440100000000000E000000543033305F504152454E545F49
      4401000000000007000000543032385F49440100000000000E00000054303238
      5F504152454E545F494401000000000007000000543032375F49440100000000
      000D000000543032375F5345435F545950450100000000000D00000054303236
      5F5345435F5245474E01000000000007000000543031305F4944010000000000
      09000000543031305F4953494E01000000000010000000543033305F5245434F
      52445F54595045010000000000080000005245435F5459504501000000000007
      000000543032365F49440100000000000E000000543032385F53484F545F4E41
      4D4501000000000008000000543032385F494E4E010000000000}
    Top = 293
    object odsListT030_IS_MAIN: TIntegerField
      FieldName = 'T030_IS_MAIN'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
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
    object odsListT010_ID: TFloatField
      FieldName = 'T010_ID'
    end
    object odsListT010_ISIN: TStringField
      FieldName = 'T010_ISIN'
      Size = 255
    end
    object odsListT030_RECORD_TYPE: TIntegerField
      FieldName = 'T030_RECORD_TYPE'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListREC_TYPE: TFloatField
      FieldName = 'REC_TYPE'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 255
  end
  inherited oqAdd: TOracleQuery
    Top = 296
  end
  inherited oqUpdate: TOracleQuery
    Top = 332
  end
  inherited oqDelete: TOracleQuery
    Top = 372
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 354
  end
  inherited pmFilter: TPopupMenu
    Top = 264
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Emissions.p_add_emis_link(:T030_ID, :T030_PARENT_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0F0000003A543033305F504152454E545F4944040000000000000000000000}
    Left = 416
    Top = 312
  end
  object oqUnLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Emissions.p_del_emis_link(:T030_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 416
    Top = 344
  end
  object oqMakeMain: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_Emissions.p_make_emission_main(:T030_ID, :T030_PARENT_I' +
        'D);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      0F0000003A543033305F504152454E545F4944040000000000000000000000}
    Left = 416
    Top = 384
  end
end
