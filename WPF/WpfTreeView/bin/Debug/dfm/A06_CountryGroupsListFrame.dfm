inherited A06_CountryGroupsList: TA06_CountryGroupsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T033_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T033_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_GROUP_NAME_RUS'
        PickList.Strings = ()
        Title.Caption = 'Наименование (рус.)'
        Width = 420
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_GROUP_NAME_ENG'
        PickList.Strings = ()
        Title.Caption = 'Наменование (англ.)'
        Width = 420
        Visible = True
      end>
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T033_ID,'
      '  T033_CODE,'
      '  T033_GROUP_NAME_RUS,'
      '  T033_GROUP_NAME_ENG'
      'from V_410_COUNTRY_GROUPS')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033335F494401000000000009000000543033
      335F434F444501000000000013000000543033335F47524F55505F4E414D455F
      52555301000000000013000000543033335F47524F55505F4E414D455F454E47
      010000000000}
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT033_CODE: TStringField
      FieldName = 'T033_CODE'
      Size = 3
    end
    object odsListT033_GROUP_NAME_RUS: TStringField
      FieldName = 'T033_GROUP_NAME_RUS'
      Size = 255
    end
    object odsListT033_GROUP_NAME_ENG: TStringField
      FieldName = 'T033_GROUP_NAME_ENG'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :T033_ID := Pk_410_HandCorrect.f_CountryGroup_Add(:T033_CODE,'
      
        '                                                    :T033_GROUP_' +
        'NAME_RUS,'
      
        '                                                    :T033_GROUP_' +
        'NAME_ENG'
      '                                                   );'
      'end;')
    Variables.Data = {
      0300000004000000080000003A543033335F4944040000000000000000000000
      0A0000003A543033335F434F4445050000000000000000000000140000003A54
      3033335F47524F55505F4E414D455F5255530500000000000000000000001400
      00003A543033335F47524F55505F4E414D455F454E4705000000000000000000
      0000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroup_Edit (:T033_ID,'
      '                                          :T033_CODE,'
      '                                          :T033_GROUP_NAME_RUS,'
      '                                          :T033_GROUP_NAME_ENG'
      '                                         );'
      'end;')
    Variables.Data = {
      0300000004000000080000003A543033335F4944040000000000000000000000
      0A0000003A543033335F434F4445050000000000000000000000140000003A54
      3033335F47524F55505F4E414D455F454E470500000000000000000000001400
      00003A543033335F47524F55505F4E414D455F52555305000000000000000000
      0000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroup_Delete(:T033_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033335F4944040000000000000000000000}
  end
end
