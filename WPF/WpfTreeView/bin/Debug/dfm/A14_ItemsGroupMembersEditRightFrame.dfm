inherited A14_ItemsGroupMembersEditRight: TA14_ItemsGroupMembersEditRight
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T037_POSITION'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 328
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
      'select'
      '  T037_ID,'
      '  T037_POSITION,'
      '  T037_CODE,'
      '  T037_NAME'
      'from V_410_ITEMS_GROUP_RIGHT')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033375F494401000000000009000000543033
      375F434F444501000000000009000000543033375F4E414D450100000000000D
      000000543033375F504F534954494F4E010000000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 12
    end
    object odsListT037_NAME: TStringField
      FieldName = 'T037_NAME'
      Size = 255
    end
    object odsListT037_POSITION: TFloatField
      FieldName = 'T037_POSITION'
    end
  end
end
