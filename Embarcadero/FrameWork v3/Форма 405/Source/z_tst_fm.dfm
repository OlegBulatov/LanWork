inherited fmGrid2: TfmGrid2
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'Z_NUMNBER'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Z_STRING'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Z_DATE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW_PRFX'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from z_vartest')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000090000005A5F4E554D4E424552010000000000080000005A
      5F535452494E47010000000000060000005A5F44415445010000000000070000
      005A5F53554253540100000000000D000000543030315F524F575F5052465801
      0000000000}
    object odsListZ_NUMNBER: TFloatField
      FieldName = 'Z_NUMNBER'
    end
    object odsListZ_STRING: TStringField
      FieldName = 'Z_STRING'
      Size = 256
    end
    object odsListZ_DATE: TDateTimeField
      FieldName = 'Z_DATE'
    end
    object odsListZ_SUBST: TStringField
      FieldName = 'Z_SUBST'
      Size = 256
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 256
    end
  end
end
