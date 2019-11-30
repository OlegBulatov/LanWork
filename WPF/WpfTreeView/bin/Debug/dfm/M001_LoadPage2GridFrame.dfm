inherited M001_LoadPage2Grid: TM001_LoadPage2Grid
  Width = 1181
  inherited xxxDBGrid: TxxxDBGrid
    Top = 99
    Width = 1181
    Height = 304
    AdvSettings.Indexes = <
      item
        FieldName = 'T184_LINE_NO'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T184_LINE_NO'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '№ стр.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T184_DATE_START'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата начала действия'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T184_DATE_END'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата окончания действия'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T184_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (ИНН)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T184_SHORT_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (наименование)'
        Width = 550
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T184_REGN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (рег.номер в КГРКО)'
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T184_ACTIVE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (индикатор действующей КО в КРГО)'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T184_ERR_DESC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Ошибки'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 74
    Width = 1181
  end
  inherited paFilters: TPanel
    Width = 1181
    Height = 53
    inherited GroupBox1: TGroupBox
      Height = 46
      object cbErrorType: TCheckBox
        Left = 12
        Top = 17
        Width = 89
        Height = 17
        Caption = 'Тип ошибки'
        TabOrder = 0
      end
      object lcbErrors: TxxxDBLookupCheckCombo
        Left = 104
        Top = 15
        Width = 217
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        DisplaySelectAll = 'Все'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked, lsSizeable]
        LookupField = 'ERR_CODE'
        LookupDisplay = 'ERR_DESC'
        LookupSource = dsErrors
        TabOrder = 1
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 53
    Width = 1181
    inherited Panel1: TPanel
      Left = 1154
    end
  end
  inherited actList: TActionList
    Left = 112
    Top = 295
  end
  inherited dsList: TDataSource
    Left = 281
    Top = 234
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T184_LINE_NO,'
      '       T184_DATE_START,'
      '       T184_DATE_END,'
      '       T184_INN,'
      '       T184_SHORT_NAME,'
      '       T184_REGN,'
      '       T184_ACTIVE,'
      '       T184_DATA_ERR,'
      '       T184_ERR_DESC,'
      '       T184_HAS_ERRORS'
      'from   V_405_INN_KO_FILE'
      'where  1 = 1'
      ':ERR_FILTER')
    Variables.Data = {
      03000000010000000B0000003A4552525F46494C544552010000000200000020
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000C000000543138345F4C494E455F4E4F0100000000000F00
      0000543138345F444154455F53544152540100000000000D000000543138345F
      444154455F454E4401000000000008000000543138345F494E4E010000000000
      0F000000543138345F53484F52545F4E414D4501000000000009000000543138
      345F5245474E0100000000000B000000543138345F4143544956450100000000
      000D000000543138345F4552525F444553430100000000000D00000054313834
      5F444154415F4552520100000000000F000000543138345F4841535F4552524F
      5253010000000000}
    Left = 241
    Top = 232
    object odsListT184_LINE_NO: TFloatField
      FieldName = 'T184_LINE_NO'
    end
    object odsListT184_DATE_START: TDateTimeField
      FieldName = 'T184_DATE_START'
    end
    object odsListT184_DATE_END: TDateTimeField
      FieldName = 'T184_DATE_END'
    end
    object odsListT184_INN: TStringField
      FieldName = 'T184_INN'
      Size = 16
    end
    object odsListT184_SHORT_NAME: TStringField
      FieldName = 'T184_SHORT_NAME'
      Size = 255
    end
    object odsListT184_REGN: TStringField
      FieldName = 'T184_REGN'
      Size = 16
    end
    object odsListT184_ACTIVE: TStringField
      FieldName = 'T184_ACTIVE'
      Size = 1
    end
    object odsListT184_ERR_DESC: TStringField
      FieldName = 'T184_ERR_DESC'
      Size = 4000
    end
    object odsListT184_DATA_ERR: TStringField
      FieldName = 'T184_DATA_ERR'
      Size = 255
    end
    object odsListT184_HAS_ERRORS: TFloatField
      FieldName = 'T184_HAS_ERRORS'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 56
    Top = 226
  end
  inherited oqAdd: TOracleQuery
    Left = 327
    Top = 235
  end
  inherited oqUpdate: TOracleQuery
    Left = 327
    Top = 271
  end
  inherited oqDelete: TOracleQuery
    Left = 327
    Top = 311
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 241
    Top = 293
  end
  object odsErrors: TOracleDataSet
    SQL.Strings = (
      'select ERR_CODE,'
      '       ERR_DESC'
      'from   V_405_INN_KO_FILE_ERRORS'
      'order by ERR_CODE')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004552525F44455343010000000000080000004552
      525F434F4445010000000000}
    Session = dmMain.OracleSession
    Left = 124
    Top = 12
  end
  object dsErrors: TDataSource
    DataSet = odsErrors
    Left = 156
    Top = 12
  end
  object oqSave2Db: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_save_ko_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 488
    Top = 292
  end
end
