inherited A16_OperationsList: TA16_OperationsList
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T036_OP_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код операции'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_OP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название операции'
        Width = 960
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
      '  T036_ID,'
      '  T036_OP_CODE,'
      '  T036_OP_NAME'
      'FROM V_406_OPERATIONS')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033365F49440100000000000C000000543033
      365F4F505F434F44450100000000000C000000543033365F4F505F4E414D4501
      0000000000}
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_OP_CODE: TFloatField
      FieldName = 'T036_OP_CODE'
    end
    object odsListT036_OP_NAME: TStringField
      FieldName = 'T036_OP_NAME'
      Size = 500
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T036_ID := Pk_406_HandCorrect.f_Operation_Add(:T036_OP_CODE, ' +
        ':T036_OP_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033365F4944040000000000000000000000
      0D0000003A543033365F4F505F434F44450500000000000000000000000D0000
      003A543033365F4F505F4E414D45050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_406_HandCorrect.p_Operation_Edit(:T036_ID, :T036_OP_CODE, :' +
        'T036_OP_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033365F4944040000000000000000000000
      0D0000003A543033365F4F505F434F44450500000000000000000000000D0000
      003A543033365F4F505F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_406_HandCorrect.p_Operation_Delete(:T036_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033365F4944040000000000000000000000}
  end
end
