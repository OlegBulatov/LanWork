inherited A05_BankGroupsList: TA05_BankGroupsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T030_GROUP_NAME'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T030_GROUP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Ãðóïïà'
        Width = 460
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
      '  T030_ID,'
      '  T030_GROUP_NAME'
      'from V_410_BANK_GROUPS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033305F49440100000000000F000000543033
      305F47524F55505F4E414D45010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_GROUP_NAME: TStringField
      FieldName = 'T030_GROUP_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T030_ID := Pk_410_HandCorrect.f_BankGroup_Add(:T030_GROUP_NAM' +
        'E);'
      'end;')
    Variables.Data = {
      0300000002000000100000003A543033305F47524F55505F4E414D4505000000
      0000000000000000080000003A543033305F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_410_HandCorrect.p_BankGroup_Edit(:T030_ID, :T030_GROUP_NAME' +
        ');'
      'end;')
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      100000003A543033305F47524F55505F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroup_Delete(:T030_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
  end
end
