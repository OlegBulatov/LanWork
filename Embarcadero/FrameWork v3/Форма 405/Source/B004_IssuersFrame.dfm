inherited B004_Issuers: TB004_Issuers
  Width = 842
  Height = 518
  inherited xxxDBGrid: TxxxDBGrid
    Top = 199
    Width = 842
    Height = 319
    AdvSettings.DesignMode = True
    AdvSettings.Indexes = <
      item
        FieldName = 'NOM_SUM_N'
        SortType = stDesc
      end>
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
            LastCol = 10
            Caption = 'Оборот по номиналу ($)'
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
        FieldName = 'T028_ID_IS_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент распознан'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 100
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
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 100
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
        Title.Caption = 'Кол-во ц.б.'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_Y'
        PickList.Strings = ()
        Title.Caption = 'Распозн. эмиссии'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SUM_N'
        PickList.Strings = ()
        Title.Caption = 'Нераспозн. эмиссии'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 174
    Width = 842
    inherited tlbSelect: TToolBar
      Width = 263
      ButtonHeight = 22
      ButtonWidth = 82
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object tbLink: TToolButton
        Left = 83
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 169
        Top = 0
        Action = actUnlink
      end
      object ToolButton1: TToolButton
        Left = 251
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 259
        Top = 0
        Action = actGoToData
        ImageIndex = 11
      end
    end
  end
  object paFilter: TPanel [2]
    Left = 0
    Top = 0
    Width = 842
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline PeriodFilter: TB004_PeriodFilter
      Left = 12
      Top = 4
      Width = 480
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
      end
      inherited cb: TCheckBox
        Enabled = False
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'SELECT   T055_ID,'
          '         T002_NUMB_IN_YEA,'
          #9'  T002_NUMB_IN_YEA_TEXT'
          'FROM     V_405_NUMB_IN_YEA_DESC'
          'ORDER BY T002_NUMB_IN_YEA')
      end
    end
    inline SecTypeFilter: TC002_TypeSec
      Left = 12
      Top = 28
      Width = 480
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
        Hint = 'Не выбрано'
        ListStyle = [lsChecked, lsSizeable]
        ParentShowHint = False
        ShowHint = True
        Advanced.ShowSelectionHint = True
      end
      inherited actList: TActionList
        Left = 384
      end
      inherited dsList: TDataSource
        Left = 352
      end
      inherited odsList: TOracleDataSet
        Left = 320
      end
    end
    object Button1: TButton
      Left = 498
      Top = 4
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
    inline PartFilter: TB004_PartFilter
      Left = 12
      Top = 52
      Width = 480
      TabOrder = 3
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
        OnCloseUp = PartFilterlcbCloseUp
      end
    end
    inline PrizFilter: TB004_PrizFilter
      Left = 12
      Top = 76
      Width = 480
      TabOrder = 4
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
      end
    end
    inline SectorFilter: TB004_SectorFilter
      Left = 12
      Top = 100
      Width = 480
      TabOrder = 5
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
      end
    end
    inline AccountFilter: TB004_AccountFilter
      Left = 12
      Top = 124
      Width = 480
      TabOrder = 6
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 319
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 153
    Width = 842
    inherited Panel1: TPanel
      Left = 815
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 24
    Top = 324
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Привязать эмитента'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actGoToData: TAction
      Caption = 'К данным'
      Hint = 'Переход к данным'
      OnExecute = actGoToDataExecute
      OnUpdate = actGoToDataUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать эмитента от главного'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 283
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         T055_LONG_NAME,'
      '         T028_ID_IS_MAIN,'
      '         T036_INCLUDE,'
      '         T028_ID,'
      '         T028_SHOT_NAME,'
      '         T028_INN,'
      '         T028_COUNTRY_ID,'
      '         T028_ID_MAIN,'
      '         T028_SHOT_NAME_MAIN,'
      '         T028_INN_MAIN,'
      '         T028_COUNTRY_ID_MAIN,'
      '         SUM(KOL_CB) AS KOL_CB,'
      '         SUM(NOM_SUM) AS NOM_SUM,'
      '         SUM(NOM_SUM_Y) AS NOM_SUM_Y,'
      '         SUM(NOM_SUM_N) AS NOM_SUM_N'
      'FROM     V_711_LINK_ISSUERS_11 V1'
      'WHERE    V1.T055_ID = :T055_ID'
      'AND      1=1'
      'GROUP BY T055_ID,'
      '         T055_LONG_NAME,'
      '         T028_ID,'
      '         T028_ID_IS_MAIN,'
      '         T036_INCLUDE,'
      '         T028_SHOT_NAME,'
      '         T028_INN,'
      '         T028_COUNTRY_ID,'
      '         T028_ID_MAIN,'
      '         T028_SHOT_NAME_MAIN,'
      '         T028_INN_MAIN,'
      '         T028_COUNTRY_ID_MAIN'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000543035355F494401000000000007000000543032
      385F49440100000000000F000000543032385F49445F49535F4D41494E010000
      0000000C000000543033365F494E434C5544450100000000000E000000543032
      385F53484F545F4E414D4501000000000008000000543032385F494E4E010000
      0000000F000000543032385F434F554E5452595F494401000000000006000000
      4B4F4C5F4342010000000000070000004E4F4D5F53554D010000000000090000
      004E4F4D5F53554D5F59010000000000090000004E4F4D5F53554D5F4E010000
      0000000E000000543035355F4C4F4E475F4E414D450100000000000C00000054
      3032385F49445F4D41494E01000000000013000000543032385F53484F545F4E
      414D455F4D41494E0100000000000D000000543032385F494E4E5F4D41494E01
      000000000014000000543032385F434F554E5452595F49445F4D41494E010000
      000000}
    Top = 281
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_ID_IS_MAIN: TStringField
      FieldName = 'T028_ID_IS_MAIN'
      Size = 3
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 3
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
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
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
  end
  inherited PopupMenu: TPopupMenu
    Top = 263
  end
  inherited oqAdd: TOracleQuery
    Top = 284
  end
  inherited oqUpdate: TOracleQuery
    Top = 320
  end
  inherited oqDelete: TOracleQuery
    Top = 360
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 334
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
    Left = 403
    Top = 288
  end
  object oqUnlinkIssuer: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T028_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Left = 400
    Top = 328
  end
end
