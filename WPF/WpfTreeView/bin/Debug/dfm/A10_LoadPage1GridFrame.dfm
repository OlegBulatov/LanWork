inherited A10_LoadPage1Grid: TA10_LoadPage1Grid
  Width = 876
  Height = 516
  inherited xxxDBGrid: TxxxDBGrid
    Width = 876
    Height = 447
    AdvSettings.Indexes = <
      item
        FieldName = 'GCI_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T055_ID'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'F404_ID'
        PickList.Strings = ()
        Title.Caption = 'ID ДИТ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NPART'
        PickList.Strings = ()
        Title.Caption = 'Часть Дит'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код Банка'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата отчета в Дит'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата отчета в 404'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORT_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип отчёта'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORT_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название Типа Отчета'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHECKED'
        PickList.Strings = ()
        Title.Caption = 'Выбран'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIOD'
        PickList.Strings = ()
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIX'
        PickList.Strings = ()
        Title.Caption = 'Блокировка'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 876
    inherited tlbSelect: TToolBar
      Width = 85
      ButtonHeight = 22
      ButtonWidth = 27
      Visible = True
      inherited tbSelect: TToolButton
        AutoSize = False
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 35
        Top = 0
        Action = actSelectAll
      end
      object ToolButton2: TToolButton
        Left = 62
        Top = 0
        Action = actUnselectAll
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 493
    Width = 876
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
    Width = 876
    inherited Panel1: TPanel
      Left = 849
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 52
    Top = 172
    object actSelectAll: TAction
      Hint = 'Выбрать все корректирующие отчеты'
      ImageIndex = 28
    end
    object actUnselectAll: TAction
      Hint = 'Снять отметки со всех корректирующих отчетов'
      ImageIndex = 29
    end
  end
  inherited dsList: TDataSource
    Left = 249
    Top = 120
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT F404_ID,'
      #9'npart,'
      '       T055_ID,'
      #9'PERIOD,'
      '       GCI_BANK_CODE,'
      '       DPB_BANK_NAME,'
      '       GCI_DATE,'
      '       DPB_DATE,'
      '       REPORT_TYPE,'
      '       REPORT_TYPE_NAME,'
      '       IS_CHECKED,'
      ' '#9'FIX, '
      #9't002_ID,'
      #9'part'
      '  FROM V_404_LOAD_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543035355F49440100000000000D000000474349
      5F42414E4B5F434F44450100000000000D0000004450425F42414E4B5F4E414D
      45010000000000080000004743495F4441544501000000000008000000445042
      5F444154450100000000000B0000005245504F52545F54595045010000000000
      100000005245504F52545F545950455F4E414D450100000000000A0000004953
      5F434845434B454401000000000007000000463430345F494401000000000006
      000000504552494F4401000000000007000000543030325F4944010000000000
      0400000050415254010000000000050000004E50415254010000000000030000
      00464958010000000000}
    Top = 118
    object odsListF404_ID: TIntegerField
      FieldName = 'F404_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListGCI_BANK_CODE: TStringField
      FieldName = 'GCI_BANK_CODE'
      Size = 9
    end
    object odsListDPB_BANK_NAME: TStringField
      FieldName = 'DPB_BANK_NAME'
      Size = 45
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
    object odsListPERIOD: TStringField
      FieldName = 'PERIOD'
      Size = 255
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
    end
    object odsListPART: TIntegerField
      FieldName = 'PART'
    end
    object odsListNPART: TFloatField
      FieldName = 'NPART'
    end
    object odsListFIX: TIntegerField
      FieldName = 'FIX'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 44
    Top = 107
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_check_all_reports(:T055_ID_S, :T055_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
    Left = 287
    Top = 121
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_check_report(:F404_ID,:PART);'
      'end;')
    Variables.Data = {
      0300000002000000080000003A463430345F4944040000000000000000000000
      050000003A50415254030000000000000000000000}
    Left = 287
    Top = 165
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_uncheck_all_reports(:T055_ID_S, :T055_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
    Left = 287
    Top = 205
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 185
    Top = 187
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_get_counts(:T055_ID_S,'
      '                           :T055_ID_E,'
      #9#9#9#9':NPART,'
      '                           :N_ALL,'
      '                           :R_ALL, '
      '                           :N,'
      '                           :S);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000007000000060000003A4E5F414C4C0400000008000000000000000020
      894000000000060000003A525F414C4C04000000080000000000000000000000
      00000000020000003A4E04000000080000000000000000208940000000000200
      00003A5304000000080000000000000000000000000000000A0000003A543035
      355F49445F530400000000000000000000000A0000003A543035355F49445F45
      040000000000000000000000060000003A4E5041525404000000000000000000
      0000}
    Left = 332
    Top = 180
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '--  Pk_404_Load.p_before_load;'
      'COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Left = 324
    Top = 124
  end
  object oqFix: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_404_Load.p_check_fix(:T002_ID, :part);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030325F4944040000000000000000000000
      050000003A50415254040000000000000000000000}
    Left = 408
    Top = 120
  end
end
