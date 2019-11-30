inherited A03_LinkingPage1Grid: TA03_LinkingPage1Grid
  Width = 922
  inherited xxxDBGrid: TxxxDBGrid
    Top = 102
    Width = 922
    Height = 339
    AdvSettings.Indexes = <
      item
        FieldName = 'SUM_VOLUME'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 2
            LastCol = 3
            Caption = 'Эмитент'
          end
          item
            FirstCol = 4
            LastCol = 5
            Caption = 'Связан с эмитентом'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
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
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER_FOUND'
        PickList.Strings = ()
        Title.Caption = 'Эмитент распознан'
        Width = 65
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
        FieldName = 'T028_COUNTRY_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_VOLUME'
        PickList.Strings = ()
        Title.Caption = 'Сумма'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 77
    Width = 922
    inherited tlbList: TToolBar
      Width = 242
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbExcel: TToolBar
      Left = 319
    end
    inherited tlbSeach: TToolBar
      Left = 353
      Width = 67
    end
    inherited tlbFilter: TToolBar
      Left = 420
      Width = 81
    end
    inherited tlbSelect: TToolBar
      Left = 501
      Width = 290
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
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 922
    Height = 77
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    inline PeriodFilter: TA10_PeriodFilter
      Left = 8
      Top = 4
      Height = 24
      inherited odsList2: TOracleDataSet
        SQL.Strings = (
          'select T055_ID,'
          '       PERIOD_TO'
          'from   V_404_DATA_PERIODS'
          'where  T055_ID >= :PERIOD_FROM')
      end
    end
    inline SecTypeFilter: TA12_SecTypeFilter
      Left = 8
      Top = 29
      Width = 513
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 161
        Width = 352
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'SEC_TYPE'
      end
      inherited odsList: TOracleDataSet
        inherited odsListSEC_TYPE: TStringField
          DisplayWidth = 5
        end
      end
    end
    inline IssuerFilter: TA03_IssuerFilter
      Left = 8
      Top = 55
      TabOrder = 2
    end
    object Button1: TButton
      Left = 526
      Top = 3
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 3
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actLink: TAction
      Caption = 'Привязать'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главным'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T028_ID,'
      '  T028_PARENT_ID,'
      '  T028_SHOT_NAME,'
      '  T028_COUNTRY_ID,'
      '  ISSUER_FOUND,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  SUM_VOLUME'
      'FROM V_404_LINK_ISSUERS')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543035355F494401000000000007000000543032
      375F49440100000000000D000000543032375F5345435F545950450100000000
      0007000000543032385F49440100000000000E000000543032385F504152454E
      545F49440100000000000E000000543032385F53484F545F4E414D4501000000
      00000F000000543032385F434F554E5452595F49440100000000000C00000049
      53535545525F464F554E440100000000000C000000543032385F49445F4D4149
      4E01000000000013000000543032385F53484F545F4E414D455F4D41494E0100
      0000000014000000543032385F434F554E5452595F49445F4D41494E01000000
      00000A00000053554D5F564F4C554D450100000000000E000000543035355F4C
      4F4E475F4E414D45010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListISSUER_FOUND: TStringField
      FieldName = 'ISSUER_FOUND'
      Size = 3
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID_MAIN: TStringField
      FieldName = 'T028_COUNTRY_ID_MAIN'
      Size = 255
    end
    object odsListSUM_VOLUME: TFloatField
      FieldName = 'SUM_VOLUME'
      DisplayFormat = '### ### ### ### ##0.000'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  DPB_405_BOSS.Pk_405_ISSUERS.p_set_issuer_link(:T028_ID, :T028_' +
        'PARENT_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F504152454E545F4944040000000000000000000000}
    Left = 280
    Top = 264
  end
end
