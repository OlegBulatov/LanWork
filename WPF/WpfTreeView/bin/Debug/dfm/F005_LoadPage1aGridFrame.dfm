inherited F005_LoadPage1aGrid: TF005_LoadPage1aGrid
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
        FieldName = 'REPORTER_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН отч. орг.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORTER_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название отч. орг.'
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
        FieldName = 'PACKAGE_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
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
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 81
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
      '  F415_ID,'
      '  PACKAGE_ID,'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  REPORTER_INN,'
      '  REPORTER_SHORT_NAME,'
      '  GCI_DATE,'
      '  DPB_DATE,'
      '  REPORT_TYPE,'
      '  REPORT_TYPE_NAME,'
      '  IS_CHECKED'
      'FROM V_405_415_LOAD_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000B00000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000080000004743495F44415445010000
      000000080000004450425F444154450100000000000B0000005245504F52545F
      54595045010000000000100000005245504F52545F545950455F4E414D450100
      000000000A00000049535F434845434B45440100000000000C0000005245504F
      525445525F494E4E010000000000130000005245504F525445525F53484F5254
      5F4E414D450100000000000A0000005041434B4147455F494401000000000007
      000000463431355F4944010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
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
    object odsListREPORTER_INN: TStringField
      FieldName = 'REPORTER_INN'
      Size = 255
    end
    object odsListREPORTER_SHORT_NAME: TStringField
      FieldName = 'REPORTER_SHORT_NAME'
      Size = 255
    end
    object odsListPACKAGE_ID: TStringField
      FieldName = 'PACKAGE_ID'
      Size = 100
    end
    object odsListF415_ID: TFloatField
      FieldName = 'F415_ID'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_415_data.p_check_all_415_reports(:T055_ID_S, :T055_ID_E' +
        ');'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_data.p_check_415_report(:PACKAGE_ID);'
      'end;')
    Variables.Data = {
      03000000010000000B0000003A5041434B4147455F4944050000000000000000
      000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_415_data.p_uncheck_all_415_reports(:T055_ID_S, :T055_ID' +
        '_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_data.p_get_415_counts(:T055_ID_S,'
      '                                   :T055_ID_E,'
      '                                   :N_ALL,'
      '                                   :R_ALL, '
      '                                   :N,'
      '                                  :S);'
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
