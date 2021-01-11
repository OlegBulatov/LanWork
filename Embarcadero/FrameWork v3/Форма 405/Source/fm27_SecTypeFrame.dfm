inherited fm27_SecType: Tfm27_SecType
  Height = 123
  ExplicitHeight = 123
  inherited Label1: TLabel
    Width = 41
    Caption = #1058#1080#1087' '#1094'.'#1073'.'
    ExplicitWidth = 41
  end
  inherited gr01: TxxxDBGrid
    Height = 119
    Columns = <
      item
        Expanded = False
        FieldName = 'T027_ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_COMMENTS'
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
      05000000030000000E00000054003000320037005F0049004400010000000000
      1A00000054003000320037005F005300450043005F0054005900500045000100
      000000001A00000054003000320037005F0043004F004D004D0045004E005400
      5300010000000000}
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
