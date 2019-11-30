inherited fm16_CountryGrList: Tfm16_CountryGrList
  Width = 351
  Height = 209
  inherited Label1: TLabel
    Top = 4
    Width = 38
    Caption = 'Страны'
  end
  inherited gr01: TxxxDBGrid
    Top = 48
    Width = 248
    Height = 161
  end
  object rbGroup: TRadioButton [2]
    Left = 24
    Top = 24
    Width = 57
    Height = 17
    Caption = 'Группа'
    TabOrder = 1
    OnClick = rbGroupClick
  end
  object rbCountry: TRadioButton [3]
    Left = 24
    Top = 48
    Width = 65
    Height = 17
    Caption = 'Страна'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = rbCountryClick
  end
  object cbGroup: TDBLookupComboBox [4]
    Left = 103
    Top = 24
    Width = 248
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    Enabled = False
    KeyField = 'GROUP_ID'
    ListField = 'GROUP_NAME'
    ListSource = dsGroup
    TabOrder = 3
  end
  inherited ods01: TOracleDataSet
    Top = 80
  end
  inherited ds01: TDataSource
    Top = 80
  end
  inherited PopupMenu: TPopupMenu
    Top = 117
  end
  object odsGroup: TOracleDataSet
    SQL.Strings = (
      'SELECT GROUP_ID, '
      '       GROUP_NAME'
      'FROM V_NR_COUNTRY_GROUP'
      'ORDER BY GROUP_NAME')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000800000047524F55505F49440100000000000A0000004752
      4F55505F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 232
    Top = 16
    object odsGroupGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
    end
    object odsGroupGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 17
    end
  end
  object dsGroup: TDataSource
    DataSet = odsGroup
    Left = 264
    Top = 16
  end
end
