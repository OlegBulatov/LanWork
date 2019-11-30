inherited fm40_RezidType: Tfm40_RezidType
  Height = 80
  inherited Label1: TLabel
    Width = 75
    Caption = 'Тип резидента'
  end
  inherited gr01: TxxxDBGrid
    Height = 76
    Columns = <
      item
        Expanded = False
        FieldName = 'T033_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_NAME'
        PickList.Strings = ()
        Width = 205
        Visible = True
      end>
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T033_ID,'
      '  T033_NAME'
      'FROM V_405_REZID_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F494401000000000009000000543033
      335F4E414D45010000000000}
    object ods01T033_ID: TFloatField
      FieldName = 'T033_ID'
      Required = True
    end
    object ods01T033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
  end
end
