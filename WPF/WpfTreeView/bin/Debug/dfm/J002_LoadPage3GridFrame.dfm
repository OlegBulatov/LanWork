inherited J002_LoadPage3Grid: TJ002_LoadPage3Grid
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
      'select T180_ID,'
      '       PERIOD_NAME,'
      '       REPORTS_TYPE,'
      '       REPORTS_LOADED,'
      '       LOAD_ERRORS,'
      '       LOAD_COMMENT'
      'FROM   V_405_417_LOAD_RESULT'
      'WHERE  T180_ID = :T180_ID')
    Variables.Data = {
      0300000001000000080000003A543138305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000060000000B000000504552494F445F4E414D450100000000000C0000
      005245504F5254535F545950450100000000000E0000005245504F5254535F4C
      4F414445440100000000000B0000004C4F41445F4552524F5253010000000000
      0C0000004C4F41445F434F4D4D454E5401000000000007000000543138305F49
      44010000000000}
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
    object odsListT180_ID: TFloatField
      FieldName = 'T180_ID'
    end
  end
end
