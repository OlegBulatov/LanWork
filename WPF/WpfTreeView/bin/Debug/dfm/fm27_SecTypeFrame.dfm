inherited fm27_SecType: Tfm27_SecType
  Height = 123
  inherited Label1: TLabel
    Width = 40
    Caption = '“ип ц.б.'
  end
  inherited gr01: TxxxDBGrid
    Height = 119
    Columns = <
      item
        Expanded = False
        FieldName = 'T027_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_COMMENTS'
        PickList.Strings = ()
        Width = 250
        Visible = True
      end>
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE, T027_COMMENTS'
      'from     V_405_SEC_TYPE'
      'order by T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    MasterFields = 'D031_ID'
    object ods01T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods01T027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object ods01T027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
  end
end
