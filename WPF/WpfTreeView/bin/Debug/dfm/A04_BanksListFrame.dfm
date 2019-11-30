inherited A04_BanksList: TA04_BanksList
  Width = 794
  inherited xxxDBGrid: TxxxDBGrid
    Top = 95
    Width = 794
    Height = 308
    AdvSettings.Indexes = <
      item
        FieldName = 'REGN'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_P'
        PickList.Strings = ()
        Title.Caption = 'Город'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADR'
        PickList.Strings = ()
        Title.Caption = 'Адрес'
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IS_NKO'
        PickList.Strings = ()
        Title.Caption = 'НКО'
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATE_START'
        PickList.Strings = ()
        Title.Caption = 'Дата выдачи лицензии'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATE_END_NULL'
        PickList.Strings = ()
        Title.Caption = 'Дата отзыва лицензии'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KP'
        PickList.Strings = ()
        Title.Caption = 'ТУ'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование ТУ'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T057_CONTACTS'
        PickList.Strings = ()
        Title.Caption = 'Контактная информация'
        Width = 300
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 794
    inherited tlbSelect: TToolBar
      ButtonWidth = 25
    end
  end
  inline Filters: TA04_BanksListFilters [2]
    Width = 794
    Align = alTop
    TabOrder = 3
    inherited GroupBox1: TGroupBox
      Width = 794
      inherited Panel1: TPanel
        Width = 195
        inherited Button1: TButton
          Action = actRefresh
        end
      end
    end
    inherited actList: TActionList
      Left = 728
      Top = 12
    end
  end
  inherited fm031_Filter1: Tfm031_Filter [3]
    Top = 49
    Width = 794
    inherited Panel1: TPanel
      Left = 767
    end
  end
  inherited actList: TActionList [4]
    inherited actEdit: TAction
      Visible = True
    end
  end
  inherited dsList: TDataSource [5]
  end
  inherited odsList: TOracleDataSet [6]
    SQL.Strings = (
      'select '
      '  REGN,'
      '  NAME,'
      '  NAME_P,'
      '  ADR,'
      '  DATE_START,'
      '  DATE_END_NULL,'
      '  KP,'
      '  KP_ID, -- для фильтра'
      '  KP_NAME,'
      '  DECODE(IS_NKO, 0, NULL, '#39'+'#39') IS_NKO,'
      '  T057_CONTACTS,'
      '  BNK_CODE  -- для рефреша нужно цифровое поле'
      'from V_410_BANKS')
    QBEDefinition.QBEFieldDefs = {
      040000000C000000040000005245474E010000000000040000004E414D450100
      00000000060000004E414D455F50010000000000030000004144520100000000
      000A000000444154455F53544152540100000000000D000000444154455F454E
      445F4E554C4C010000000000070000004B505F4E414D45010000000000020000
      004B50010000000000050000004B505F49440100000000000D00000054303537
      5F434F4E544143545301000000000008000000424E4B5F434F44450100000000
      000600000049535F4E4B4F010000000000}
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 45
    end
    object odsListNAME_P: TStringField
      FieldName = 'NAME_P'
      Size = 30
    end
    object odsListADR: TStringField
      FieldName = 'ADR'
      Size = 30
    end
    object odsListDATE_START: TDateTimeField
      FieldName = 'DATE_START'
    end
    object odsListDATE_END_NULL: TDateTimeField
      FieldName = 'DATE_END_NULL'
    end
    object odsListKP: TStringField
      FieldName = 'KP'
      Size = 2
    end
    object odsListKP_NAME: TStringField
      FieldName = 'KP_NAME'
      Size = 250
    end
    object odsListT057_CONTACTS: TStringField
      FieldName = 'T057_CONTACTS'
      Size = 255
    end
    object odsListBNK_CODE: TFloatField
      FieldName = 'BNK_CODE'
    end
    object odsListIS_NKO: TStringField
      FieldName = 'IS_NKO'
      Size = 1
    end
    object odsListKP_ID: TStringField
      FieldName = 'KP_ID'
      Size = 2
    end
  end
  inherited PopupMenu: TPopupMenu [7]
  end
  inherited oqAdd: TOracleQuery [8]
  end
  inherited oqUpdate: TOracleQuery [9]
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankEdit(:REGN, :T057_CONTACTS);'
      'end;')
    Variables.Data = {
      0300000002000000050000003A5245474E0500000000000000000000000E0000
      003A543035375F434F4E5441435453050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery [10]
  end
  inherited odsFetchRecord: TOracleDataSet [11]
  end
end
