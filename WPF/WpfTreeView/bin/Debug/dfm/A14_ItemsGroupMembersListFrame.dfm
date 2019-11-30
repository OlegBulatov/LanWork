inherited A14_ItemsGroupMembersList: TA14_ItemsGroupMembersList
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 580
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_POSITION'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited actList: TActionList
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T038_ID,'
      '  T037_ID,'
      '  T037_POSITION,'
      '  T037_PART,'
      '  T037_CODE,'
      '  T037_NAME'
      'from V_410_ITEM_GROUP_LINKS'
      '  WHERE T038_ID = :T038_ID')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543033385F494401000000000007000000543033
      375F494401000000000009000000543033375F50415254010000000000090000
      00543033375F434F444501000000000009000000543033375F4E414D45010000
      0000000D000000543033375F504F534954494F4E010000000000}
    object odsListT038_ID: TFloatField
      FieldName = 'T038_ID'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
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
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_Update(:T038_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
  end
  object oqBeforeEdit: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_Fill(:T038_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
    Left = 420
    Top = 104
  end
end
