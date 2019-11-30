inherited B000_LoadPage1Grid: TB000_LoadPage1Grid
  Width = 706
  inherited xxxDBGrid: TxxxDBGrid
    Width = 706
    Height = 334
    Columns = <
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отчет за период'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата ДИТ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата ДС'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORT_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип отчета'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHECKED'
        PickList.Strings = ()
        Title.Caption = 'Загрузить'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F711_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        PickList.Strings = ()
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 706
    inherited tlbNav: TToolBar
      inherited tbSeparator01: TToolButton
        Visible = False
      end
    end
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
    end
    inherited tlbSelect: TToolBar
      Left = 501
      Width = 77
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 35
        Top = 0
        Action = actCheckAll
      end
      object ToolButton3: TToolButton
        Left = 58
        Top = 0
        Action = actUncheckAll
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 380
    Width = 706
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object lCountN: TRxLabel
      Left = 163
      Top = 6
      Width = 38
      Height = 13
      Caption = '000000'
    end
    object lCountR: TRxLabel
      Left = 538
      Top = 6
      Width = 68
      Height = 13
      Caption = '0000 из 0000'
    end
    object cbLoadN: TCheckBox
      Left = 12
      Top = 4
      Width = 150
      Height = 17
      Caption = 'Загружать новые отчеты'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbLoadNClick
    end
    object cbLoadR: TCheckBox
      Left = 324
      Top = 4
      Width = 213
      Height = 17
      Caption = 'Загружать корректировочные отчеты'
      TabOrder = 1
      OnClick = cbLoadRClick
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 706
    inherited Panel1: TPanel
      Left = 679
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actCheckAll: TAction
      Hint = 'Выбрать все корректирующие отчеты'
      ImageIndex = 28
      OnExecute = actCheckAllExecute
      OnUpdate = actCheckAllUpdate
    end
    object actUncheckAll: TAction
      Hint = 'Снять отметки со всех корректирующих отчетов'
      ImageIndex = 29
      OnExecute = actUncheckAllExecute
      OnUpdate = actUncheckAllUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  F711_ID,'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  BANK_CODE,'
      '  BANK_NAME,'
      '  GCI_DATE,'
      '  DPB_DATE,'
      '  REPORT_TYPE,'
      '  REPORT_TYPE_NAME,'
      '  IS_CHECKED'
      'FROM V_405_711_LOAD_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000A00000007000000463731315F494401000000000007000000543035
      355F49440100000000000E000000543035355F4C4F4E475F4E414D4501000000
      00000900000042414E4B5F434F44450100000000000900000042414E4B5F4E41
      4D45010000000000080000004743495F44415445010000000000080000004450
      425F444154450100000000000B0000005245504F52545F545950450100000000
      00100000005245504F52545F545950455F4E414D450100000000000A00000049
      535F434845434B4544010000000000}
    object odsListF711_ID: TFloatField
      FieldName = 'F711_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListBANK_CODE: TStringField
      FieldName = 'BANK_CODE'
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
    object odsListGCI_DATE: TDateTimeField
      FieldName = 'GCI_DATE'
    end
    object odsListDPB_DATE: TDateTimeField
      FieldName = 'DPB_DATE'
    end
    object odsListREPORT_TYPE: TStringField
      FieldName = 'REPORT_TYPE'
      Size = 1
    end
    object odsListREPORT_TYPE_NAME: TStringField
      FieldName = 'REPORT_TYPE_NAME'
      Size = 22
    end
    object odsListIS_CHECKED: TStringField
      FieldName = 'IS_CHECKED'
      Size = 1
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_Load_711.p_check_all_711_reports(:T055_ID_S, :T055_ID_E' +
        ');'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_711.p_check_711_report(:F711_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A463731315F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_Load_711.p_uncheck_all_711_reports(:T055_ID_S, :T055_ID' +
        '_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_711.p_get_711_counts(:T055_ID_S,'
      '                               :T055_ID_E,'
      '                               :N_ALL,'
      '                               :R_ALL, '
      '                               :N,'
      '                               :S);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000006000000060000003A4E5F414C4C0400000000000000000000000600
      00003A525F414C4C040000000000000000000000020000003A4E040000000000
      000000000000020000003A530400000000000000000000000A0000003A543035
      355F49445F530400000000000000000000000A0000003A543035355F49445F45
      040000000000000000000000}
    Left = 280
    Top = 248
  end
end
