inherited K001_IssuersLinks: TK001_IssuersLinks
  Width = 907
  Height = 523
  inherited xxxDBGrid: TxxxDBGrid
    Top = 157
    Width = 907
    Height = 366
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 5
            Caption = 'Контрагент'
          end
          item
            FirstCol = 6
            LastCol = 11
            Caption = 'Главный контрагент'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_ID'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип записи'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 180
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
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'T028_ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T025_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 70
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
        FieldName = 'T028_COUNTRY_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 110
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 132
    Width = 907
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbSeach: TToolBar
      Enabled = False
      Visible = False
      inherited tbSeparator04: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbFilter: TToolBar
      Enabled = False
      Visible = False
    end
    inherited tlbSelect: TToolBar
      Width = 110
      ButtonHeight = 22
      ButtonWidth = 82
      ShowCaptions = True
      Visible = True
      inherited tbSeparator07: TToolButton
        Visible = False
      end
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 91
        Top = 0
        Action = actLink
      end
    end
  end
  inherited paFilters: TPanel
    Width = 907
    Height = 111
    inherited GroupBox1: TGroupBox
      Width = 789
      Height = 108
      object Bevel1: TBevel
        Left = 392
        Top = 12
        Width = 33
        Height = 89
        Shape = bsLeftLine
      end
      object Label1: TLabel
        Left = 402
        Top = 16
        Width = 114
        Height = 13
        Caption = 'Для главных записей:'
      end
      inline IssuerTypeFilter: TK001_IssuerTypeFilter
        Left = 8
        Top = 35
      end
      inline RecTypeFilter: TK001_RecTypeFilter
        Left = 8
        Top = 12
        TabOrder = 1
      end
      inline IssuerInnFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 58
        TabOrder = 2
      end
      inline IssuerNameFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 80
        TabOrder = 3
        inherited lbCaption: TLabel
          Width = 50
          Caption = 'Название'
        end
      end
      inline MainIssuerTypeFilter: TK001_IssuerTypeFilter
        Left = 400
        Top = 35
        TabOrder = 4
      end
      inline MainIssuerInnFilter: TK001_IssuerInnFilter
        Left = 400
        Top = 58
        TabOrder = 5
      end
      inline MainIssuerNameFilter: TK001_IssuerInnFilter
        Left = 400
        Top = 79
        TabOrder = 6
        inherited lbCaption: TLabel
          Width = 50
          Caption = 'Название'
        end
      end
    end
    inherited Button1: TButton
      Left = 803
      Width = 72
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 111
    Width = 907
    inherited Panel1: TPanel
      Left = 880
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 315
    inherited actSearch: TAction
      Enabled = False
      Visible = False
    end
    object actLink: TAction
      Caption = 'Привязать'
      Hint = 'Связать с главной записью'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 254
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T028_ID,'
      '  T028_PARENT_ID,'
      '  REC_TYPE,'
      '  REC_TYPE_NAME,'
      '  T028_SHOT_NAME,'
      '  T025_ID,'
      '  T025_SHOT_NAME,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  T028_COUNTRY_NAME,'
      '  T028_CODE,'
      '  T028_ID_MAIN,'
      '  T028_PARENT_ID_MAIN,'
      '  REC_TYPE_MAIN,'
      '  REC_TYPE_NAME_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T025_ID_MAIN,'
      '  T025_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  T028_COUNTRY_NAME_MAIN,'
      '  T028_CODE_MAIN'
      'from V_405_REESTERS_ISSUERS')
    QBEDefinition.QBEFieldDefs = {
      040000001600000007000000543032385F49440100000000000E000000543032
      385F504152454E545F4944010000000000080000005245435F54595045010000
      0000000D0000005245435F545950455F4E414D450100000000000E0000005430
      32385F53484F545F4E414D4501000000000007000000543032355F4944010000
      0000000E000000543032355F53484F545F4E414D450100000000000800000054
      3032385F494E4E0100000000000F000000543032385F434F554E5452595F4944
      01000000000011000000543032385F434F554E5452595F4E414D450100000000
      0009000000543032385F434F44450100000000000C000000543032385F49445F
      4D41494E01000000000013000000543032385F504152454E545F49445F4D4149
      4E0100000000000D0000005245435F545950455F4D41494E0100000000001200
      00005245435F545950455F4E414D455F4D41494E010000000000130000005430
      32385F53484F545F4E414D455F4D41494E0100000000000C000000543032355F
      49445F4D41494E01000000000013000000543032355F53484F545F4E414D455F
      4D41494E0100000000000D000000543032385F494E4E5F4D41494E0100000000
      0014000000543032385F434F554E5452595F49445F4D41494E01000000000016
      000000543032385F434F554E5452595F4E414D455F4D41494E0100000000000E
      000000543032385F434F44455F4D41494E010000000000}
    Top = 252
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListREC_TYPE: TFloatField
      FieldName = 'REC_TYPE'
    end
    object odsListREC_TYPE_NAME: TStringField
      FieldName = 'REC_TYPE_NAME'
      Size = 10
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
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_PARENT_ID_MAIN: TFloatField
      FieldName = 'T028_PARENT_ID_MAIN'
    end
    object odsListREC_TYPE_MAIN: TFloatField
      FieldName = 'REC_TYPE_MAIN'
    end
    object odsListREC_TYPE_NAME_MAIN: TStringField
      FieldName = 'REC_TYPE_NAME_MAIN'
      Size = 10
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT025_ID_MAIN: TFloatField
      FieldName = 'T025_ID_MAIN'
    end
    object odsListT025_SHOT_NAME_MAIN: TStringField
      FieldName = 'T025_SHOT_NAME_MAIN'
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
    object odsListT028_COUNTRY_NAME_MAIN: TStringField
      FieldName = 'T028_COUNTRY_NAME_MAIN'
      Size = 256
    end
    object odsListT028_CODE_MAIN: TStringField
      FieldName = 'T028_CODE_MAIN'
      Size = 128
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 246
  end
  inherited oqAdd: TOracleQuery
    Top = 255
  end
  inherited oqUpdate: TOracleQuery
    Top = 291
  end
  inherited oqDelete: TOracleQuery
    Top = 331
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 313
  end
end
