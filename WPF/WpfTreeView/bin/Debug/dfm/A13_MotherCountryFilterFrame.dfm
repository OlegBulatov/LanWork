inherited A13_MotherCountryFilter: TA13_MotherCountryFilter
  Width = 320
  inherited lbCaption: TLabel
    Width = 94
    Hint = 'Страна места нахождения контролирующего (материнского) банка'
    Caption = 'Страна мат. банка'
    ParentShowHint = False
    ShowHint = True
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 120
    Width = 201
    DropDownCount = 9
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T021_COUNTRY'
    LookupDisplay = 'CO_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited actList: TActionList
    Left = 272
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T021_COUNTRY,'
      '       CO_NAME'
      'from   V_410_MOTHER_COUNTRY')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000C000000543032315F434F554E5452590100000000000700
      0000434F5F4E414D45010000000000}
    object odsListT021_COUNTRY: TIntegerField
      FieldName = 'T021_COUNTRY'
    end
    object odsListCO_NAME: TStringField
      FieldName = 'CO_NAME'
      Size = 257
    end
  end
  inherited odsGroup: TOracleDataSet
    SQL.Strings = (
      'select T020_BANK_CODE'
      'from   V_410_MOTHER_BANKS'
      'where  T021_COUNTRY = :T021_COUNTRY'
      'and    T055_ID = :T055_ID')
    Variables.Data = {
      03000000020000000D0000003A543032315F434F554E54525904000000000000
      0000000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543032
      305F42414E4B5F434F4445010000000000}
    MasterFields = 'T021_COUNTRY'
    object odsGroupT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Required = True
      Size = 9
    end
  end
end
