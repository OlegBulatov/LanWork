inherited fm40_RezidType: Tfm40_RezidType
  Height = 80
  ExplicitHeight = 80
  inherited Label1: TLabel
    Width = 75
    Caption = #1058#1080#1087' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
    ExplicitWidth = 75
  end
  inherited gr01: TxxxDBGrid
    Height = 76
    Columns = <
      item
        Expanded = False
        FieldName = 'T033_ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_NAME'
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
      05000000020000000E00000054003000330033005F0049004400010000000000
      1200000054003000330033005F004E0041004D004500010000000000}
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
