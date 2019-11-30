inherited A14_ItemsGroupsList: TA14_ItemsGroupsList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T038_GROUP_NAME'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T038_GROUP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Ãðóïïà'
        Width = 460
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbList: TToolBar
      Width = 242
    end
    inherited tlbExcel: TToolBar
      Left = 319
    end
    inherited tlbSeach: TToolBar
      Left = 353
      Width = 67
    end
    inherited tlbFilter: TToolBar
      Left = 420
      Width = 81
    end
    inherited tlbSelect: TToolBar
      Left = 501
      Width = 31
    end
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
      '  T038_ID,'
      '  T038_GROUP_NAME'
      'from V_410_ITEM_GROUPS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033385F49440100000000000F000000543033
      385F47524F55505F4E414D45010000000000}
    object odsListT038_ID: TFloatField
      FieldName = 'T038_ID'
    end
    object odsListT038_GROUP_NAME: TStringField
      FieldName = 'T038_GROUP_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T038_ID := Pk_410_HandCorrect.f_ItemGroup_Add(:T038_GROUP_NAM' +
        'E);'
      'end;')
    Variables.Data = {
      0300000002000000080000003A543033385F4944040000000000000000000000
      100000003A543033385F47524F55505F4E414D45050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_410_HandCorrect.p_ItemGroup_Edit(:T038_ID, :T038_GROUP_NAME' +
        ');'
      'end;')
    Variables.Data = {
      0300000002000000080000003A543033385F4944040000000000000000000000
      100000003A543033385F47524F55505F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemGroup_Delete(:T038_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
  end
end
