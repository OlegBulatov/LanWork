inherited fm26_711Code: Tfm26_711Code
  inherited Label1: TLabel
    Width = 66
    Caption = #1050#1086#1076#1099' '#1089#1095#1077#1090#1086#1074
    ExplicitWidth = 66
  end
  inherited gr01: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T053_ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T053_NAME'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE_DESC'
        Width = 155
        Visible = True
      end>
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T053_ID,  T053_NAME,  T053_TYPE, TYPE_DESC, T054_ID'
      'FROM  V_405_711_CODE'
      'ORDER BY T053_TYPE')
    QBEDefinition.QBEFieldDefs = {
      05000000050000000E00000054003000350033005F0049004400010000000000
      1200000054003000350033005F004E0041004D00450001000000000012000000
      54003000350033005F0054005900500045000100000000001200000054005900
      500045005F0044004500530043000100000000000E0000005400300035003400
      5F0049004400010000000000}
    MasterFields = 'D031_ID'
    object ods01T053_ID: TFloatField
      FieldName = 'T053_ID'
      Required = True
    end
    object ods01T053_NAME: TStringField
      FieldName = 'T053_NAME'
      Required = True
      Size = 255
    end
    object ods01TYPE_DESC: TStringField
      FieldName = 'TYPE_DESC'
      Size = 22
    end
    object ods01T053_TYPE: TFloatField
      FieldName = 'T053_TYPE'
      Required = True
    end
  end
end
