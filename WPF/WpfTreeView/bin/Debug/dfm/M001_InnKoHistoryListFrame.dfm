inherited M001_InnKoHistoryGrid: TM001_InnKoHistoryGrid
  Width = 1175
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1175
    AdvSettings.Indexes = <
      item
        FieldName = 'T183_CHANGE_DATE'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T183_CHANGE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата изменения'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_START'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата начала действия'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_END'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата окончания действия'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (ИНН)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_SHORT_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (наименование)'
        Width = 400
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_REGN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (рег.№ в КГРКО)'
        Width = 111
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_ACTIVE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Организация (индикатор действующей КО в КГРКО)'
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_IS_NKO'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Небанковская КО'
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_BIC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'БИК'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_CITY'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Город'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_ADDRESS'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Адрес'
        Width = 250
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1175
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1175
    inherited Panel1: TPanel
      Left = 1148
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T183_ID,'
      '       T183_DATE_START,'
      '       T183_DATE_END,'
      '       T183_INN,'
      '       T183_SHORT_NAME,'
      '       T183_REGN,'
      '       T183_ACTIVE,'
      '       T183_BIC,'
      '       T183_CITY,'
      '       T183_ADDRESS,'
      '       T183_IS_FIL,'
      '       T183_IS_NKO,'
      '       T183_CHANGE_DATE,'
      '       T183_DATA_TYPE'
      'from   V_405_INN_KO_DATA'
      'where  T183_ID = :T183_ID')
    Variables.Data = {
      0300000001000000080000003A543138335F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543138335F49440100000000000F000000543138
      335F444154455F53544152540100000000000D000000543138335F444154455F
      454E4401000000000008000000543138335F494E4E0100000000000F00000054
      3138335F53484F52545F4E414D4501000000000009000000543138335F524547
      4E0100000000000B000000543138335F41435449564501000000000008000000
      543138335F42494301000000000009000000543138335F434954590100000000
      000C000000543138335F414444524553530100000000000B000000543138335F
      49535F46494C0100000000000B000000543138335F49535F4E4B4F0100000000
      0010000000543138335F4348414E47455F444154450100000000000E00000054
      3138335F444154415F54595045010000000000}
    object odsListT183_ID: TFloatField
      FieldName = 'T183_ID'
    end
    object odsListT183_DATE_START: TDateTimeField
      FieldName = 'T183_DATE_START'
    end
    object odsListT183_DATE_END: TDateTimeField
      FieldName = 'T183_DATE_END'
    end
    object odsListT183_INN: TStringField
      FieldName = 'T183_INN'
      Size = 16
    end
    object odsListT183_SHORT_NAME: TStringField
      FieldName = 'T183_SHORT_NAME'
      Size = 255
    end
    object odsListT183_REGN: TStringField
      FieldName = 'T183_REGN'
      Size = 16
    end
    object odsListT183_ACTIVE: TStringField
      FieldName = 'T183_ACTIVE'
      Size = 1
    end
    object odsListT183_BIC: TStringField
      FieldName = 'T183_BIC'
      Size = 255
    end
    object odsListT183_CITY: TStringField
      FieldName = 'T183_CITY'
      Size = 255
    end
    object odsListT183_ADDRESS: TStringField
      FieldName = 'T183_ADDRESS'
      Size = 255
    end
    object odsListT183_IS_FIL: TIntegerField
      FieldName = 'T183_IS_FIL'
    end
    object odsListT183_IS_NKO: TStringField
      FieldName = 'T183_IS_NKO'
      Size = 3
    end
    object odsListT183_CHANGE_DATE: TDateTimeField
      FieldName = 'T183_CHANGE_DATE'
    end
    object odsListT183_DATA_TYPE: TStringField
      FieldName = 'T183_DATA_TYPE'
      Size = 1
    end
  end
end
