inherited frm81_RemainsSecType: Tfrm81_RemainsSecType
  Left = 264
  Top = 217
  Caption = 'frm81_RemainsSecType'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 12
    Width = 40
    Height = 13
    Caption = '“ип ц.б.'
  end
  object lcbSecType: TDBLookupComboBox
    Left = 104
    Top = 8
    Width = 340
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
    ListSource = dsSecType
    TabOrder = 0
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from     V_405_CALC_REMAINS_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 336
    Top = 8
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 368
    Top = 8
  end
end
