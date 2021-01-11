inherited J002_DgTypeFilter: TJ002_DgTypeFilter
  inherited lbCaption: TLabel
    Width = 69
    Caption = 'Вид договора'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 9
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'DG_TYPE'
    LookupDisplay = 'DG_TYPE;DG_TYPE_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select DG_TYPE,'
      '       DG_TYPE_DESC'
      'from   V_405_417_DG_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000700000044475F545950450100000000000C00000044475F
      545950455F44455343010000000000}
    object odsListDG_TYPE: TStringField
      FieldName = 'DG_TYPE'
      Size = 8
    end
    object odsListDG_TYPE_DESC: TStringField
      FieldName = 'DG_TYPE_DESC'
      Size = 21
    end
  end
end
