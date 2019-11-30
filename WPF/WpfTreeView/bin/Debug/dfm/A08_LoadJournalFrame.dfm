inherited A08_LoadJournal: TA08_LoadJournal
  Height = 623
  inherited xxxDBGrid: TxxxDBGrid
    Top = 147
    Height = 476
    AdvSettings.Indexes = <
      item
        FieldName = 'T019_LOAD_START'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T019_REPORT_PERIOD'
        PickList.Strings = ()
        Title.Caption = 'Отч. период'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_LOAD_START'
        PickList.Strings = ()
        Title.Caption = 'Время начала'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_LOAD_END'
        PickList.Strings = ()
        Title.Caption = 'Время окончания'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_ERROR_MSG'
        PickList.Strings = ()
        Title.Caption = 'Результат'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T019_REPORT_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип отчета'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 122
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
  end
  inline Filters: TA08_LoadJournalFilter [2]
    Width = 635
    Align = alTop
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      Width = 635
      inherited Panel1: TPanel
        Width = 108
        inherited Button1: TButton
          Action = actRefresh
        end
      end
      inherited paFilterItems: TPanel
        inherited BankFilter: TA08_BankFilter
          inherited lcb: TxxxDBLookupCheckCombo
            ParentFont = False
          end
        end
        inherited PeriodFilter: TA10_PeriodFilter
          inherited odsList2: TOracleDataSet
            SQL.Strings = (
              'select T055_ID,'
              '       PERIOD_TO'
              'from   V_404_DATA_PERIODS'
              'where  T055_ID >= :PERIOD_FROM')
          end
        end
      end
    end
    inherited actList: TActionList
      Left = 556
      Top = 84
    end
  end
  inherited actList: TActionList [3]
    Left = 28
    Top = 220
  end
  inherited dsList: TDataSource [4]
    Left = 229
    Top = 207
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'select '
      '  T018_ID,'
      '  T018_START_DATE,'
      '  T018_END_DATE,'
      '  T018_COMMENT,'
      '  T018_RESULT,'
      '  T019_ID,'
      '  T019_BANK_CODE,'
      '  T019_BANK_NAME,'
      '  T055_ID,'
      '  T019_REPORT_DATE,'
      '  T019_REPORT_PERIOD,'
      '  T019_REPORT_TYPE,'
      '  T019_REPORT_TYPE_NAME,'
      '  T019_LOAD_START,'
      '  T019_LOAD_END,'
      '  T019_ERROR_MSG,'
      '  T019_STATE'
      'from V_404_LOAD_LOGS')
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543031385F49440100000000000F000000543031
      385F53544152545F444154450100000000000D000000543031385F454E445F44
      4154450100000000000C000000543031385F434F4D4D454E540100000000000B
      000000543031385F524553554C5401000000000007000000543031395F494401
      00000000000E000000543031395F42414E4B5F434F4445010000000000070000
      00543035355F494401000000000010000000543031395F5245504F52545F4441
      544501000000000010000000543031395F5245504F52545F5459504501000000
      00000F000000543031395F4C4F41445F53544152540100000000000D00000054
      3031395F4C4F41445F454E440100000000000E000000543031395F4552524F52
      5F4D53470100000000000A000000543031395F53544154450100000000000E00
      0000543031395F42414E4B5F4E414D4501000000000015000000543031395F52
      45504F52545F545950455F4E414D4501000000000012000000543031395F5245
      504F52545F504552494F44010000000000}
    Left = 177
    Top = 209
    object odsListT018_ID: TFloatField
      FieldName = 'T018_ID'
    end
    object odsListT018_START_DATE: TDateTimeField
      FieldName = 'T018_START_DATE'
    end
    object odsListT018_END_DATE: TDateTimeField
      FieldName = 'T018_END_DATE'
    end
    object odsListT018_COMMENT: TStringField
      FieldName = 'T018_COMMENT'
      Size = 1000
    end
    object odsListT018_RESULT: TStringField
      FieldName = 'T018_RESULT'
      Size = 1
    end
    object odsListT019_ID: TFloatField
      FieldName = 'T019_ID'
    end
    object odsListT019_BANK_CODE: TStringField
      FieldName = 'T019_BANK_CODE'
      Size = 9
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT019_BANK_NAME: TStringField
      FieldName = 'T019_BANK_NAME'
      Size = 45
    end
    object odsListT019_REPORT_DATE: TDateTimeField
      FieldName = 'T019_REPORT_DATE'
    end
    object odsListT019_REPORT_PERIOD: TStringField
      FieldName = 'T019_REPORT_PERIOD'
      Size = 54
    end
    object odsListT019_REPORT_TYPE: TStringField
      FieldName = 'T019_REPORT_TYPE'
      Size = 1
    end
    object odsListT019_REPORT_TYPE_NAME: TStringField
      FieldName = 'T019_REPORT_TYPE_NAME'
      Size = 22
    end
    object odsListT019_LOAD_START: TDateTimeField
      FieldName = 'T019_LOAD_START'
    end
    object odsListT019_LOAD_END: TDateTimeField
      FieldName = 'T019_LOAD_END'
    end
    object odsListT019_ERROR_MSG: TStringField
      FieldName = 'T019_ERROR_MSG'
      Size = 255
    end
    object odsListT019_STATE: TStringField
      FieldName = 'T019_STATE'
      Size = 1
    end
  end
  inherited PopupMenu: TPopupMenu [6]
    Left = 32
    Top = 187
  end
  inherited oqAdd: TOracleQuery [7]
    Left = 287
    Top = 208
  end
  inherited oqUpdate: TOracleQuery [8]
    Left = 283
    Top = 244
  end
  inherited oqDelete: TOracleQuery [9]
    Left = 283
    Top = 300
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 177
    Top = 246
  end
end
