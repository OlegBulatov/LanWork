inherited A10_LoadPage1_701Grid: TA10_LoadPage1_701Grid
  Width = 710
  Height = 470
  inherited xxxDBGrid: TxxxDBGrid
    Width = 710
    Height = 422
    AdvSettings.Indexes = <
      item
        FieldName = 'GCI_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T055_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 8
            Caption = 'Расхождение в данных'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'PERIOD'
        PickList.Strings = ()
        Title.Caption = 'Отчет за период'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата ЦИТ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата ДПБ'
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF_IN'
        PickList.Strings = ()
        Title.Caption = 'В Россию'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF_OUT'
        PickList.Strings = ()
        Title.Caption = 'Из России'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 710
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
    Top = 447
    Width = 710
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 20
    Top = 308
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
    Top = 264
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  F701_ID,'
      '  T055_ID,'
      '  PERIOD,'
      '  GCI_BANK_CODE,'
      '  DPB_BANK_NAME,'
      '  GCI_DATE,'
      '  DPB_DATE,'
      '  REPORT_TYPE,'
      '  REPORT_TYPE_NAME,'
      '  IS_CHECKED,'
      '  DIFF_OUT,'
      '  DIFF_IN'
      'FROM DPB_701_BOSS.V_701_LOAD_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543035355F494401000000000006000000504552
      494F440100000000000D0000004743495F42414E4B5F434F4445010000000000
      0D0000004450425F42414E4B5F4E414D45010000000000080000004743495F44
      415445010000000000080000004450425F444154450100000000000B00000052
      45504F52545F54595045010000000000100000005245504F52545F545950455F
      4E414D450100000000000A00000049535F434845434B45440100000000000800
      0000444946465F4F555401000000000007000000444946465F494E0100000000
      0007000000463730315F4944010000000000}
    Top = 262
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListPERIOD: TStringField
      FieldName = 'PERIOD'
      Size = 255
    end
    object odsListGCI_BANK_CODE: TStringField
      FieldName = 'GCI_BANK_CODE'
      Size = 10
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
    object odsListDIFF_OUT: TFloatField
      FieldName = 'DIFF_OUT'
    end
    object odsListDIFF_IN: TFloatField
      FieldName = 'DIFF_IN'
    end
    object odsListF701_ID: TFloatField
      FieldName = 'F701_ID'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 12
    Top = 259
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  DPB_701_BOSS.Pk_701_Load.p_check_all_reports(:T055_ID_S, :T055' +
        '_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
    Top = 265
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  DPB_701_BOSS.Pk_701_Load.p_check_report(:F701_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A463730315F4944040000000000000000000000}
    Top = 301
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  DPB_701_BOSS.Pk_701_Load.p_uncheck_all_reports(:T055_ID_S, :T0' +
        '55_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
    Top = 341
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 323
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  DPB_701_BOSS.Pk_701_Load.p_get_counts(:T055_ID_S,'
      '                           :T055_ID_E,'
      '                           :N_ALL,'
      '                           :R_ALL, '
      '                           :N,'
      '                           :S);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000006000000060000003A4E5F414C4C0400000000000000000000000600
      00003A525F414C4C040000000000000000000000020000003A4E040000000000
      000000000000020000003A530400000000000000000000000A0000003A543035
      355F49445F530400000000000000000000000A0000003A543035355F49445F45
      040000000000000000000000}
    Left = 332
    Top = 340
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  DPB_701_BOSS.Pk_701_Load.p_before_load;'
      'end;')
    Session = dmMain.OracleSession
    Left = 332
    Top = 268
  end
end
