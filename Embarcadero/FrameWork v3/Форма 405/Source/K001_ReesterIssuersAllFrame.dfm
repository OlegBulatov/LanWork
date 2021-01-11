inherited K001_ReesterIssuersAll: TK001_ReesterIssuersAll
  Width = 756
  Height = 534
  inherited xxxDBGrid: TxxxDBGrid
    Top = 158
    Width = 756
    Height = 376
    ParentFont = False
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 1
            LastCol = 5
            Caption = 'Контрагент'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_ID'
        PickList.Strings = ()
        Width = 50
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
        FieldName = 'T025_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 70
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
        FieldName = 'T028_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_CODE'
        PickList.Strings = ()
        Title.Caption = 'TIN'
        Width = 80
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 133
    Width = 756
    inherited tlbSeach: TToolBar
      Visible = False
    end
    inherited tlbSelect: TToolBar
      Width = 104
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton3: TToolButton
        Left = 35
        Top = 0
        Action = actMakeIssuerMain
      end
      object ToolButton4: TToolButton
        Left = 58
        Top = 0
        Action = actLinkIssuer
      end
      object ToolButton5: TToolButton
        Left = 81
        Top = 0
        Action = actUnlinkIssuer
      end
    end
    object tlbEdit: TToolBar
      Left = 612
      Top = 0
      Width = 77
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 65
      Caption = 'tlbEdit'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 6
      Transparent = True
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 8
        Top = 0
        Action = actEditIssuer
        AutoSize = True
      end
    end
  end
  object PanelFilters: TPanel [2]
    Left = 0
    Top = 0
    Width = 756
    Height = 112
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 393
      Height = 107
      Anchors = [akLeft, akTop, akBottom]
      Caption = ' Фильтр '
      TabOrder = 0
      inline IssuerTypeFilter: TK001_IssuerTypeFilter
        Left = 8
        Top = 35
      end
      inline IssuerInnFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 58
        TabOrder = 1
      end
      inline IssuerNameFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 81
        TabOrder = 2
        inherited lbCaption: TLabel
          Width = 50
          Caption = 'Название'
        end
      end
      inline RecTypeFilter: TK001_RecTypeFilter
        Left = 9
        Top = 12
        TabOrder = 3
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
  inherited fm031_Filter1: Tfm031_Filter
    Top = 112
    Width = 756
    TabOrder = 3
    inherited Panel1: TPanel
      Left = 729
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 348
    object actEditIssuer: TAction
      Caption = 'Правка'
      Hint = 'Правка'
      ImageIndex = 1
      OnExecute = actEditIssuerExecute
      OnUpdate = actEditIssuerUpdate
    end
    object actLinkIssuer: TAction
      Caption = 'Связать'
      Hint = 'Связать'
      ImageIndex = 28
    end
    object actUnlinkIssuer: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать'
      ImageIndex = 29
    end
    object actMakeIssuerMain: TAction
      Caption = 'Сделать главным'
      Hint = 'Сделать главным'
      ImageIndex = 27
      OnExecute = actMakeIssuerMainExecute
      OnUpdate = actMakeIssuerMainUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 287
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T028_IS_MAIN,'
      '       T028_ID,'
      '       T028_PARENT_ID,'
      '       T028_SHOT_NAME,'
      '       T025_ID,'
      '       T025_SHOT_NAME,'
      '       T028_INN,'
      '       T028_COUNTRY_ID,'
      '       T028_COUNTRY_NAME,'
      '       T028_CODE,'
      '       REC_TYPE,'
      '       T036_ISBANK,'
      '       T036_REGN,'
      '       T036_OGRN'
      'from   V_405_REESTERS_LINKS_TOP'
      'WHERE  1 = 1'
      ':T028_PARENT_ID'
      ':T028_ID')
    Variables.Data = {
      03000000020000000F0000003A543032385F504152454E545F49440100000002
      000000200000000000080000003A543032385F49440100000002000000200000
      000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000C000000543032385F49535F4D41494E0100000000000700
      0000543032385F49440100000000000E000000543032385F504152454E545F49
      440100000000000E000000543032385F53484F545F4E414D4501000000000007
      000000543032355F49440100000000000E000000543032355F53484F545F4E41
      4D4501000000000008000000543032385F494E4E0100000000000F0000005430
      32385F434F554E5452595F494401000000000011000000543032385F434F554E
      5452595F4E414D4501000000000009000000543032385F434F44450100000000
      00080000005245435F545950450100000000000B000000543033365F49534241
      4E4B01000000000009000000543033365F5245474E0100000000000900000054
      3033365F4F47524E010000000000}
    Top = 285
    object odsListT028_IS_MAIN: TIntegerField
      FieldName = 'T028_IS_MAIN'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
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
    object odsListT028_COUNTRY_NAME: TStringField
      FieldName = 'T028_COUNTRY_NAME'
      Size = 256
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 128
    end
    object odsListREC_TYPE: TFloatField
      FieldName = 'REC_TYPE'
    end
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_REGN: TStringField
      FieldName = 'T036_REGN'
      Size = 16
    end
    object odsListT036_OGRN: TStringField
      FieldName = 'T036_OGRN'
      Size = 255
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 200
    Top = 247
  end
  inherited oqAdd: TOracleQuery
    Top = 288
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Issuers.p_issuer_update_a (:T028_ID,'
      '                                    :T028_SHOT_NAME,'
      '                                    :T028_INN,'
      '                                    :T025_ID,'
      '                                    :T028_COUNTRY_ID,'
      '                                    :USER'
      '  );'
      '  COMMIT; '
      'end;')
    Variables.Data = {
      0300000006000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000100000003A54303238
      5F434F554E5452595F4944050000000000000000000000050000003A55534552
      050000000000000000000000090000003A543032385F494E4E05000000000000
      0000000000}
    Top = 324
  end
  inherited oqDelete: TOracleQuery
    Top = 364
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 346
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Issuers.p_set_issuer_link(:T028_ID, :T028_PARENT_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F504152454E545F4944040000000000000000000000}
    Left = 408
    Top = 288
  end
  object oqUnlink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Issuers.p_del_issuer_link(:T028_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    Left = 408
    Top = 320
  end
  object oqMakeMain: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T028_MAIN_ID := Pk_405_Issuers.f_set_issuer_as_main(:T028_ID)' +
        ';'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000D0000003A543032385F4D41494E5F494404000000000000
      0000000000080000003A543032385F4944040000000000000000000000}
    Left = 408
    Top = 352
  end
end
