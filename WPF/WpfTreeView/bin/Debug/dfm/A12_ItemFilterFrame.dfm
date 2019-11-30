inherited A12_ItemFilter: TA12_ItemFilter
  inherited lbCaption: TLabel
    Width = 61
    Caption = 'Показатель'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T037_ID'
    LookupDisplay = 'T037_CODE;T037_FNAME'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T037_ID,'
      '       T037_CODE,'
      '       T037_FNAME'
      'from   V_410_FORM_ITEMS_FILTER'
      'where  Pk_410_Utils.f_is_item_active(T037_ID, :T055_ID) = '#39'T'#39)
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033375F494401000000000009000000543033
      375F434F44450100000000000A000000543033375F464E414D45010000000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_CODE: TStringField
      DisplayLabel = 'Код'
      FieldName = 'T037_CODE'
      Size = 12
    end
    object odsListT037_FNAME: TStringField
      DisplayLabel = 'Название'
      FieldName = 'T037_FNAME'
      Size = 320
    end
  end
end
