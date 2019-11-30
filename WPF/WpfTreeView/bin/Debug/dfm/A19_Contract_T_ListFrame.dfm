inherited A19_Contract_T_List: TA19_Contract_T_List
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T039_CONTRACT_T_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T039_CONTRACT_T_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 800
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
      'select T039_ID,'
      '       T039_CONTRACT_T_CODE,'
      '       T039_CONTRACT_T_NAME'
      'from   V_406_CONTRACT_T')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033395F494401000000000014000000543033
      395F434F4E54524143545F545F434F444501000000000014000000543033395F
      434F4E54524143545F545F4E414D45010000000000}
    object odsListT039_ID: TFloatField
      FieldName = 'T039_ID'
    end
    object odsListT039_CONTRACT_T_CODE: TStringField
      FieldName = 'T039_CONTRACT_T_CODE'
      Size = 1
    end
    object odsListT039_CONTRACT_T_NAME: TStringField
      FieldName = 'T039_CONTRACT_T_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T039_ID := Pk_406_HandCorrect.f_Contract_T_Add(:T039_CONTRACT' +
        '_T_CODE, :T039_CONTRACT_T_NAME);'
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
      
        '  Pk_406_HandCorrect.p_Contract_T_Edit(:T039_ID, :T039_CONTRACT_' +
        'T_CODE, :T039_CONTRACT_T_NAME);'
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
      '  Pk_406_HandCorrect.p_Contract_T_Delete(:T039_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
  end
end
