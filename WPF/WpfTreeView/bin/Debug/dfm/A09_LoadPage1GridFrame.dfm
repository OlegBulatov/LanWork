inherited A09_LoadPage1Grid: TA09_LoadPage1Grid
  Width = 766
  inherited xxxDBGrid: TxxxDBGrid
    Width = 766
    Height = 393
    AdvSettings.Indexes = <
      item
        FieldName = 'GCI_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'PERIOD'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 11
            Caption = 'Расхождение в данных'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'PERIOD'
        PickList.Strings = ()
        Title.Caption = 'Отчет за период'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
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
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF1'
        PickList.Strings = ()
        Title.Caption = 'Раздел 1'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF2'
        PickList.Strings = ()
        Title.Caption = 'Раздел 2'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF3'
        PickList.Strings = ()
        Title.Caption = 'Раздел 3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF4'
        PickList.Strings = ()
        Title.Caption = 'Раздел 4'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF6'
        PickList.Strings = ()
        Title.Caption = 'Раздел 6'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F410_ID'
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
    Width = 766
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 85
      ButtonHeight = 22
      ButtonWidth = 27
      Visible = True
      inherited tbSelect: TToolButton
        Caption = ''
        ImageIndex = 12
        Visible = False
      end
      object tb_Select: TToolButton
        Left = 35
        Top = 0
        Hint = 'Выбрать все корректирующие отчеты'
        AutoSize = True
        ImageIndex = 28
      end
      object tb_Unselect: TToolButton
        Left = 62
        Top = 0
        Hint = 'Снять отметки со всех корректирующих отчетов'
        AutoSize = True
        ImageIndex = 29
      end
    end
    object tlbDetails: TToolBar
      Left = 586
      Top = 0
      Width = 104
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 95
      Caption = 'tlbDetails'
      EdgeBorders = []
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 6
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 9
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object tbDetails: TToolButton
        Left = 9
        Top = 0
        Action = actDetails
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 418
    Width = 766
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
    object actSelectAll: TAction
      Hint = 'Выбрать все корректирующие отчеты'
      ImageIndex = 28
    end
    object actUnselectAll: TAction
      Hint = 'Снять отметки со всех корректирующих отчетов'
      ImageIndex = 29
    end
    object actDetails: TAction
      Caption = 'Детализация'
      Hint = 'Детализация расхождений в отчетах'
      ImageIndex = 11
      OnExecute = actDetailsExecute
      OnUpdate = actDetailsUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  F410_ID,'
      '  T055_ID,'
      '  PERIOD,'
      '  GCI_BANK_CODE,'
      '  DPB_BANK_NAME,'
      '  GCI_DATE,'
      '  DPB_DATE,'
      '  REPORT_TYPE,'
      '  REPORT_TYPE_NAME,'
      '  IS_CHECKED,'
      '  DIFF1,'
      '  DIFF2,'
      '  DIFF3,'
      '  DIFF4,'
      '  DIFF6'
      'FROM V_410_LOAD_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543035355F494401000000000006000000504552
      494F440100000000000D0000004743495F42414E4B5F434F4445010000000000
      0D0000004450425F42414E4B5F4E414D45010000000000080000004743495F44
      415445010000000000080000004450425F444154450100000000000B00000052
      45504F52545F54595045010000000000100000005245504F52545F545950455F
      4E414D450100000000000A00000049535F434845434B45440100000000000500
      0000444946463101000000000005000000444946463201000000000005000000
      4449464633010000000000050000004449464634010000000000050000004449
      46463601000000000007000000463431305F4944010000000000}
    object odsListF410_ID: TIntegerField
      FieldName = 'F410_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListPERIOD: TStringField
      FieldName = 'PERIOD'
      Size = 255
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
    object odsListDIFF1: TFloatField
      FieldName = 'DIFF1'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListDIFF2: TFloatField
      FieldName = 'DIFF2'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListDIFF3: TFloatField
      FieldName = 'DIFF3'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListDIFF4: TFloatField
      FieldName = 'DIFF4'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListDIFF6: TFloatField
      FieldName = 'DIFF6'
      DisplayFormat = '### ### ### ##0.0'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_check_all_reports(:T055_ID_S, :T055_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_check_report(:F410_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A463431305F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_uncheck_all_reports(:T055_ID_S, :T055_ID_E);'
      'end;')
    Variables.Data = {
      03000000020000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F45040000000000000000000000}
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_get_counts(:T055_ID_S,'
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
    Left = 280
    Top = 248
  end
end
