inherited A17_NrezTypeList: TA17_NrezTypeList
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T037_NREZ_TYPE_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NREZ_TYPE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 800
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbList: TToolBar
      Width = 245
    end
    inherited tlbExcel: TToolBar
      Left = 322
    end
    inherited tlbSeach: TToolBar
      Left = 356
      Width = 71
    end
    inherited tlbFilter: TToolBar
      Left = 427
      Width = 94
    end
    inherited tlbSelect: TToolBar
      Left = 521
      Width = 35
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
      'select T037_ID,'
      '       T037_NREZ_TYPE_CODE,'
      '       T037_NREZ_TYPE_NAME'
      'from   V_406_NREZ_TYPES')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033375F494401000000000013000000543033
      375F4E52455A5F545950455F434F444501000000000013000000543033375F4E
      52455A5F545950455F4E414D45010000000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_NREZ_TYPE_CODE: TStringField
      FieldName = 'T037_NREZ_TYPE_CODE'
      Size = 1
    end
    object odsListT037_NREZ_TYPE_NAME: TStringField
      FieldName = 'T037_NREZ_TYPE_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T037_ID := Pk_406_HandCorrect.f_Nrez_Type_Add(:T037_NREZ_TYPE' +
        '_CODE, :T037_NREZ_TYPE_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033375F4944040000000000000000000000
      140000003A543033375F4E52455A5F545950455F434F44450500000000000000
      00000000140000003A543033375F4E52455A5F545950455F4E414D4505000000
      0000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_406_HandCorrect.p_Nrez_Type_Edit(:T037_ID, :T037_NREZ_TYPE_' +
        'CODE, :T037_NREZ_TYPE_NAME);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033375F4944040000000000000000000000
      140000003A543033375F4E52455A5F545950455F434F44450500000000000000
      00000000140000003A543033375F4E52455A5F545950455F4E414D4505000000
      0000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_406_HandCorrect.p_Nrez_Type_Delete(:T037_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033375F4944040000000000000000000000}
  end
end
