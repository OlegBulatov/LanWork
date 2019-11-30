inherited z001_p1_frame: Tz001_p1_frame
  Width = 1004
  Height = 697
  inherited xxxDBGrid: TxxxDBGrid
    Top = 92
    Width = 1004
    Height = 605
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OnDrawDataCell = xxxDBGridDrawDataCell
    AdvSettings.Indexes = <
      item
        FieldName = 'PERIOD'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <
          item
            FirstCol = 6
            LastCol = 8
            Caption = 'В Россию (в тыс. $)'
          end
          item
            FirstCol = 9
            LastCol = 11
            Caption = 'Из России (в тыс. $)'
          end
          item
            FirstCol = 12
            LastCol = 14
            Caption = 'Сальдо (в тыс. $)'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'DUMMY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T093_CAN_LOAD'
        PickList.Strings = ()
        Title.Caption = 'За груз ка'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Отчетный период'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'ТИП Ц.Б.'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_WAS_HAND_CHANGE'
        PickList.Strings = ()
        Title.Caption = 'Ручные изменения'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_GCI_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'ДИТ'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_DPB_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'ДC'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_RAZN_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'Разница'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_GCI_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'ДИТ'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_DPB_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'ДC'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_RAZN_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Разница'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_GCI_SALDO'
        PickList.Strings = ()
        Title.Caption = 'ДИТ'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_DPB_SALDO'
        PickList.Strings = ()
        Title.Caption = 'ДC'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_RAZN_SALDO'
        PickList.Strings = ()
        Title.Caption = 'Разница'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_LOAD_DATE_GCI'
        PickList.Strings = ()
        Title.Caption = 'Дата предоставления отчета (ДИТ)'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T093_LOAD_DATE_DPB'
        PickList.Strings = ()
        Title.Caption = 'Дата предоставления отчета (ДC)'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIOD'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 68
    Width = 1004
    Height = 24
    inherited tlbNav: TToolBar
      Height = 24
    end
    inherited tlbList: TToolBar
      Height = 24
    end
    inherited tlbExcel: TToolBar
      Height = 24
    end
    inherited tlbSeach: TToolBar
      Height = 24
    end
    inherited tlbFilter: TToolBar
      Height = 24
    end
    inherited tlbSelect: TToolBar
      Width = 157
      Height = 24
      ButtonHeight = 22
      ButtonWidth = 74
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Caption = 'Загрузка'
        DropdownMenu = PopupMenu
        ImageIndex = 14
      end
    end
  end
  object paTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 1004
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline BankFilter: TB002_BankFilter
      Left = 7
      Top = 2
      Width = 511
      Height = 23
      inherited lcb: TxxxDBLookupCheckCombo
        Width = 350
      end
    end
    object Button1: TButton
      Left = 529
      Top = 13
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
    inline PeriodFilter: TE002_PeriodFilter
      Left = 7
      Top = 26
      Width = 516
      TabOrder = 2
      inherited Label1: TLabel
        Left = 336
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 163
        Width = 158
      end
      inherited lcb2: TRxDBLookupCombo
        Left = 365
        Width = 145
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 47
    Width = 1004
    inherited Panel1: TPanel
      Left = 977
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '0 as dummy,'
      'do_action, '
      'T002_ID, '
      'PERIOD,'
      'SEC_TYPE,'
      'T093_NUMB_IN_YEA_DESC, '
      'T093_BANK_CODE, '
      'T093_LOAD_DATE_GCI, '
      'T093_LOAD_DATE_DPB, '
      'T093_CAN_LOAD,  '
      'T093_GCI_SUM_IN, '
      'T093_GCI_SUM_OUT, '
      'T093_GCI_SALDO, '
      'T093_DPB_SUM_IN, '
      'T093_DPB_SUM_OUT, '
      'T093_DPB_SALDO,'
      'T093_RAZN_SUM_IN,'
      'T093_RAZN_SUM_OUT,'
      'T093_RAZN_SALDO,'
      'T093_FICT_OPER_DESC,'
      'T093_WAS_HAND_CHANGE,'
      'done'
      'FROM V_405_DIT_REPORTS '
      '')
    QBEDefinition.QBEFieldDefs = {
      040000001600000015000000543039335F4E554D425F494E5F5945415F444553
      430100000000000E000000543039335F42414E4B5F434F444501000000000012
      000000543039335F4C4F41445F444154455F4743490100000000001200000054
      3039335F4C4F41445F444154455F4450420100000000000D000000543039335F
      43414E5F4C4F41440100000000000F000000543039335F4743495F53554D5F49
      4E01000000000010000000543039335F4743495F53554D5F4F55540100000000
      000E000000543039335F4743495F53414C444F0100000000000F000000543039
      335F4450425F53554D5F494E01000000000010000000543039335F4450425F53
      554D5F4F55540100000000000E000000543039335F4450425F53414C444F0100
      0000000010000000543039335F52415A4E5F53554D5F494E0100000000001100
      0000543039335F52415A4E5F53554D5F4F55540100000000000F000000543039
      335F52415A4E5F53414C444F01000000000013000000543039335F464943545F
      4F5045525F4445534301000000000014000000543039335F5741535F48414E44
      5F4348414E474501000000000006000000504552494F44010000000000080000
      005345435F5459504501000000000007000000543030325F4944010000000000
      04000000444F4E4501000000000009000000444F5F414354494F4E0100000000
      000500000044554D4D59010000000000}
    object odsListT093_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T093_NUMB_IN_YEA_DESC'
      Size = 255
    end
    object odsListT093_BANK_CODE: TStringField
      FieldName = 'T093_BANK_CODE'
      Size = 9
    end
    object odsListT093_LOAD_DATE_GCI: TDateTimeField
      FieldName = 'T093_LOAD_DATE_GCI'
    end
    object odsListT093_LOAD_DATE_DPB: TDateTimeField
      FieldName = 'T093_LOAD_DATE_DPB'
    end
    object odsListT093_CAN_LOAD: TStringField
      FieldName = 'T093_CAN_LOAD'
      Size = 1
    end
    object odsListT093_GCI_SUM_IN: TFloatField
      FieldName = 'T093_GCI_SUM_IN'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_GCI_SUM_OUT: TFloatField
      FieldName = 'T093_GCI_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_GCI_SALDO: TFloatField
      FieldName = 'T093_GCI_SALDO'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_DPB_SUM_IN: TFloatField
      FieldName = 'T093_DPB_SUM_IN'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_DPB_SUM_OUT: TFloatField
      FieldName = 'T093_DPB_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_DPB_SALDO: TFloatField
      FieldName = 'T093_DPB_SALDO'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_RAZN_SUM_IN: TFloatField
      FieldName = 'T093_RAZN_SUM_IN'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_RAZN_SUM_OUT: TFloatField
      FieldName = 'T093_RAZN_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_RAZN_SALDO: TFloatField
      FieldName = 'T093_RAZN_SALDO'
      DisplayFormat = '### ### ### ### ##0.0'
    end
    object odsListT093_FICT_OPER_DESC: TStringField
      FieldName = 'T093_FICT_OPER_DESC'
      Size = 1
    end
    object odsListT093_WAS_HAND_CHANGE: TStringField
      FieldName = 'T093_WAS_HAND_CHANGE'
      Size = 3
    end
    object odsListPERIOD: TFloatField
      FieldName = 'PERIOD'
    end
    object odsListSEC_TYPE: TStringField
      FieldName = 'SEC_TYPE'
      Size = 255
    end
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
    end
    object odsListDONE: TFloatField
      FieldName = 'DONE'
    end
    object odsListDO_ACTION: TFloatField
      FieldName = 'DO_ACTION'
    end
    object odsListDUMMY: TFloatField
      FieldName = 'DUMMY'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 72
    Top = 175
    object mLoad: TMenuItem [0]
      Caption = 'Загрузка'
      object mLoad1: TMenuItem
        Caption = 'Текущий'
      end
      object mLoad2: TMenuItem
        Caption = 'Все помеченные'
      end
    end
    inherited mi01: TMenuItem
      Visible = False
    end
    inherited mi03: TMenuItem
      Visible = False
    end
    inherited miExcel: TMenuItem
      Enabled = False
      Visible = False
    end
    inherited mi05: TMenuItem
      Enabled = False
      Visible = False
    end
    inherited mi06: TMenuItem
      Enabled = False
      Visible = False
    end
  end
  object oqLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      #9'pk_405_z_show.p_check_bank( :i_YN, :i_002 );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A495F594E050000000000000000000000060000
      003A495F303032040000000000000000000000}
    Left = 424
    Top = 176
  end
end
