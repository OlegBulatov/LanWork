inherited A18_Contract_C_List: TA18_Contract_C_List
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T038_CONTRACT_C_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T038_CONTRACT_C_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 800
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
      'select T038_ID,'
      '       T038_CONTRACT_C_CODE,'
      '       T038_CONTRACT_C_NAME'
      'from   V_406_CONTRACT_C')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033385F494401000000000014000000543033
      385F434F4E54524143545F435F434F444501000000000014000000543033385F
      434F4E54524143545F435F4E414D45010000000000}
    object odsListT038_ID: TFloatField
      FieldName = 'T038_ID'
    end
    object odsListT038_CONTRACT_C_CODE: TStringField
      FieldName = 'T038_CONTRACT_C_CODE'
      Size = 2
    end
    object odsListT038_CONTRACT_C_NAME: TStringField
      FieldName = 'T038_CONTRACT_C_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T038_ID := Pk_406_HandCorrect.f_Contract_C_Add(:T038_CONTRACT' +
        '_C_CODE, :T038_CONTRACT_C_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033385F4944040000000000000000000000
      150000003A543033385F434F4E54524143545F435F434F444505000000000000
      0000000000150000003A543033385F434F4E54524143545F435F4E414D450500
      00000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_406_HandCorrect.p_Contract_C_Edit(:T038_ID, :T038_CONTRACT_' +
        'C_CODE, :T038_CONTRACT_C_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033385F4944040000000000000000000000
      150000003A543033385F434F4E54524143545F435F434F444505000000000000
      0000000000150000003A543033385F434F4E54524143545F435F4E414D450500
      00000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_406_HandCorrect.p_Contract_C_Delete(:T038_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
  end
end
