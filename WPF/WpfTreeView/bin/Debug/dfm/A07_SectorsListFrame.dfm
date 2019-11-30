inherited A07_SectorsList: TA07_SectorsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T036_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_NAME'
        PickList.Strings = ()
        Title.Caption = 'Cектор'
        Width = 470
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
      'SELECT   T036_ID,'
      '         T036_CODE,'
      '         T036_NAME'
      'FROM     V_410_SECTORS')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033365F494401000000000009000000543033
      365F434F444501000000000009000000543033365F4E414D45010000000000}
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 5
    end
    object odsListT036_NAME: TStringField
      FieldName = 'T036_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :T036_ID := Pk_410_HandCorrect.f_Sectors_add(:T036_CODE, :T036' +
        '_NAME);'
      'END;')
    Variables.Data = {
      0300000003000000080000003A543033365F4944040000000000000000000000
      0A0000003A543033365F434F44450500000000000000000000000A0000003A54
      3033365F4E414D45050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_410_HandCorrect.p_sectors_edit(:T036_ID, :T036_CODE, :T036_' +
        'NAME);'
      'END;')
    Variables.Data = {
      0300000003000000080000003A543033365F4944040000000000000000000000
      0A0000003A543033365F434F44450500000000000000000000000A0000003A54
      3033365F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_410_HandCorrect.p_sectors_delete(:T036_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543033365F4944040000000000000000000000}
  end
end
