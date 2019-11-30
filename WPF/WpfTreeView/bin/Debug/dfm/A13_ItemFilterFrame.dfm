inherited A13_ItemFilter: TA13_ItemFilter
  inherited lcb: TxxxDBLookupCheckCombo
    Hint = 'Не выбрано'
    DropDownCount = 16
    DropDownWidth = 640
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T037_ID'
    LookupDisplay = 'T037_CODE;T037_FNAME'
    ParentShowHint = False
    ShowHint = True
    Advanced.ShowSelectionHint = True
  end
  inherited rb: TRadioButton
    Width = 81
    Caption = 'Показатель'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T037_ID,'
      
        '       T037_PART, -- для проверки номера раздела при редактирова' +
        'нии данных отчетов'
      '       T037_CODE,'
      '       T037_FNAME'
      'from   V_410_FORM_ITEMS_FILTER'
      
        'where  Pk_410_Utils.f_is_item_active(T037_ID, :T055_ID_FROM, :T0' +
        '55_ID_TO) = '#39'T'#39)
    Variables.Data = {
      03000000020000000D0000003A543035355F49445F46524F4D04000000000000
      00000000000B0000003A543035355F49445F544F040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033375F494401000000000009000000543033
      375F434F44450100000000000A000000543033375F464E414D45010000000000
      09000000543033375F50415254010000000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
    object odsListT037_CODE: TStringField
      DisplayLabel = 'Код'
      DisplayWidth = 5
      FieldName = 'T037_CODE'
      Size = 8
    end
    object odsListT037_FNAME: TStringField
      DisplayLabel = 'Название'
      FieldName = 'T037_FNAME'
      Size = 320
    end
  end
end
