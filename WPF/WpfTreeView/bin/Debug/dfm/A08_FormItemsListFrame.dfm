inherited A08_FormItemsList: TA08_FormItemsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T037_POSITION'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T037_PART'
        PickList.Strings = ()
        Title.Caption = 'Раздел'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название показателя'
        Width = 354
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_STATE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_DATE_BGN'
        PickList.Strings = ()
        Title.Caption = 'Дата начала действия'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_DATE_END'
        PickList.Strings = ()
        Title.Caption = 'Дата окончания действия'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_POSITION'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T037_PART,'
      '         T037_ID,'
      '         T037_CODE,'
      '         T037_DATE_BGN,'
      '         T037_POSITION,'
      '         T037_DATE_END,'
      '         T037_TYPE,'
      '         T037_NAME,'
      '         T037_STATE,'
      '         T037_LEVEL'
      'FROM     V_410_FORM_ITEMS')
    QBEDefinition.QBEFieldDefs = {
      040000000A00000009000000543033375F504152540100000000000700000054
      3033375F494401000000000009000000543033375F434F44450100000000000D
      000000543033375F444154455F42474E0100000000000D000000543033375F50
      4F534954494F4E0100000000000D000000543033375F444154455F454E440100
      0000000009000000543033375F5459504501000000000009000000543033375F
      4E414D450100000000000A000000543033375F53544154450100000000000A00
      0000543033375F4C4556454C010000000000}
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 12
    end
    object odsListT037_DATE_BGN: TDateTimeField
      FieldName = 'T037_DATE_BGN'
    end
    object odsListT037_POSITION: TFloatField
      FieldName = 'T037_POSITION'
    end
    object odsListT037_DATE_END: TDateTimeField
      FieldName = 'T037_DATE_END'
    end
    object odsListT037_TYPE: TStringField
      FieldName = 'T037_TYPE'
      Size = 1
    end
    object odsListT037_NAME: TStringField
      FieldName = 'T037_NAME'
      Size = 255
    end
    object odsListT037_STATE: TStringField
      FieldName = 'T037_STATE'
      Size = 1
    end
    object odsListT037_LEVEL: TIntegerField
      FieldName = 'T037_LEVEL'
    end
  end
end
