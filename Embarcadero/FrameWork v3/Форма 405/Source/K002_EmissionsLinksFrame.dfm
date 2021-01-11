inherited K002_EmissionsLinks: TK002_EmissionsLinks
  Width = 961
  inherited xxxDBGrid: TxxxDBGrid
    Top = 181
    Width = 961
    Height = 222
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 9
            Caption = 'Эмиссия'
          end
          item
            FirstCol = 10
            LastCol = 18
            Caption = 'Главная эмиссия'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 5
            LastCol = 9
            Caption = 'Эмитент'
          end
          item
            FirstCol = 14
            LastCol = 18
            Caption = 'Эмитент'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T030_ID'
        PickList.Strings = ()
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип записи'
        Width = 66
        Visible = True
      end
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
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег №'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_ID'
        PickList.Strings = ()
        Width = 56
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
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T030_PARENT_ID'
        PickList.Strings = ()
        Title.Caption = 'T030_ID'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'T028_ID'
        Width = 56
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
        FieldName = 'T028_COUNTRY_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 44
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 156
    Width = 961
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
      end
    end
  end
  inherited paFilters: TPanel
    Width = 961
    Height = 135
    inherited GroupBox1: TGroupBox
      Width = 785
      Height = 131
      object Bevel1: TBevel
        Left = 392
        Top = 12
        Width = 50
        Height = 113
        Shape = bsLeftLine
      end
      object Label1: TLabel
        Left = 400
        Top = 16
        Width = 116
        Height = 13
        Caption = 'Для главных эмиссий:'
      end
      inline SecTypeFilter: TK002_EmissionSecTypeFilter
        Left = 8
        Top = 35
      end
      inline RecTypeFilter: TK001_RecTypeFilter
        Left = 8
        Top = 12
        TabOrder = 1
      end
      inline SecRegnFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 58
        TabOrder = 2
        inherited lbCaption: TLabel
          Width = 32
          Caption = 'Рег №'
        end
      end
      inline IsinFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 80
        TabOrder = 3
        inherited lbCaption: TLabel
          Width = 21
          Caption = 'ISIN'
        end
      end
      inline InnFilter: TK001_IssuerInnFilter
        Left = 8
        Top = 103
        TabOrder = 4
        inherited lbCaption: TLabel
          Width = 75
          Caption = 'ИНН эмитента'
        end
      end
      inline SecTypeMainFilter: TK002_EmissionSecTypeFilter
        Left = 400
        Top = 35
        TabOrder = 5
      end
      inline SecRegnMainFilter: TK001_IssuerInnFilter
        Left = 400
        Top = 58
        TabOrder = 6
        inherited lbCaption: TLabel
          Width = 32
          Caption = 'Рег №'
        end
      end
      inline IsinMainFilter: TK001_IssuerInnFilter
        Left = 400
        Top = 80
        TabOrder = 7
        inherited lbCaption: TLabel
          Width = 21
          Caption = 'ISIN'
        end
      end
      inline InnMainFilter: TK001_IssuerInnFilter
        Left = 400
        Top = 102
        TabOrder = 8
        inherited lbCaption: TLabel
          Width = 75
          Caption = 'ИНН эмитента'
        end
      end
    end
    inherited Button1: TButton
      Left = 796
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 135
    Width = 961
    inherited Panel1: TPanel
      Left = 934
    end
  end
  inherited actList: TActionList
    Top = 309
    inherited actSearch: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited dsList: TDataSource
    Top = 248
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_ID,'
      '       T030_PARENT_ID,'
      '       REC_TYPE,'
      '       REC_TYPE_NAME,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T010_ID,'
      '       T010_ISIN,'
      '       T028_ID,'
      '       T028_PARENT_ID,'
      '       T028_SHOT_NAME,'
      '       T025_ID,'
      '       T025_SHOT_NAME,'
      '       T028_INN,'
      '       T028_COUNTRY_ID,'
      '       T028_COUNTRY_NAME,'
      '       T027_ID_MAIN,'
      '       T027_SEC_TYPE_MAIN,'
      '       T026_ID_MAIN,'
      '       T026_SEC_REGN_MAIN,'
      '       T010_ID_MAIN,'
      '       T010_ISIN_MAIN,'
      '       T028_ID_MAIN,'
      '       T028_PARENT_ID_MAIN,'
      '       T028_SHOT_NAME_MAIN,'
      '       T025_ID_MAIN,'
      '       T025_SHOT_NAME_MAIN,'
      '       T028_INN_MAIN,'
      '       T028_COUNTRY_ID_MAIN,'
      '       T028_COUNTRY_NAME_MAIN'
      'from   V_405_REESTERS_EMISSIONS')
    QBEDefinition.QBEFieldDefs = {
      040000002000000007000000543033305F49440100000000000E000000543033
      305F504152454E545F4944010000000000080000005245435F54595045010000
      0000000D0000005245435F545950455F4E414D45010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      000007000000543032365F49440100000000000D000000543032365F5345435F
      5245474E01000000000007000000543031305F49440100000000000900000054
      3031305F4953494E01000000000007000000543032385F49440100000000000E
      000000543032385F504152454E545F49440100000000000E000000543032385F
      53484F545F4E414D4501000000000007000000543032355F4944010000000000
      0E000000543032355F53484F545F4E414D450100000000000800000054303238
      5F494E4E0100000000000F000000543032385F434F554E5452595F4944010000
      00000011000000543032385F434F554E5452595F4E414D450100000000000C00
      0000543032375F49445F4D41494E01000000000012000000543032375F534543
      5F545950455F4D41494E0100000000000C000000543032365F49445F4D41494E
      01000000000012000000543032365F5345435F5245474E5F4D41494E01000000
      00000C000000543031305F49445F4D41494E0100000000000E00000054303130
      5F4953494E5F4D41494E0100000000000C000000543032385F49445F4D41494E
      01000000000013000000543032385F504152454E545F49445F4D41494E010000
      00000013000000543032385F53484F545F4E414D455F4D41494E010000000000
      0C000000543032355F49445F4D41494E01000000000013000000543032355F53
      484F545F4E414D455F4D41494E0100000000000D000000543032385F494E4E5F
      4D41494E01000000000014000000543032385F434F554E5452595F49445F4D41
      494E01000000000016000000543032385F434F554E5452595F4E414D455F4D41
      494E010000000000}
    Top = 246
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListREC_TYPE: TFloatField
      FieldName = 'REC_TYPE'
    end
    object odsListREC_TYPE_NAME: TStringField
      FieldName = 'REC_TYPE_NAME'
      Size = 10
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
    object odsListT010_ID_MAIN: TFloatField
      FieldName = 'T010_ID_MAIN'
    end
    object odsListT010_ISIN_MAIN: TStringField
      FieldName = 'T010_ISIN_MAIN'
      Size = 255
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_PARENT_ID_MAIN: TFloatField
      FieldName = 'T028_PARENT_ID_MAIN'
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
  end
  inherited PopupMenu: TPopupMenu
    Top = 240
  end
  inherited oqAdd: TOracleQuery
    Top = 249
  end
  inherited oqUpdate: TOracleQuery
    Top = 285
  end
  inherited oqDelete: TOracleQuery
    Top = 325
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 307
  end
  inherited pmFilter: TPopupMenu
    Top = 122
  end
end
