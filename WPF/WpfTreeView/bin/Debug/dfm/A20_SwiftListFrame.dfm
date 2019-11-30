inherited A20_SwiftList: TA20_SwiftList
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'KOD'
        PickList.Strings = ()
        Title.Caption = 'Код SWIFT'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_SWIFT'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_LAT3'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_GOS'
        PickList.Strings = ()
        Title.Caption = 'Название страны'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTYPE'
        PickList.Strings = ()
        Title.Caption = 'Код категории'
        Width = 90
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '       KOD,'
      '       NAME_SWIFT,'
      '       ISO_LAT3,'
      '       NAME_GOS,'
      '       SUBTYPE'
      'from   V_406_SWIFT_LIST')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000030000004B4F440100000000000A0000004E414D455F5357
      4946540100000000000800000049534F5F4C415433010000000000080000004E
      414D455F474F530100000000000700000053554254595045010000000000}
    object odsListKOD: TStringField
      FieldName = 'KOD'
      Size = 11
    end
    object odsListNAME_SWIFT: TStringField
      FieldName = 'NAME_SWIFT'
      Size = 250
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListNAME_GOS: TStringField
      FieldName = 'NAME_GOS'
      Size = 250
    end
    object odsListSUBTYPE: TStringField
      FieldName = 'SUBTYPE'
      Size = 4
    end
  end
end
