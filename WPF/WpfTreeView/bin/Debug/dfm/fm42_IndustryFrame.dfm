inherited fm42_Industry: Tfm42_Industry
  Height = 71
  inherited btnSelect: TSpeedButton
    Caption = 'Отрасль...'
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 28
    Width = 76
    Height = 13
    Caption = 'Межд. отрасль'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'CODE'
    ListField = 'INDUSTRY'
    OnCloseUp = lcbSelectCloseUp
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 24
    Width = 359
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    DataField = 'T112_GROUP_NAME'
    DataSource = dsSelect
    Enabled = False
    TabOrder = 1
  end
  inline fm43_Sectors1: Tfm43_Sectors [4]
    Top = 48
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
  end
  inherited odsSelect: TOracleDataSet [5]
    SQL.Strings = (
      'SELECT CODE,'
      '  INDUSTRY,'
      ' T112_GROUP_NAME'
      'FROM V_405_INDUSTRY_ADV')
    QBEDefinition.QBEFieldDefs = {
      040000000300000004000000434F444501000000000008000000494E44555354
      52590100000000000F000000543131325F47524F55505F4E414D450100000000
      00}
    object odsSelectCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 255
    end
    object odsSelectINDUSTRY: TStringField
      FieldName = 'INDUSTRY'
      Required = True
      Size = 255
    end
    object odsSelectT112_GROUP_NAME: TStringField
      FieldName = 'T112_GROUP_NAME'
      Size = 255
    end
  end
  object oqGetSectorByIndustry: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :sector := PK_Form_405.f_get_sector_by_industry(:code, :issuer' +
        '_name);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000070000003A534543544F5204000000000000000000000005
      0000003A434F44450500000000000000000000000C0000003A4953535545525F
      4E414D45050000000000000000000000}
    Left = 216
    Top = 24
  end
end
