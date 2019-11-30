inherited F005_LinksStep1Grid: TF005_LinksStep1Grid
  Width = 846
  Height = 635
  inherited xxxDBGrid: TxxxDBGrid
    Top = 218
    Width = 846
    Height = 417
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 2
            LastCol = 4
            Caption = 'Эмитент'
          end
          item
            FirstCol = 5
            LastCol = 7
            Caption = 'Связан с эмитентом'
          end
          item
            FirstCol = 8
            LastCol = 9
            Caption = 'Остатки'
          end>
      end>
    Columns = <
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
        FieldName = 'ISSUER_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Эмитент распознан'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
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
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Название'
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
        FieldName = 'T028_COUNTRY_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_CB'
        PickList.Strings = ()
        Title.Caption = 'К-во ц.б., шт.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_CB_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Распозн. эмиссии'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_NOT_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Нераспозн. эмиссии'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 193
    Width = 846
    inherited tlbExcel: TToolBar
      inherited tbSeparator03: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 369
      ButtonHeight = 22
      ButtonWidth = 117
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
        Left = 204
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 290
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 369
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 377
        Top = 0
        Action = actGoToData
        AutoSize = True
        ImageIndex = 11
      end
    end
  end
  inherited paFilters: TPanel
    Width = 846
    Height = 172
    inherited GroupBox1: TGroupBox
      Width = 536
      Height = 167
      inline SecTypeFilter: TC002_TypeSec
        Left = 12
        Top = 38
        Width = 512
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
          DisplaySelectAll = 'Все'
          ListStyle = [lsChecked, lsSizeable]
        end
      end
      inline PartFilter: TF005_PartsFilter
        Left = 12
        Top = 63
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
          OnCloseUp = PartFilterlcbCloseUp
        end
      end
      inline PrizFilter: TB004_PrizFilter
        Left = 12
        Top = 88
        Width = 512
        TabOrder = 2
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline SectorFilter: TB004_SectorFilter
        Left = 12
        Top = 114
        Width = 512
        TabOrder = 3
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline AccountFilter: TB004_AccountFilter
        Left = 12
        Top = 139
        Width = 512
        TabOrder = 4
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline PeriodFilter: TF005_LinksPeriodFilter
        Left = 12
        Top = 13
        Width = 512
        TabOrder = 5
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
    inherited Button1: TButton
      Left = 548
      Width = 74
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 172
    Width = 846
    inherited Panel1: TPanel
      Left = 819
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 364
    object actMakeMain: TAction
      Caption = 'Сделать главным'
      Hint = 'Сделать эмитента главным'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать эмитента'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать эмитента'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
    object actGoToData: TAction
      Caption = 'К данным'
      Hint = 'Переход к данным'
      OnExecute = actGoToDataExecute
      OnUpdate = actGoToDataUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 303
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '--  PART_ID,'
      '--  DK_PRIZ,'
      '--  SEKTOR,'
      '--  VID_SH,'
      '--  T027_ID,'
      '  ISSUER_LINKED,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  SUM(KOL_CB) AS KOL_CB,'
      '  SUM(SUM_CB_USD) AS SUM_CB_USD,'
      '  SUM(NOM_SUM_LINKED) AS NOM_SUM_LINKED,'
      '  SUM(NOM_SUM_NOT_LINKED) AS NOM_SUM_NOT_LINKED'
      'FROM V_405_415_LINK_ISSUERS'
      'WHERE    T055_ID = :T055_ID'
      'AND      1=1'
      'GROUP BY'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  ISSUER_LINKED,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_ID_MAIN')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543035355F49440100000000000D000000495353
      5545525F4C494E4B454401000000000007000000543032385F49440100000000
      000E000000543032385F53484F545F4E414D4501000000000008000000543032
      385F494E4E0100000000000C000000543032385F49445F4D41494E0100000000
      0013000000543032385F53484F545F4E414D455F4D41494E0100000000000D00
      0000543032385F494E4E5F4D41494E010000000000060000004B4F4C5F434201
      00000000000A00000053554D5F43425F5553440100000000000E0000004E4F4D
      5F53554D5F4C494E4B4544010000000000120000004E4F4D5F53554D5F4E4F54
      5F4C494E4B45440100000000000E000000543035355F4C4F4E475F4E414D4501
      00000000000F000000543032385F434F554E5452595F49440100000000001400
      0000543032385F434F554E5452595F49445F4D41494E010000000000}
    AfterScroll = odsListAfterScroll
    Top = 301
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListISSUER_LINKED: TStringField
      FieldName = 'ISSUER_LINKED'
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
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
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
    object odsListT028_COUNTRY_ID_MAIN: TStringField
      FieldName = 'T028_COUNTRY_ID_MAIN'
      Size = 255
    end
    object odsListKOL_CB: TFloatField
      FieldName = 'KOL_CB'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListSUM_CB_USD: TFloatField
      FieldName = 'SUM_CB_USD'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOM_SUM_LINKED: TFloatField
      FieldName = 'NOM_SUM_LINKED'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListNOM_SUM_NOT_LINKED: TFloatField
      FieldName = 'NOM_SUM_NOT_LINKED'
      DisplayFormat = '### ### ### ##0.0'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 295
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:T028_ID, '#39'N'#39');'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Top = 304
  end
  inherited oqUpdate: TOracleQuery
    Top = 340
  end
  inherited oqDelete: TOracleQuery
    Top = 380
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 362
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
    Left = 352
    Top = 344
  end
  object oqUnlink: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T028_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Left = 352
    Top = 376
  end
  object oqHasMain: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_count integer;'
      'begin'
      '  select count(*) into v_count'
      '  from   T028_ISSUERS'
      '  where  T028_INN = :T028_INN'
      '  and    T028_PARENT_ID IS NOT NULL;'
      ''
      '  :RESULT := v_count;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000090000003A543032385F494E4E0500000000000000000000
      00070000003A524553554C54040000000000000000000000}
    Left = 488
    Top = 296
  end
end
