inherited B000_LoadPage3Grid: TB000_LoadPage3Grid
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'PERIOD_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORTS_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип отчета'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORTS_LOADED'
        PickList.Strings = ()
        Title.Caption = 'Загружено'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOAD_ERRORS'
        PickList.Strings = ()
        Title.Caption = 'Ошибок'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOAD_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T220_ID,'
      '       PERIOD_NAME,'
      '       REPORTS_TYPE,'
      '       REPORTS_LOADED,'
      '       LOAD_ERRORS,'
      '       LOAD_COMMENT'
      'FROM   V_405_711_LOAD_RESULT'
      'WHERE  T220_ID = :T220_ID')
    Variables.Data = {
      0300000001000000080000003A543232305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543232305F49440100000000000B000000504552
      494F445F4E414D450100000000000C0000005245504F5254535F545950450100
      000000000E0000005245504F5254535F4C4F414445440100000000000B000000
      4C4F41445F4552524F52530100000000000C0000004C4F41445F434F4D4D454E
      54010000000000}
    object odsListT220_ID: TFloatField
      FieldName = 'T220_ID'
    end
    object odsListPERIOD_NAME: TStringField
      FieldName = 'PERIOD_NAME'
      Size = 255
    end
    object odsListREPORTS_TYPE: TStringField
      FieldName = 'REPORTS_TYPE'
      Size = 23
    end
    object odsListREPORTS_LOADED: TFloatField
      FieldName = 'REPORTS_LOADED'
    end
    object odsListLOAD_ERRORS: TFloatField
      FieldName = 'LOAD_ERRORS'
    end
    object odsListLOAD_COMMENT: TStringField
      FieldName = 'LOAD_COMMENT'
      Size = 91
    end
  end
end
