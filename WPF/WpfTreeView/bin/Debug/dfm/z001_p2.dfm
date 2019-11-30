inherited z001_p2_frame: Tz001_p2_frame
  Width = 443
  Height = 273
  Align = alClient
  inherited xxxDBGrid: TxxxDBGrid
    Top = 77
    Width = 443
    Height = 196
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.Indexes = <
      item
        FieldName = 'PERIOD'
        SortType = stDesc
      end
      item
        FieldName = 'SEC_TYPE'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <
          item
            FirstCol = 5
            LastCol = 7
            Caption = 'В Россию (в тыс. $)'
          end
          item
            FirstCol = 8
            LastCol = 10
            Caption = 'Из России (в тыс. $)'
          end
          item
            FirstCol = 11
            LastCol = 13
            Caption = 'Сальдо (в тыс. $)'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T093_CAN_LOAD'
        PickList.Strings = ()
        Title.Caption = 'За груз ка'
        Width = 32
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
        Width = 60
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
    Top = 53
    Width = 443
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
        ImageIndex = 14
        PopupMenu = PopupMenu
      end
    end
  end
  object paFilters: TPanel [2]
    Left = 0
    Top = 0
    Width = 443
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object cb1: TCheckBox
      Left = 8
      Top = 8
      Width = 233
      Height = 17
      Caption = 'Скрыть данные без изменениий'
      TabOrder = 0
      OnClick = cb1Click
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 32
    Width = 443
    inherited Panel1: TPanel
      Left = 477
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'do_action,  '
      'PERIOD,'
      'T002_ID,'
      'SEC_ID,'
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
      'T093_WAS_HAND_CHANGE'
      'FROM  V_405_DIT_REPORTS_SEC'
      'WHERE T002_ID =:REPORT'
      'AND   T093_CAN_LOAD IN ('#39'Y'#39', '#39'N'#39', :NOT_TO_LOAD)')
    Variables.Data = {
      0300000002000000070000003A5245504F52540400000000000000000000000C
      0000003A4E4F545F544F5F4C4F4144050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001500000015000000543039335F4E554D425F494E5F5945415F444553
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
      060000005345435F494401000000000009000000444F5F414354494F4E010000
      000000}
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
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_GCI_SALDO: TFloatField
      FieldName = 'T093_GCI_SALDO'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_GCI_SUM_OUT: TFloatField
      FieldName = 'T093_GCI_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_DPB_SUM_IN: TFloatField
      FieldName = 'T093_DPB_SUM_IN'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_DPB_SUM_OUT: TFloatField
      FieldName = 'T093_DPB_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_DPB_SALDO: TFloatField
      FieldName = 'T093_DPB_SALDO'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_RAZN_SUM_IN: TFloatField
      FieldName = 'T093_RAZN_SUM_IN'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_RAZN_SUM_OUT: TFloatField
      FieldName = 'T093_RAZN_SUM_OUT'
      DisplayFormat = '### ### ### ### ##0.#'
    end
    object odsListT093_RAZN_SALDO: TFloatField
      FieldName = 'T093_RAZN_SALDO'
      DisplayFormat = '### ### ### ### ##0.#'
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
    object odsListSEC_ID: TFloatField
      FieldName = 'SEC_ID'
    end
    object odsListDO_ACTION: TFloatField
      FieldName = 'DO_ACTION'
    end
  end
  inherited PopupMenu: TPopupMenu
    object mLoadSEC: TMenuItem [0]
      Caption = 'Загрузить'
      object mLoadSEC1: TMenuItem
        Caption = 'Текущую'
      end
      object mLoadSEC2: TMenuItem
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
      inherited N8: TMenuItem
        Enabled = False
        Visible = False
      end
    end
  end
  object oqLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      #9'pk_405_z_show.p_check_SEC_TYPE( :i_YN, :i_002, :i_SEC_id );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000050000003A495F594E050000000000000000000000060000
      003A495F303032040000000000000000000000090000003A495F5345435F4944
      040000000000000000000000}
    Left = 384
    Top = 160
  end
end
