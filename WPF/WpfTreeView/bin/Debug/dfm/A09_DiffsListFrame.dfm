inherited A09_DiffsList: TA09_DiffsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T037_POSITION'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'DPB_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки ДПБ'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T021_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPB_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма ДПБ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма ГЦИ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GCI_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки ГЦИ'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF'
        PickList.Strings = ()
        Title.Caption = 'Расхождение'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_POSITION'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select  --T055_ID,'
      '        F410_ID,'
      '        --REPORT_DATE,'
      '        --T020_BANK_CODE,'
      '        --T020_ID,'
      '        GCI_ROW_NUM,'
      '        --T037_ID,'
      '        T037_POSITION,'
      '        T037_CODE,'
      '        --T036_ID,'
      '        T036_CODE,'
      '        T021_COUNTRY,'
      '        T021_CURRENCY,'
      '        GCI_SUM,'
      '        DPB_SUM,'
      '        DPB_ROW_NUM,'
      '        DIFF'
      'from V_410_LOAD_DIFFS'
      'where F410_ID = :F410_ID')
    Variables.Data = {
      0300000001000000080000003A463431305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B0000000B0000004743495F524F575F4E554D0100000000000D0000
      00543033375F504F534954494F4E01000000000009000000543033375F434F44
      4501000000000009000000543033365F434F44450100000000000C0000005430
      32315F434F554E5452590100000000000D000000543032315F43555252454E43
      59010000000000070000004743495F53554D010000000000070000004450425F
      53554D0100000000000B0000004450425F524F575F4E554D0100000000000400
      00004449464601000000000007000000463431305F4944010000000000}
    object odsListF410_ID: TIntegerField
      FieldName = 'F410_ID'
    end
    object odsListGCI_ROW_NUM: TStringField
      FieldName = 'GCI_ROW_NUM'
      Size = 81
    end
    object odsListT037_POSITION: TFloatField
      FieldName = 'T037_POSITION'
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 12
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT021_COUNTRY: TFloatField
      FieldName = 'T021_COUNTRY'
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 255
    end
    object odsListGCI_SUM: TFloatField
      FieldName = 'GCI_SUM'
    end
    object odsListDPB_SUM: TFloatField
      FieldName = 'DPB_SUM'
    end
    object odsListDPB_ROW_NUM: TStringField
      FieldName = 'DPB_ROW_NUM'
      Size = 81
    end
    object odsListDIFF: TFloatField
      FieldName = 'DIFF'
    end
  end
end
