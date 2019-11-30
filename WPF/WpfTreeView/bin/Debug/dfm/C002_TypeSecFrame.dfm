inherited C002_TypeSec: TC002_TypeSec
  Width = 483
  inherited lbCaption: TLabel
    Width = 97
    Caption = 'Тип ценной бумаги'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 322
    DropDownCount = 16
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsSizeable]
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
  end
  inherited actList: TActionList
    Left = 376
  end
  inherited dsList: TDataSource
    Left = 344
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS,'
      '       T027_SEC_TYPE || '#39' - '#39' || T027_COMMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543032375F49440100000000000D000000543032
      375F5345435F5459504501000000000008000000444553435F464C4401000000
      00000D000000543032375F434F4D4D454E5453010000000000}
    Left = 312
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
    object odsListT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Size = 255
    end
  end
end
