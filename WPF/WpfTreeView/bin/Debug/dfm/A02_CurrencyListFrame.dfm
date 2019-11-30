inherited A02_CurrencyList: TA02_CurrencyList
  Width = 845
  Height = 570
  inherited xxxDBGrid: TxxxDBGrid
    Width = 845
    Height = 545
    AdvSettings.Indexes = <
      item
        FieldName = 'ISO_ID'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ISO_ID'
        PickList.Strings = ()
        Title.Caption = 'Код ISO'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_LAT3'
        PickList.Strings = ()
        Title.Caption = 'Код LAT'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_RUSH'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 845
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT ISO_ID, ISO_LAT3, NAME_RUSH'
      'FROM   V_410_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000600000049534F5F49440100000000000800000049534F5F
      4C415433010000000000090000004E414D455F52555348010000000000}
    object odsListISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListNAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
  end
end
