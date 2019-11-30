inherited fm26_711Code: Tfm26_711Code
  inherited Label1: TLabel
    Width = 64
    Caption = 'Коды счетов'
  end
  inherited gr01: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T053_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T053_NAME'
        PickList.Strings = ()
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE_DESC'
        PickList.Strings = ()
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
      040000000500000007000000543035335F494401000000000009000000543035
      335F4E414D4501000000000009000000543035335F5459504501000000000009
      000000545950455F4445534301000000000007000000543035345F4944010000
      000000}
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
