inherited A03_EmissionLink: TA03_EmissionLink
  Width = 875
  Height = 563
  inherited xxxDBGrid: TxxxDBGrid
    Top = 104
    Width = 875
    Height = 459
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
            LastCol = 5
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 9
            Caption = 'Связана с эмиссией'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Эмиссия связана'
        Width = 54
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
        Title.Caption = 'Код ц.б.'
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
        Title.Caption = 'Код ц.б.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
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
        Width = 128
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 79
    Width = 875
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
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
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 875
    Height = 79
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    inline PeriodFilter: TA10_PeriodFilter
      Left = 8
      Top = 4
      Height = 23
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
      Width = 511
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 350
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'SEC_TYPE'
      end
    end
    inline EmissionFilter: TA03_IssuerFilter
      Left = 8
      Top = 55
      TabOrder = 2
      inherited lbCaption: TLabel
        Width = 237
        Caption = 'Показывать только нераспознанные эмиссии'
      end
    end
    object Button1: TButton
      Left = 527
      Top = 2
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
      Hint = 'Привязать эмиссию'
      ImageIndex = 28
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Убрать связь эмиссии'
      ImageIndex = 29
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
    object actMakeMain: TAction
      Caption = 'Сделать главной'
      Hint = 'Сделать эмиссию главной'
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
  end
  inherited dsList: TDataSource
    Left = 129
    Top = 223
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  T030_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T028_SHOT_NAME,'
      '  T028_COUNTRY_ID,'
      '  IS_LINKED,'
      '  T030_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  SUM_VOLUME'
      'from V_404_LINK_EMISSION')
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D4501000000000007000000543033305F494401000000
      00000D000000543032375F5345435F545950450100000000000D000000543032
      365F5345435F5245474E0100000000000E000000543032385F53484F545F4E41
      4D450100000000000F000000543032385F434F554E5452595F49440100000000
      000900000049535F4C494E4B45440100000000000C000000543033305F49445F
      4D41494E01000000000012000000543032375F5345435F545950455F4D41494E
      01000000000012000000543032365F5345435F5245474E5F4D41494E01000000
      000013000000543032385F53484F545F4E414D455F4D41494E01000000000014
      000000543032385F434F554E5452595F49445F4D41494E0100000000000A0000
      0053554D5F564F4C554D45010000000000}
    Left = 113
    Top = 301
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
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
  end
  inherited oqAdd: TOracleQuery
    Left = 39
    Top = 424
  end
  inherited oqUpdate: TOracleQuery
    Left = 23
    Top = 364
  end
  inherited oqDelete: TOracleQuery
    Left = 31
    Top = 308
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 25
    Top = 250
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      ' pk_404_handcorrect.ps_set_emission_link'
      ' ('
      '    :pi_ID,'
      '    :pi_PARENT_ID'
      ' );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000060000003A50495F49440400000000000000000000000D00
      00003A50495F504152454E545F4944040000000000000000000000}
    Left = 272
    Top = 248
  end
  object oqUnLink: TOracleQuery
    SQL.Strings = (
      'begin'
      ' pk_404_handcorrect.ps_set_emission_unlink'
      ' ('
      '    :pi_ID'
      '  );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000060000003A50495F4944040000000000000000000000}
    Left = 392
    Top = 248
  end
  object oqMain: TOracleQuery
    SQL.Strings = (
      'begin'
      ' pk_404_handcorrect.ps_set_emission_main'
      ' ('
      '    :pi_ID'
      '  );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000060000003A50495F4944040000000000000000000000}
    Left = 512
    Top = 208
  end
end
